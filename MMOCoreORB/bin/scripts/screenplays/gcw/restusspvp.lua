restusspvp = ScreenPlay:new {
  numberOfActs = 1,
  questString = "",
  states = {},
  questdata = Object:new {
    activePlayerName = "initial",
    }
  }
  
  registerScreenPlay("restusspvp", true)
  
  function restusspvp:start()
    self:spawnActiveAreas()
  end
  
  function restusspvp:spawnActiveAreas()
    local pSpawnArea1 = spawnSceneObject("rori", "object/active_area.iff", 5318, 80, 5680, 0, 0, 0, 0, 0)
    
    if (pSpawnArea1 ~= nil) then
        local activeArea1 = LuaActiveArea(pSpawnArea1)
        activeArea1:setCellObjectID(0)
        activeArea1:setRadius(365)
        createObserver(ENTEREDAREA, "restusspvp", "notifySpawnArea1", pSpawnArea1)
    end
  end
  
  function restusspvp:notifySpawnArea1(pActiveArea1, pMovingObject)
    local movingObject = LuaSceneObject(pMovingObject)
    local player =LuaCreatureObject(pMovingObject)
    
    if (movingObject:isCreatureObject()) then
      player:sendSystemMessage("You have entered the Restuss PvP zone!")
      ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
      deleteData(player:getObjectID() .. ":changingFactionStatus")
      playerObject:setFactionStatus(2)
    end
  end
