
#ifndef PVPCOMMAND_H_
#define PVPCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/managers/player/PlayerManager.h"

class PvpCommand : public QueueCommand {
public:

	PvpCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;
			
		PlayerObject* ghost = creature->getPlayerObject();
		
		if (ghost->getFactionStatus() == FactionStatus::COVERT)
			ghost->setFactionStatus(FactionStatus::OVERT);
		if (ghost->getFactionStatus() == FactionStatus::OVERT)
			ghost->setFactionStatus(FactionStatus::COVERT);

		return SUCCESS;
	}

};

#endif
