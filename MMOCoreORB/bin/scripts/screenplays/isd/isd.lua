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

-- Hallway 3
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 78.7, 173.8, 88.0, 179, 34673072)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 81.8, 173.8, 88.0, 179, 34673072)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 68.2, 173.8, 18.4, 179, 34673072)

  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 89.4, 173.8, 94.5, -90, 34673075)

  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 80.8, 173.8, 104.9, -179, 34673072)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 78.7, 173.8, 104.9, -179, 34673072)
  
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 79.8, 173.8, 114.6, 179, 34673072)

  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 78.5, 173.8, 127.6, 179, 34673072)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 81.5, 173.8, 127.6, 179, 34673072)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 80.2, 173.8, 131.2, 179, 34673072)
  
-- Hallway 4
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 63.4, 173.8, 147.4, 179, 34673070)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 66.5, 173.8, 146.8, 179, 34673070)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 65.1, 173.8, 152.7, 179, 34673070)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 66.3, 173.8, 164.2, 179, 34673070)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, 63.2, 173.8, 164.2, 179, 34673070)

-- Gunnery Control
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 71.5, 173.8, 174.9, -90, 34673070)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 58.2, 173.8, 174.9, 90, 34673070)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 64.8, 173.8, 180.6, -179, 34673070)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 68.6, 173.8, 203.9, -90, 34673070)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 61.3, 173.8, 203.9, 90, 34673070)

  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 51.3, 173.8, 198.7, 90, 34673070)
  
-- Launch Control  
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 29.4, 192.3, 205.3, 90, 34673071)
  spawnMobile("dungeon2", "imperial_pilot", 300, 6.4, 192.8, 197.2, 179, 34673071)
  spawnMobile("dungeon2", "black_sun_boarder", 300, -0.1, 192.8, 196.7, 179, 34673071)
  spawnMobile("dungeon2", "black_sun_boarder", 300, -9.9, 192.3, 204.2, -90, 34673071)

-- Hallway 5
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 84.1, 173.8, 217.6, 157, 34673069)
  
  -- Hangar level Security station
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 87.3, 172.5, 302.2, 0, 34673059)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 83.1, 171.8, 357.8, 179, 34673060)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 87.4, 171.8, 359.0, 179, 34673060)
  
  -- Engineering Level
  spawnMobile("dungeon2", "black_sun_boarder", 300, 17.1, 140.8, 364.8, 90, 34673098)
  spawnMobile("dungeon2", "black_sun_boarder", 300, 22.1, 140.8, 365.0, -90, 34673098)

  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 20.2, 140.6, 379.3, 179, 34673099)
  
  spawnMobile("dungeon2", "black_sun_boarder", 300, 42.3, 140.6, 409.1, 0, 34673101)
  spawnMobile("dungeon2", "black_sun_boarder", 300, 41.4, 140.6, 421.7, 179, 34673101)
  spawnMobile("dungeon2", "black_sun_boarder", 300, 41.8, 140.6, 439.1, 179, 34673101)

  spawnMobile("dungeon2", "blackguard_engineer", 300, 33.9, 141.1, 433.9, 179, 34673102)
  spawnMobile("dungeon2", "blackguard_engineer", 300, 28.5, 141.1, 433.6, 179, 34673102)
  spawnMobile("dungeon2", "blackguard_engineer", 300, 27.9, 140.6, 439.7, 0, 34673102)
  
  spawnMobile("dungeon2", "blackguard_engineer", 300, 18.6, 140.6, 448.8, -90, 34673103)
  spawnMobile("dungeon2", "black_sun_boarder", 300, 15.9, 140.6, 445.0, -179, 34673103)

  spawnMobile("dungeon2", "blackguard_engineer", 300, 43.0, 141.6, 479.1, 95, 34673104)
  spawnMobile("dungeon2", "blackguard_engineer", 300, 43.8, 141.6, 486.5, 60, 34673104)
  spawnMobile("dungeon2", "black_sun_boarder", 300, 36.1, 140.6, 483.5, -179, 34673104)
  spawnMobile("dungeon2", "black_sun_boarder", 300, 17.1, 140.6, 485.8, -179, 34673104)
  spawnMobile("dungeon2", "black_sun_boarder", 300, -8.1, 140.6, 484.3, 90, 34673104)

  spawnMobile("dungeon2", "black_sun_boarder", 300, -7.7, 140.6, 518.4, -179, 34673114)
  spawnMobile("dungeon2", "black_sun_boarder", 300, -2.8, 140.6, 526.5, -1, 34673115)
  spawnMobile("dungeon2", "black_sun_boarder", 300, -12.0, 122.3, 579.0, 158, 34673115)
  spawnMobile("dungeon2", "black_sun_boarder", 300, -4.2, 122.3, 580.0, -158, 34673115)
  spawnMobile("dungeon2", "black_sun_boarder", 300, -8.8, 152.3, 528.0, -90, 34673115)
  spawnMobile("dungeon2", "black_sun_boarder", 300, -8.4, 156.3, 548.6, -179, 34673115)

-- Prat approach
  spawnMobile("dungeon2", "watch_captain_prat", 300, -55.6, 172.1, 332.5, 0, 34673063)
  spawnMobile("dungeon2", "blackguard_interrogator_droid", 300, -54.4, 172.1, 332.5, 0, 34673063)
  spawnMobile("dungeon2", "blackguard_interrogator_droid", 300, -57.4, 172.1, 332.5, 0, 34673063)

  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -55.7, 172.1, 349.8, 16, 34673063)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -53.0, 172.1, 349.3, 16, 34673063)

  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -48.8, 171.6, 361.5, 44, 34673063)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -47.5, 171.6, 360.0, 44, 34673063)
  
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -39.7, 171.1, 367.5, 59, 34673063)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -39.2, 171.1, 365.4, 68, 34673063)

  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -20.6, 172.9, 370.2, 90, 34673063)
  spawnMobile("dungeon2", "blackguard_stormtrooper_commando", 300, -20.6, 172.9, 367.8, 90, 34673063)
  
  -- Kenkirk Approach
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 17.9, 170.6, 391.7, 179, 34673062)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 21.5, 170.6, 391.7, 179, 34673062)

  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 18.6, 170.6, 407.3, 179, 34673062)
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 21.5, 170.6, 407.3, 179, 34673062)

  spawnMobile("dungeon2", "commander_kenkirk", 300, 19.9, 170.6, 420.0, 179, 34673062)

-- Command Deck
  spawnMobile("dungeon2", "blackguard_dark_trooper", 300, 20.1, 453.6, 412.7, 0, 34673106)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 4.5, 453.6, 410.6, 90, 34673106)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 4.5, 453.6, 413.1, 90, 34673106)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 0.0, 453.6, 401.9, 0, 34673106)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 0.2, 453.6, 390.7, 0, 34673106)

  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 5.9, 453.6, 368.4, -90, 34673108)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 1.6, 453.6, 363.9, 0, 34673108)

  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, -3.8, 453.6, 355.4, 179, 34673109)
  
  spawnMobile("dungeon2", "imperial_captain", 300, -21.5, 453.6, 357.5, -90, 34673109)
  spawnMobile("dungeon2", "imperial_noncom", 300, -11.5, 453.6, 360.4, 90, 34673109)
  spawnMobile("dungeon2", "imperial_noncom", 300, -11.8, 453.6, 354.9, 90, 34673109)
  spawnMobile("dungeon2", "imperial_major", 300, 9.3, 453.6, 355.8, 0, 34673110)

  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, -0.1, 453.6, 340.5, 0, 34673110)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, 1.7, 453.6, 342.4, 0, 34673110)
  spawnMobile("dungeon2", "blackguard_stormtrooper", 300, -2.4, 453.6, 342.5, 0, 34673110)

  spawnMobile("dungeon2", "imperial_noncom", 300, -5.4, 451.4, 326.6, -148, 34673110)
  spawnMobile("dungeon2", "imperial_noncom", 300, -3.5, 451.4, 329.5, 0, 34673110)

  spawnMobile("dungeon2", "imperial_noncom", 300, 3.9, 451.4, 328.8, -169, 34673110)
  spawnMobile("dungeon2", "imperial_noncom", 300, 5.8, 451.4, 326.3, 129, 34673110)

  -- spawnMobile("dungeon2", "grand_admiral_sait", 300, -0.1, 453.6, 325.3, 179, 34673110)


  end
