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
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 35.5, 181.3, 40.6, -90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 35.5, 181.3, 36.4, -90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 35.5, 181.3, 26.5, -90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 35.1, 13.0, 40.6, -50, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 27.7, 181.3, 5.7, -50, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 20.6, 181.3, -1.3, -50, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 10.1, 181.3, -1.9, 0, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 0.0, 181.3, -1.9, 0, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -9.9, 181.3, -1.9, 0, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -20.9, 181.3, -1.2, 45, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -27.9, 181.3, 5.8, 45, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -35.2, 181.3, 13.0, 45, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -35.5, 181.3, 26.5, 90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -35.5, 181.3, 35.6, 90, 34673093)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -35.5, 181.3, 44.5, 90, 34673093)


  
  end
