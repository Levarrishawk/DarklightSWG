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
