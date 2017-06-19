local ObjectManager = require("managers.object.object_manager")print("Object manager loaded for ISD")
ISDScreenPlay = ScreenPlay:new 
{
  numberOfActs = 1,

  screenplayName = "ISDScreenPlay",
}

registerScreenPlay("ISDScreenPlay", true)print("Registered ISD")

function ISDScreenPlay:start()
  if (isZoneEnabled("dungeon1")) then
print("Dungeon 1 Enabled Spawning ISD")
    self:spawnMobiles()
  end
end

function ISDScreenPlay:spawnMobiles()
-- Base FloorStorm Troopers Guarding Door Entrances -- Guards at entrance 100% complete
spawnMobile("dungeon1", "stormtrooper", 1, 40.6567, 173.835, 34.0745, 261, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 40.6779, 173.835, 29.086, 269, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 33.5028, 173.835, 3.61873, 308, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 29.9749, 173.835, 0.0756065, 305, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -29.9486, 173.835, 0.12338, 35, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -33.501, 173.835, 3.61753, 53, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -40.6873, 173.835, 34.0851, 95, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -40.6764, 173.835, 29.0936, 71, 4336902)
--Elevator Control Shaft Guards  10% complete
spawnMobile("dungeon1", "stormtrooper", 1, -48.4635, 173.835, 21.3722, 78, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -47.9885, 173.835, 17.3455, 89, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.691, 173.835, 22.586, 260, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.9413, 173.835, 17.3783, 269, 4336902)


--Upper Floor Room Guards will patrol Elevator Points 50% complete
spawnMobile("dungeon1", "stormtrooper", 1, -47.941, 181.335, 17.5886, 80, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -47.9893, 181.335, 22.5846, 92, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.7055, 181.335, 17.6227, 279, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.6649, 181.335, 22.5756, 246, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 40.7362, 181.335, 24.163, 262, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 40.7167, 181.335, 15.9608, 270, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -40.7103, 181.335, 16.0802, 87, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -40.75, 181.335, 24.1963, 87, 4336902)


--Droid 1 Trigger
	local T1Droid = spawnMobile("dungeon1", "death_watch_s_battle_droid", 1, -44.8084, 172.335, 318.598, 80, 4336867) print("Trigger 1 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify1DroidDead", T1Droid)
end

--Phase 1
function ISDScreenPlay:notify1DroidDead(T1Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "alert_droideka", 0, -44.8084, 172.335, 318.598, 80, 4336867) print("Phase 1 Started")
        return 0
end
