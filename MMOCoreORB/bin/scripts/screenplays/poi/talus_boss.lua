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

--spawnMobile("talus", "rancor_baby", 1, 5556.57, 102, -4076.57, 264, 0) 
--spawnMobile("talus", "rancor_baby", 1, 5557.19, 102, -4083.48, 264, 0) 
--spawnMobile("talus", "rancor_baby", 1, 5569.53, 102, -4080.21, 266, 0) 

--Rancor 1 Trigger
	local T1Rancor = spawnMobile("talus", "rancor_baby", 1, 5556.57, 102, -4076.57, 264, 0) print("Trigger 1 Loaded TALUS")
        	createObserver(OBJECTDESTRUCTION, "TalusBossScreenPlay", "notify1RancorDead", T1Rancor)

--Rancor 2 Trigger
	local T2Rancor = spawnMobile("talus", "rancor_baby", 1, 5557.19, 102, -4083.48, 264, 0) print("Trigger 2 Loaded TALUS")
        	createObserver(OBJECTDESTRUCTION, "TalusBossScreenPlay", "notify2RancorDead", T2Rancor)

--Rancor 3 Trigger
	local T3Rancor = spawnMobile("talus", "rancor_baby", 1, 5569.53, 102, -4080.21, 266, 0) print("Trigger 3 Loaded TALUS")
        	createObserver(OBJECTDESTRUCTION, "TalusBossScreenPlay", "notify3RancorDead", T3Rancor)
end


--Phase 1 Of 3 Instance
function TalusBossScreenPlay:notify1RancorDead(T1Rancor, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("talus", "rancor_sub_boss", 0, 5530.8, 99.4566, -4081.67, 265, 0) print("Phase 1 Started TALUS")
        return 0
end

--Phase 2 Of 3 Instance
function TalusBossScreenPlay:notify2RancorDead(T2Rancor, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("talus", "rancor_sub_boss", 0, 5530.8, 99.4566, -4081.67, 265, 0) print("Phase 2 Started TALUS")
        return 0
end

--Phase 3 Of 3 Instance
function TalusBossScreenPlay:notify3RancorDead(T3Rancor, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("talus", "wod_mutant_rancor_boss", 0, 5530.8, 99.4566, -4081.67, 265, 0) print("Phase 3 Started TALUS")
        return 0
end
