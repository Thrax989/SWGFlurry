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


--Teleport Travel 
--spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_gcw_publish_gift.iff", -38.7507, 173.835, 67.1737, 4336902, 1, 0, 0, 0)


--Save 2nd room for loot creates
--
-- Base FloorStorm Troopers Guarding Door Entrances -- Guards at entrance 100% complete
spawnMobile("dungeon1", "isd_stormtrooper", 1, 40.6567, 173.835, 34.0745, 261, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 40.6779, 173.835, 29.086, 269, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 33.5028, 173.835, 3.61873, 308, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 29.9749, 173.835, 0.0756065, 305, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -29.9486, 173.835, 0.12338, 35, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -33.501, 173.835, 3.61753, 53, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -40.6873, 173.835, 34.0851, 95, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -40.6764, 173.835, 29.0936, 71, 4336902)
--Elevator Control Shaft Guards  10% complete
spawnMobile("dungeon1", "isd_stormtrooper", 1, -48.4635, 173.835, 21.3722, 78, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -47.9885, 173.835, 17.3455, 89, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 47.691, 173.835, 22.586, 260, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 47.9413, 173.835, 17.3783, 269, 4336902)


--Upper Floor Room Guards will patrol Elevator Points 50% complete
spawnMobile("dungeon1", "isd_stormtrooper", 1, -47.941, 181.335, 17.5886, 80, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -47.9893, 181.335, 22.5846, 92, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 47.7055, 181.335, 17.6227, 279, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 47.6649, 181.335, 22.5756, 246, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 40.7362, 181.335, 24.163, 262, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 40.7167, 181.335, 15.9608, 270, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -40.7103, 181.335, 16.0802, 87, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -40.75, 181.335, 24.1963, 87, 4336902)



-- Left Hallway Troopers --way 3045 173 -2968 50% complete 
spawnMobile("dungeon1", "isd_stormtrooper", 1, 44.309, 173.835, 29.086, 0, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 44.309, 173.835, 34.086, 179, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 47.191, 173.835, 34.086, 178, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 49.309, 173.835, 34.086, 182, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 50.691, 173.835, 34.086, 178, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 50.691, 173.835, 29.086, 354, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 49.309, 173.835, 29.086, 350, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 47.191, 173.835, 29.086, 359, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 52.809, 173.835, 29.086, 0, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 52.809, 173.835, 34.086, 176, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 57.691, 173.835, 34.086, 177, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 59.809, 173.835, 34.086, 175, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 57.691, 173.835, 29.086, 356, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 1, 59.809, 173.835, 29.086, 355, 4336891)

--Right Hallway Troopers -- 50% complete ---2937 137 -2969
spawnMobile("dungeon1", "isd_mouse_droid", 1, -66.4228, 173.835, 31.2338, 91, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -59.809, 173.835, 29.086, 352, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -57.691, 173.835, 29.086, 358, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -52.809, 173.835, 29.086, 352, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -50.691, 173.835, 29.086, 348, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -49.309, 173.835, 29.086, 351, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -47.191, 173.835, 29.086, 359, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -44.309, 173.835, 29.086, 0, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -44.309, 173.835, 34.086, 170, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -47.191, 173.835, 34.086, 177, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -49.309, 173.835, 34.086, 179, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -50.691, 173.835, 34.086, 175, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -52.809, 173.835, 34.0861, 178, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -57.691, 173.835, 34.086, 179, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 1, -59.809, 173.835, 34.086, 181, 4336901)


spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)

end


spawnMobile("dungeon1", "stormtrooper", 1, -14.0146, 173.835, 22.8548, 330, 4336902)

function ISDScreenPlay:spawnMobiles()



--Droid 1 Trigger 1st DROIDEKA
	local T1Droid = spawnMobile("dungeon1", "droideka", 1, -6.32669, 173.835, 12.5935, 304, 4336902)print("Trigger 1 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify1DroidDead", T1Droid)
--Droid 2 Trigger 2nd DROIDEKA
	local T2Droid = spawnMobile("dungeon1", "droideka", 1, 4.61058, 173.835, 12.7671, 341, 4336902)print("Trigger 2 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify2DroidDead", T2Droid)
--Droid 3 Trigger
	local T3Droid = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 3 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify3DroidDead", T3Droid)
--Droid 4 Trigger
	local T4Droid = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 4 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify4DroidDead", T4Droid)
--Droid 5 Trigger
	local T5Droid = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 5 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify5DroidDead", T5Droid)
--Droid 6 Trigger
	local T6Droid = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 6 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify6DroidDead", T6Droid)
--Droid 7 Trigger
	local T7Droid = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 7 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify7DroidDead", T7Droid)
--Droid 8 Trigger
	local T8Droid = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 8 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify8DroidDead", T8Droid)
--Droid 9 Trigger
	local T9Droid =spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 9 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify9DroidDead", T9Droid)
--Droid 10 Trigger
	local T10Droid = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 10 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify10DroidDead", T10Droid)
end

--Phase 1 Of 10 Instance KRIX BOSS
function ISDScreenPlay:notify1DroidDead(T1Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "krix_swift", 1, -0.0544035, 173.835, 0.702554, 354, 4336902) print("Phase 1 Started")
        return 0
end
--Phase 2 Of 10 Instance
function ISDScreenPlay:notify2DroidDead(T2Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 2 Started")
        return 0
end
--Phase 3 Of 10 Instance
function ISDScreenPlay:notify3DroidDead(T3Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 3 Started")
        return 0
end
--Phase 4 Of 10 Instance
function ISDScreenPlay:notify4DroidDead(T4Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 4 Started")
        return 0
end
--Phase 5 Of 10 Instance
function ISDScreenPlay:notify5DroidDead(T5Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 5 Started")
	spatialChat(pBoss, "Support unit has arrived")
        return 0
end
--Phase 6 Of 10 Instance
function ISDScreenPlay:notify6DroidDead(T6Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 6 Started")
        return 0
end
--Phase 7 Of 10 Instance
function ISDScreenPlay:notify7DroidDead(T7Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 7 Started")
        return 0
end
--Phase 8 Of 10 Instance
function ISDScreenPlay:notify8DroidDead(T8Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 8 Started")
        return 0
end
--Phase 9 Of 10 Instance
function ISDScreenPlay:notify9DroidDead(T9Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 9 Started")
        return 0
end
--Phase 10 Of 10 Instance
function ISDScreenPlay:notify10DroidDead(T10Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 10 Started")
	spatialChat(pBoss, "Support unit has arrived")
        return 0
end
