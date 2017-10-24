lok_mazeScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "lok_mazeScreenPlay",
}

registerScreenPlay("lok_mazeScreenPlay", true)

function lok_mazeScreenPlay:start()
  if (isZoneEnabled("lok")) then
    self:spawnMobiles()
  end
end

function lok_mazeScreenPlay:spawnMobiles()

  -- Gate Guard
  spawnMobile("lok", "black_sun_guard", 490, 3810.8, 63.0, -508.5, -89)
  -- Boss
  spawnMobile("lok", "manda", 1800, 3826.1, 63.0, -542.2, 179)
  --Fill In Mobs
  spawnMobile("lok", "black_sun_initiate", 590, 3820.2, 63.0, -512.2, -90)
  spawnMobile("lok", "black_sun_initiate", 590, 3815.0, 63.0, -522.1, 90)
  spawnMobile("lok", "black_sun_initiate", 590, 3807.6, 63.0, -534.8, -90)
  spawnMobile("lok", "black_sun_initiate", 590, 3818.8, 63.0, -545.6, -90)
  spawnMobile("lok", "black_sun_initiate", 590, 3810.0, 63.0, -546.0, 0)
  spawnMobile("lok", "black_sun_initiate", 590, 3815.8, 63.0, -557.8, 0)
  spawnMobile("lok", "black_sun_initiate", 590, 3828.2, 63.0, -561.9, -90)
  spawnMobile("lok", "black_sun_initiate", 590, 3843.1, 63.0, -554.8, -90)
  spawnMobile("lok", "black_sun_initiate", 590, 3849.1, 63.0, -546.7, 90)
  spawnMobile("lok", "black_sun_initiate", 590, 3839.1, 63.0, -538.5, 90)
  spawnMobile("lok", "black_sun_initiate", 590, 3823.3, 63.0, -546.2, 90)
  spawnMobile("lok", "black_sun_initiate", 590, 3845.2, 63.0, -529.5, -179)
  spawnMobile("lok", "black_sun_initiate", 590, 3853.3, 63.0, -558.1, -90)
  
  -- Rose
  spawnMobile("lok", "tusken_woman", 590, 3829.7, 63.0, -538.9, -138)
  -- SBD's
  spawnMobile("lok", "death_watch_s_battle_droid", 510, 3849.7, 63.0, -565.0, -179) 
  spawnMobile("lok", "death_watch_s_battle_droid", 510, 3798.9, 63.0, -560.8, 90)
  spawnMobile("lok", "death_watch_s_battle_droid", 510, 3804.4, 63.0, -517.6, 0)
  spawnMobile("lok", "death_watch_s_battle_droid", 510, 3848.8, 63.0, -510.3, 0)
  spawnMobile("lok", "death_watch_s_battle_droid", 510, 3840.0, 63.0, -526.9, -90)
  spawnMobile("lok", "death_watch_s_battle_droid", 510, 3796.2, 63.0, -524.2, -179)
  --Static Scene Object's
  spawnSceneObject("lok","object/static/vehicle/player_shuttle.iff", 3814.0, 62.0, -477, -90)
  spawnSceneObject("lok","object/static/vehicle/landing_pad_shuttle.iff", 3807.0, 61.4, -477, -90)  
  
end
