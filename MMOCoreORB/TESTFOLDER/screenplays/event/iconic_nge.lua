Iconic_NGEScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "Iconic_NGEScreenPlay",
}

registerScreenPlay("Iconic_NGEScreenPlay", true)

function Iconic_NGEScreenPlay:start()
  if (isZoneEnabled("yavin4")) then
    self:spawnMobiles()
  end
end

function Iconic_NGEScreenPlay:spawnMobiles()

  -- Iconic Profession Spawn Area
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 900, 0.1, -43.3, -152.1, 0, 3435642)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 975, 0.1, -47.4, -79.6, 0, 3435643)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 900, -0.1, -47.4, -48.6, 0, 3435636)
  -- Death Watch Entry Guards
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, -21.1, -35.2, -6.4, -90, 3435631)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, -13.1, -43.4, -28.3, 0, 3435634)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, 13.8, -43.4, -28.5, 0, 3435634)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, 22.1, -13.8, -11.0, 89, 3435629)
  -- Sith Hallway Guards
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, -28.0, -43.4, -52.6, -8, 3435644)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, -22.2, -41.4, -92.7, -6, 3435645)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, 23.0, -42.4, -83.6, 8, 3435638)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, 28.5, -43.4, -53.0, 8, 3435637)  
  --Population of Enclave Right Side
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, -42.6, -43.4, -31.6, 90, 3435635)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, -49.6, -42.4, -67.5, 128, 3435650)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, -50.0, -42.4, -80.6, 41, 3435650)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 490, -49.5, -39.4, -106.9, 90, 3435651)
  --Boss Guards
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 900, 10.1, -36.0, -114.8, 90, 3435640)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 900, -9.4, -35.6, -114.5, -89, 3435647)
  --Population of Enclave Left Side
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 90, 42.2, -41.4, -95.0, -90, 3435653)
  spawnMobile("yavin4", "master_prophet_of_the_dark_side", 90, 47.8, -42.4, -74.6, -87, 3435652)

  
end
