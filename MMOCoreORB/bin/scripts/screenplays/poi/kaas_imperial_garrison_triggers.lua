local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for Kaas Triggers")

kaas_imperial_garison_triggers = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kaas_imperial_garison_triggers", true) --print("registered Kaas Triggers")

function kaas_imperial_garison_triggers:start()
	if (isZoneEnabled("kaas")) then
		print("Kaas Enabled: Spawning Triggers")
		self:spawnMobiles()
	end
end

function kaas_imperial_garison_triggers:spawnMobiles()

--Kaas 1 Trigger
	local T1Kaas = spawnMobile("kaas", "NPC", 1, -5628.4, 75.9027, -5666.37, 170, 0)print("Trigger 1 Loaded")
        	createObserver(OBJECTDESTRUCTION, "kaas_imperial_garrison_triggersScreenPlay", "notify1KaasDead", T1Kaas)

--Kaas 2 Trigger
	local T2Kaas = spawnMobile("kaas", "NPC", 1, -5622.79, 75.9766, -5666.37, 168, 0)print("Trigger 2 Loaded")
        	createObserver(OBJECTDESTRUCTION, "kaas_imperial_garrison_triggersScreenPlay", "notify2KaasDead", T2Kaas)
end

--Phase 1 Of 2 Instance
function kaas_imperial_garrison_triggersScreenPlay:notify1KaasDead(T1Kaas, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("kaas", "NPC", 0, -5622.48, 75.9636, -5673.65, 97, 0) print("Phase 1 Started")
        return 0
end

--Phase 2 Of 2 Instance
function kaas_imperial_garrison_triggersScreenPlay:notify2KaasDead(T2Kaas, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("kaas", "NPC", 0, -5611.96, 75.99, -5645.66, 283, 0) print("Phase 2 Started")
        return 0
end