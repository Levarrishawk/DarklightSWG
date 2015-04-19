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

#ifndef REVIVEPLAYERCOMMAND_H_
#define REVIVEPLAYERCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/pharmaceutical/RevivePack.h"
#include "server/zone/objects/tangible/pharmaceutical/RangedStimPack.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/creature/events/InjuryTreatmentTask.h"
#include "server/zone/objects/creature/buffs/Buff.h"
#include "server/zone/objects/creature/buffs/DelayedBuff.h"
#include "server/zone/packets/object/CombatAction.h"

class RevivePlayerCommand : public QueueCommand {
	float mindCost;
	float range;
public:

	RevivePlayerCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {
		
		mindCost = 200;
		range = 7;
	}

	bool canPerformSkill(CreatureObject* creature, CreatureObject* creatureTarget, RevivePack* revivePack) {
		if (!creatureTarget->isDead()) {
			creature->sendSystemMessage("@healing_response:healing_response_a4"); //Your target does not require resuscitation!
			return 0;
		}

		if (creature->isProne() || creature->isMeditating()) {
			creature->sendSystemMessage("@error_message:wrong_state"); //You cannot complete that action while in your current state.
			return false;
		}

		if (creature->isRidingMount()) {
			creature->sendSystemMessage("@error_message:survey_on_mount"); //You cannot perform that action while mounted on a creature or driving a vehicle.
			return false;
		}
		
		if (!creatureTarget->isHealableBy(creature)) {
			creature->sendSystemMessage("@healing:pvp_no_help");  //It would be unwise to help such a patient.
			return false;
		}		

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group == NULL || !group->hasMember(creatureTarget)) {
			if (creature->isPlayerCreature()) {
				CreatureObject* player = cast<CreatureObject*>(creature);
				CreatureObject* consentOwner = cast<CreatureObject*>( creatureTarget);

				PlayerObject* ghost = consentOwner->getPlayerObject();

				if (!ghost->hasInConsentList(player->getFirstName().toLowerCase())) {
					creature->sendSystemMessage("@healing_response:must_be_grouped"); //You must be grouped with or have consent from your resuscitation target!
					return false;
				}
				/*if (!player->hasConsentFrom(consentOwner)) {
					creature->sendSystemMessage("@healing_response:must_be_grouped"); //You must be grouped with or have consent from your resuscitation target!
					return false;
				}*/
			} else {
				return false;
			}

		}

		if (creature->getHAM(CreatureAttribute::ACTION) < mindCost) {
			creature->sendSystemMessage("You don't have enough action to do that."); //You do not have enough mind to do that.
			return false;
		}

		return true;
	}

	void parseModifier(const String& modifier, uint64& objectId) {
		if (!modifier.isEmpty())
			objectId = Long::valueOf(modifier);
		else
			objectId = 0;
	}
	
	void deactivateInjuryTreatment(CreatureObject* creature) {
	
		int modSkill = (creature->getSkillMod("healing_range_speed") * 0.15);
		
		int delay = 120 - modSkill;
		
		StringIdChatParameter message("healing_response", "revive"); //You are now ready to heal more damage.
		Reference<InjuryTreatmentTask*> task = new InjuryTreatmentTask(creature, message, "injuryTreatmentRevive");
		creature->addPendingTask("injuryTreatmentRevive", task, delay * 1000);
	}

	void awardXp(CreatureObject* creature, const String& type, int power) {
		if (!creature->isPlayerCreature())
			return;

		CreatureObject* player = cast<CreatureObject*>(creature);

		int amount = (int)round((float)power * 0.5f);

		if (amount <= 0)
			return;

		PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();
		playerManager->awardExperience(player, type, amount, true);
	}
/*
	RevivePack* findRevivePack(CreatureObject* creature) {
		SceneObject* inventory = creature->getSlottedObject("inventory");
		int medicineUse = creature->getSkillMod("healing_ability");

		if (inventory != NULL) {
			for (int i = 0; i < inventory->getContainerObjectsSize(); ++i) {
				SceneObject* object = inventory->getContainerObject(i);

				if (!object->isTangibleObject())
					continue;

				TangibleObject* item = cast<TangibleObject*>( object);

				if (item->isPharmaceuticalObject()) {
					PharmaceuticalObject* pharma = cast<PharmaceuticalObject*>( item);

					if (pharma->isRevivePack()) {
						RevivePack* revivePack = cast<RevivePack*>( pharma);

						if (revivePack->getMedicineUseRequired() <= medicineUse)
							return revivePack;
					}
				}
			}
		}

		return NULL;
	}
*/

	void doAnimations(CreatureObject* creature, CreatureObject* creatureTarget) {
		creatureTarget->playEffect("clienteffect/healing_healwound.cef", "");

		if (creature == creatureTarget)
			creature->doAnimation("heal_self");
		else
			creature->doAnimation("heal_other");
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);

		if (object != NULL) {
			if (!object->isCreatureObject()) {
				TangibleObject* tangibleObject = dynamic_cast<TangibleObject*>(object.get());

				if (tangibleObject != NULL && tangibleObject->isAttackableBy(creature)) {
					object = creature;
				} else {
					creature->sendSystemMessage("@healing_response:healing_response_a2"); //You cannot apply resuscitation medication without a valid target!
					return GENERALERROR;
				}
			}
		} else
			object = creature;

		CreatureObject* creatureTarget = cast<CreatureObject*>( object.get());

		Locker clocker(creatureTarget, creature);

		if (!creatureTarget->isPlayerCreature()) {
			creature->sendSystemMessage("@healing_response:healing_response_a3"); // You cannot apply resuscitation medication to a non-player entity!
			return GENERALERROR;
		}

		if (creatureTarget == creature) {
			creature->sendSystemMessage("@error_message:target_self_disallowed"); //You cannot target yourself with this command.
			return GENERALERROR;
		}

		if (!creatureTarget->isInRange(creature, range + creatureTarget->getTemplateRadius() + creature->getTemplateRadius()))
			return TOOFAR;

		uint64 objectId = 0;

		parseModifier(arguments.toString(), objectId);

		ManagedReference<RevivePack*> revivePack = NULL;

		SceneObject* inventory = creature->getSlottedObject("inventory");

		if (inventory != NULL) {
			revivePack = inventory->getContainerObject(objectId).castTo<RevivePack*>();
		}

		if (revivePack == NULL)
			revivePack = findRevivePack(creature);

		if (!canPerformSkill(creature, creatureTarget, revivePack))
			return 0;

		int healthToHeal = MAX(1, (int) round(revivePack->getHealthHealed()));
		int actionToHeal = MAX(1, (int) round(revivePack->getActionHealed()));

		int healedHealth = creatureTarget->healDamage(creature, CreatureAttribute::HEALTH, healthToHeal);
		int healedAction = creatureTarget->healDamage(creature, CreatureAttribute::ACTION, actionToHeal);
		int healedMind = creatureTarget->healDamage(creature, CreatureAttribute::MIND, mindToHeal);

		creatureTarget->setPosture(CreaturePosture::UPRIGHT);

		int healedHealthWounds = creatureTarget->addWounds(CreatureAttribute::HEALTH, - 1);
		int healedActionWounds = creatureTarget->addWounds(CreatureAttribute::ACTION, - 1);
		
		creature->inflictDamage(creature, CreatureAttribute::ACTION, mindCost, false);
		int xpAmount = healedHealth + healedAction + healedHealthWounds + healedActionWounds + 250;
		deactivateInjuryTreatment(creature);
		awardXp(creature, "medical", xpAmount);
		doAnimations(creature, creatureTarget);

		return SUCCESS;
	}

};

#endif //REVIVEPLAYERCOMMAND_H_
