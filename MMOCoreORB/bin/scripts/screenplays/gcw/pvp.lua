local ObjectManager = require("managers.object.object_manager")

pvp = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "pvp",
  	states = {},
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("pvp", true)
  
function pvp:start()
    	self:spawnActiveAreas()
end
  
function pvp:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("rori", "object/active_area.iff", 5318, 80, 5680, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(365)
	        createObserver(ENTEREDAREA, "pvp", "notifySpawnArea", pSpawnArea)
	    end
end
  
function pvp:notifySpawnArea(pActiveArea, pMovingObject)
	if not SceneObject(pMovingObject):isCreatureObject() then
		return 0
	end

	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent() and not AiAgent(pMovingObject):isPet()) then
			return 0
		end
		ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
		deleteData(player:getObjectID() .. ":changingFactionStatus")
			if (playerObjectPointer ~= nil and player:isImperial() or player:isRebel()) then
				local playerObject = LuaPlayerObject(playerObjectPointer)
				playerObject:setFactionStatus(2)
				player:sendSystemMessage("You have entered the Restuss PvP zone!")
			else
				player:sendSystemMessage("You must be Rebel or Imperial to enter the PvP zone!")
				player:teleport(5298, 78, 6115, 0)
			end
		end)

		return 0
	end)
end



--[[
##REF

		ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
		deleteData(player:getObjectID() .. ":changingFactionStatus")
		playerObject:setFactionStatus(1)
	end)

]]--




--[[
	local movingObject = LuaSceneObject(pMovingObject)
	local player = LuaCreatureObject(pMovingObject)
	local playerObjectPointer = player:getPlayerObject()
	local playerObject = LuaPlayerObject(pMovingObject)
    
	if (movingObject:isCreatureObject()) then
		if (playerObjectPointer ~= nil and player:isImperial() or player:isRebel()) then
			local playerObject = LuaPlayerObject(playerObjectPointer)
			playerObject:setFactionStatus(2)
			player:sendSystemMessage("You have entered the Restuss PvP zone!")
		else
			player:sendSystemMessage("You must be Rebel or Imperial to enter the PvP zone!")
			player:teleport(5298, 78, 6115, 0)
		end
	end
end
]]--
