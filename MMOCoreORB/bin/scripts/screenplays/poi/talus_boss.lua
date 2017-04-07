local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for Talus Boss")

talus_boss = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("talus_boss", true) --print("registered Talus Boss")

function talus_boss:start()
	if (isZoneEnabled("talus")) then
		print("Talus Enabled: Spawning Triggers")
		self:spawnMobiles()
	end
end

function talus_boss:spawnMobiles()

--talus  1 Trigger
	local T1Talus = spawnMobile("talus", "wod_mutant_rancor_boss", 1, 5530.8, 99.4566, -4081.67, 265, 0) print("Trigger 1 Loaded sub Boss Spawned")
        	createObserver(OBJECTDESTRUCTION, "talus_bossScreenPlay", "notify1TalusDead", T1Talus)

--Talus 2 Trigger
	local T2Talus = spawnMobile("talus", "wod_mutant_rancor_boss", 1, 5530.8, 99.4566, -4081.67, 265, 0) print("Trigger 2 Loaded Boss")
        	createObserver(OBJECTDESTRUCTION, "talus_bossScreenPlay", "notify2TalusDead", T2Talus)
end

--Phase 1 Of 2 Instance
function talus_bossScreenPlay:notify1TalusDead(T1Talus, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("talus", "wod_mutant_rancor_boss", 1, 5530.8, 99.4566, -4081.67, 265, 0) print("Phase 1 Started")
spatialChat(pBoss, "Trigger 1 test")
        return 0
end

--Phase 2 Of 2 Instance
function talus_bossScreenPlay:notify2TalusDead(T2Talus, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("talus", "wod_mutant_rancor_boss", 1, 5530.8, 99.4566, -4081.67, 265, 0) print("Phase 2 Started")
spatialChat(pBoss, "Trigger 2 test")
        return 0
end
