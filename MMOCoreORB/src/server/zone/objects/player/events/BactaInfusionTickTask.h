/*
 * ChannelForceRegenTask.h
 *
 *  Created on: Aug 18, 2011
 *      Author: swgemu
 */

#ifndef BACTAINFUSIONTICKTASK_H_
#define BACTAINFUSIONTICKTASK_H_


#include "server/zone/objects/creature/CreatureObject.h"

class BactaInfusionTickTask : public Task {
	ManagedReference<CreatureObject*> creature;
	ManagedReference<CreatureObject*> creatureTarget;
	int counter;
public:

	BactaInfusionTickTask(CreatureObject* creo, CreatureObject* creoTarget) {
		creature = creo;  // This is the Attacker
		creatureTarget = creoTarget; // This is the target (one that takes damage)
		counter = 0;
	}
	
	void run() {
		Locker lockerC(creature);
		Locker lockerCT(creatureTarget,creature);
		if(creature != NULL && creatureTarget != NULL) {
			int bonus = 0;
			if (creature->hasSkill("science_combatmedic_master"))
				bonus += 1;
			int amountOfTicks = 5 + bonus;
			if (counter < amountOfTicks && !creatureTarget->isIncapacitated() && !creatureTarget->isDead()) {
				int health = (creature->getSkillMod("infusion") * 5);
				creatureTarget->healDamage(creature, CreatureAttribute::HEALTH, health, true);
				creatureTarget->playEffect("clienteffect/bacta_infusion.cef", "");
				counter++;
				this->reschedule(8000); // Reschedule in 8 seconds...
			}
			else {

				creatureTarget->removePendingTask("BactaInfusionTickTask");
			}
		}
	}
};

#endif /* CHANNELFORCEREGENTASK_H_ */
