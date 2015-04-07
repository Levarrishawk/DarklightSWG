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


  
  end
