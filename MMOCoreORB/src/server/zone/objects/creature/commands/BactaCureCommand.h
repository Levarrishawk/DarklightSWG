/*
Copyright (C) 2007 <SWGEmu>

This File is part of Core3.

This program is free software; you can redistribute
it and/or modify it under the terms of the GNU Lesser
General Public License as published by the Free Software
Foundation; either version 2 of the License,
or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU Lesser General Public License for
more details.

You should have received a copy of the GNU Lesser General
Public License along with this program; if not, write to
the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

Linking Engine3 statically or dynamically with other modules
is making a combined work based on Engine3.
Thus, the terms and conditions of the GNU Lesser General Public License
cover the whole combination.

In addition, as a special exception, the copyright holders of Engine3
give you permission to combine Engine3 program with free software
programs or libraries that are released under the GNU LGPL and with
code included in the standard release of Core3 under the GNU LGPL
license (or modified versions of such code, with unchanged license).
You may copy and distribute such a system following the terms of the
GNU LGPL for Engine3 and the licenses of the other code concerned,
provided that you include the source code of that other code when
and as the GNU LGPL requires distribution of source code.

Note that people who make modified versions of Engine3 are not obligated
to grant this special exception for their modified versions;
it is their choice whether to do so. The GNU Lesser General Public License
gives permission to release a modified version without this exception;
this exception also makes it possible to release a modified version
which carries forward this exception.
*/

#ifndef BACTACURECOMMAND_H_
#define BACTACURECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "CombatQueueCommand.h"

class BactaCureCommand : public CombatQueueCommand {
	int mindCost;
	int mindWoundCost;

	int healthHealed;
	int actionHealed;
	int mindHealed;

	float speed;
	float range;
public:

	BactaCureCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
		healthHealed = 0;
		actionHealed = 0;
		mindHealed = 0;

		mindCost = 700;
		mindWoundCost = 0;

		range = 30;
	}
	
	void doAnimations(CreatureObject* creature, CreatureObject* creatureTarget) {
		reatureTarget->playEffect("clienteffect/bacta_cure.cef", "");

		if (creature == creatureTarget)
			creature->playEffect("clienteffect/heal_self.cef", "");
		else
			creature->playEffect("clienteffect/heal_other.cef", "");
	}
	bool checkTarget(CreatureObject* creature, CreatureObject* creatureTarget) {

		if (!creatureTarget->hasState(CreatureState::STUNNED)) {
			return false;
		}		

		if (!creatureTarget->hasState(CreatureState::DIZZY)) {
			return false;
		}

		if (!creatureTarget->hasState(CreatureState::INTIMIDATED)) {
			return false;
		}
		
		if (!creatureTarget->hasState(CreatureState::BLINDED)) {
			return false;
		}

		if (!creatureTarget->isPoisoned()) {
			return false;
		}

		if (!creatureTarget->isDiseased()) {
			return false;
		}

		if (!creatureTarget->isBleeding()) {
			return false;
		}	
		
		return true;
	}
	void deactivateInjuryTreatment(CreatureObject* creature) {
	
		int modSkill = (creature->getSkillMod("healing_range_speed") * 0.1);
		
		int delay = 15 - modSkill;
		
		StringIdChatParameter message("healing_response", "healing_response_58"); //You are now ready to heal more damage.
		Reference<InjuryTreatmentTask*> task = new InjuryTreatmentTask(creature, message, "injuryTreatmentJab");
		creature->addPendingTask("injuryTreatmentJab", task, delay * 1000);
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;
		if (!creature->canTreatInjuries()) {
			creature->sendSystemMessage("@healing_response:healing_must_wait"); //You must wait before you can do that.
			return GENERALERROR;
		}
	
		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);

		if (object != NULL) {
			if (!object->isCreatureObject()) {
				TangibleObject* tangibleObject = dynamic_cast<TangibleObject*>(object.get());

				if (tangibleObject != NULL && tangibleObject->isAttackableBy(creature)) {
					object = creature;
				} else 
					creature->sendSystemMessage("@healing_response:healing_response_99"); //Target must be a player or a creature pet in order to quick heal.
					return GENERALERROR;
			}
		} else
			object = creature;


		CreatureObject* creatureTarget = cast<CreatureObject*>(object.get());

		Locker clocker(creatureTarget, creature);

		if ((creatureTarget->isAiAgent() && !creatureTarget->isPet()) || creatureTarget->isDroidObject() || creatureTarget->isDead() || creatureTarget->isRidingMount() || creatureTarget->isAttackableBy(creature))
			creatureTarget = creature;

		if (!creatureTarget->isInRange(creature, range + creatureTarget->getTemplateRadius() + creature->getTemplateRadius()))
			return TOOFAR;

		if (creature->isProne() || creature->isMeditating()) {
			creature->sendSystemMessage("@error_message:wrong_state"); //You cannot complete that action while in your current state.
			return GENERALERROR;
		}

		if (creature->isRidingMount()) {
			creature->sendSystemMessage("@error_message:survey_on_mount"); //You cannot perform that action while mounted on a creature or driving a vehicle.
			return GENERALERROR;
		}
		
		if (!creatureTarget->isHealableBy(creature)) {
			creature->sendSystemMessage("@healing:pvp_no_help");  //It would be unwise to help such a patient.
			return GENERALERROR;
		}

		if (creature->getHAM(CreatureAttribute::ACTION) < mindCost) {
			creature->sendSystemMessage("You do not have enough action to do that."); //You do not have enough mind to do that.
			return GENERALERROR;
		}
		
		if (!CollisionManager::checkLineOfSight(creature, creatureTarget)) {
			creature->sendSystemMessage("@container_error_message:container18");
			return GENERALERROR;
		}
		
		if (!creatureTarget->hasDamage(CreatureAttribute::HEALTH)) {
			if (creatureTarget == creature)
				creature->sendSystemMessage("@healing_response:healing_response_61"); //You have no damage to heal.
			else if (creatureTarget->isPlayerCreature()) {
				StringIdChatParameter stringId("healing_response", "healing_response_63"); //%NT has no damage to heal.
				stringId.setTT(creatureTarget->getObjectID());
				creature->sendSystemMessage(stringId);
			} else {
				StringBuffer message;
				message << creatureTarget->getDisplayedName() << " has no damage to heal.";
				creature->sendSystemMessage(message.toString());
			}

			return GENERALERROR;
		}
		
		int roll = (System::random(4));
		
		if (roll == 0){
			creatureTarget->removeStateBuff(CreatureState::STUNNED);
		}else if (roll == 1){
			creatureTarget->removeStateBuff(CreatureState::DIZZY);
		}else if (roll == 2){
			creatureTarget->removeStateBuff(CreatureState::BLINDED);
		}else if (roll == 3){
			creatureTarget->removeStateBuff(CreatureState::INTIMIDATED);
		}else{
			creatureTarget->removeStateBuff(CreatureState::STUNNED);
			creatureTarget->removeStateBuff(CreatureState::DIZZY);
			creatureTarget->removeStateBuff(CreatureState::BLINDED);
			creatureTarget->removeStateBuff(CreatureState::INTIMIDATED);
		}
		int healPower = (creature->getSkillMod("combat_healing_ability") * 3);

		if (creature->isPlayerCreature()) {
			PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();
			playerManager->sendBattleFatigueMessage(creature, creatureTarget);
		}

		creature->inflictDamage(creature, CreatureAttribute::ACTION, mindCost, false);
		creature->addShockWounds(5);
		creatureTarget->healDot(CreatureState::DISEASED, 100);
		creatureTarget->healDot(CreatureState::POISONED, 100);
		
 		deactivateInjuryTreatment(creature);
		doAnimations(creature, creatureTarget);

		return SUCCESS;
	}

};

#endif
