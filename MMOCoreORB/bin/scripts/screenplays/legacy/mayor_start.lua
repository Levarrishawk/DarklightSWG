DantooineMiningOutpostScreenPlay = ScreenPlay:new {
  numberOfActs = 1,
  
  screenplayName = "mayor_start"
}

registerScreenPlay("mayor_start", true)

function mayor_start:start()
  if (isZoneEnabled("tatooine")) then
    self:spawnMobiles()
  end
end

function mayor_start:spawnMobiles()

  --In The Cantina
  spawnMobile("tatooine", "mayor_start", 1, -0.1, 2.5, 7.5, 179, 1279960)