  --*--    Created on: 4/6/2017    --*--
  --*--      Author: TOXIC	    --*--
local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for TALUS")

TalusBossScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("TalusBossScreenPlay", true)--print("registered TALUSBOSS")

function TalusBossScreenPlay:start()
	if isZoneEnabled("talus") then
	print("talus Enabled: Spawning TALUS")
		self:spawnMobiles()
	end
end

function TalusBossScreenPlay:spawnMobiles()

spawnMobile("talus", "rancor_baby", 300, 5539.01, 101.191, -4075.84, 135, 0) 
spawnMobile("talus", "rancor_baby", 300, 5548.28, 101.889, -4082.42, 99, 0) 
spawnMobile("talus", "rancor_baby", 300, 5549.41, 101.869, -4087.42, 42, 0) 
spawnMobile("talus", "rancor_baby", 300, 5539.38, 100.762, -4091.85, 52, 0) 
spawnMobile("talus", "rancor_baby", 300, 5512.51, 98.6838, -4089.58, 213, 0) 
spawnMobile("talus", "rancor_baby", 300, 5524.46, 99.8528, -4073, 102, 0) 

--Rancor 1 Trigger
	local T1Rancor = spawnMobile("talus", "rancor_baby", 3600, 5546.65, 101.888, -4080.59, 265, 0) print("Trigger 1 Loaded TALUS")
        	createObserver(OBJECTDESTRUCTION, "TalusBossScreenPlay", "notify1RancorDead", T1Rancor)
--Rancor 2 Trigger
	local T2Rancor = spawnMobile("talus", "rancor_baby", 3600, 5530.8, 99.4566, -4081.67, 265, 0) print("Trigger 2 Loaded TALUS")
        	createObserver(OBJECTDESTRUCTION, "TalusBossScreenPlay", "notify2RancorDead", T2Rancor)
end

--Phase 1 Of 2 Instance
function TalusBossScreenPlay:notify1RancorDead(T1Rancor, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("talus", "rancor_sub_boss", 0, 5530.8, 99.4566, -4081.67, 265, 0) print("Phase 1 Started TALUS")
        return 0
end
--Phase 2 Of 2 Instance
function TalusBossScreenPlay:notify2RancorDead(T2Rancor, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("talus", "wod_mutant_rancor_boss", 0, 5530.8, 99.4566, -4081.67, 265, 0) print("Phase 2 Started TALUS")
        return 0
end
