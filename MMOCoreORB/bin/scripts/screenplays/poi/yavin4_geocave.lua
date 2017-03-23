--*--Created on: 3/23/2017--*--
--*--Author: TOXIC--*--
local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for GEO")

yavin4geocaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("yavin4geocaveScreenPlay", true)--print("registered GEO")

function yavin4geocaveScreenPlay:start()
	if isZoneEnabled("yavin4") then
	print("Yavin4 Enabled: Spawning GEO")
		self:spawnMobiles()
	end
end

function yavin4geocaveScreenPlay:spawnMobiles()

--Door 1 Trigger

	local T1Droid = spawnMobile("yavin4", "alert_droideka", 1800, 2.99904, 8.84073, 19.9977, 8, 1627781)print("Trigger 1 Loaded")
        	createObserver(OBJECTDESTRUCTION, "yavin4geocaveScreenPlay", "notify1DroidDead", T1Droid)

--Door 2 Trigger

	local T2Droid = spawnMobile("yavin4", "alert_droideka", 1800, 9.9116, 8.803, 19.4693, 0, 1627781)print("Trigger 2 Loaded")
        	createObserver(OBJECTDESTRUCTION, "yavin4geocaveScreenPlay", "notify2DroidDead", T2Droid)
end

--Phase 1 Of 2 Door Trigger

function yavin4geocaveScreenPlay:notify1DroidDead(T1Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "alert_droideka_mini", 0, 6.55337, 8.51371, 18.6161, 359, 1627781) print("Phase 1 Started")
	spatialChat(pBoss, "You have entered a restricted area.")
        return 0
end

--Phase 2 Of 2 Door Trigger

function yavin4geocaveScreenPlay:notify2DroidDead(T2Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("yavin4", "alert_droideka_boss", 1, 6.55337, 8.51371, 18.6161, 359, 1627781) print("Phase 2 Started")
	spatialChat(pBoss, "Support has arrived!")
        return 0
end
