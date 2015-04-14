local ObjectManager = require("managers.object.object_manager")

kaas_pvp = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "kaas_pvp",
  	states = {onleave = 1, overt = 2},
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("kaas_pvp", true)
  
function kaas_pvp:start()
    	self:spawnActiveAreas()
end
  
function kaas_pvp:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("kaas", "object/active_area.iff", 0, 80, 0, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(7000)
	        createObserver(ENTEREDAREA, "kaas_pvp", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "kaas_pvp", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
--checks if player enters the zone, and what to do with them.
function kaas_pvp:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			createEvent(1, "kaas_pvp", "handlePvpZone", pMovingObject)
			player:sendSystemMessage("You have arrived on Dromund Kaas.")
		else
			player:sendSystemMessage("You must be part of a Faction to travel to Dromund Kaas!")
			player:teleport(corellia, -137, 28, -4722, 95)
		end
		return 0
	end)
end

--Handles the setting of factional status
function kaas_pvp:handlePvpZone(pPlayer)
	ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
		deleteData(player:getObjectID() .. ":changingFactionStatus")
		if (playerObject:isCovert() or playerObject:isOnLeave()) then
			playerObject:setFactionStatus(2)
		end
	end)

end

--Simply sends a system message
function kaas_pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			player:sendSystemMessage("You have left Dromund Kaas")
		end
		return 0
	end)
end
