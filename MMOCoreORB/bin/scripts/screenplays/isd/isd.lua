ISDScreenPlay = ScreenPlay:new 
{
  numberOfActs = 1,

  screenplayName = "ISDScreenPlay",
}

registerScreenPlay("ISDScreenPlay", true)

function ISDScreenPlay:start()
  if (isZoneEnabled("dungeon2")) then
    self:spawnMobiles()
  end
end

function ISDScreenPlay:spawnMobiles()

  

  --Main Room First Fight
  spawnMobile("dungeon2", "krix_swift", 300, -0.2, 173.8, 27.0, 0, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 30.1, 173.8, 40.6, -90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 30.1, 173.8, 36.4, -90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 30.1, 173.8, 26.5, -90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 21.5, 173.8, 11.3, -50, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 14.4, 173.8, 6.5, -50, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 10.0, 173.8, 6.5, 0, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 0.0, 173.8, 6.5, 0, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -9.9, 173.8, 6.5, 0, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -20.0, 173.8, 6.5, 45, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -23.8, 173.8, 10.4, 45, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -30.4, 173.8, 16.9, 45, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -30.7, 173.8, 26.5, 90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -30.7, 173.8, 35.6, 90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -30.7, 173.8, 44.5, 90, 34673093)
  
  --Hallway 1
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 69.2, 173.8, 31.5, -90, 34673082)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 69.2, 173.8, 30.1, -90, 34673082)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 69.1, 173.8, 33.0, -90, 34673082)
  
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 65.9, 173.8, 18.2, 0, 34673082)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 68.2, 173.8, 18.4, 0, 34673082)
  
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 67.1, 173.8, 46.9, -179, 34673082)

-- Hallway 2
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 66.8, 173.8, 72.8, -179, 34673083)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 61.3, 173.8, 71.8, 90, 34673083)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 72.5, 173.8, 72.2, -90, 34673083)
  
-- Main Level Engineering Crawlspace
  spawnMobile("dungeon2", "blackguard_engineer", 300, 59.4, 173.8, 93.7, -135, 34673079)
  spawnMobile("dungeon2", "blackguard_engineer", 300, 71.1, 173.8, 104.4, 30, 34673079)
  spawnMobile("dungeon2", "blackguard_engineer", 300, 52.0, 173.8, 138.3, -81, 34673077)



  
  end
