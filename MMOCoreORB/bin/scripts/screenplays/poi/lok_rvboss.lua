local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for rvboss")

lok_rvboss= ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("lok_rvboss", true) --print("registered rvboss")

function lok_rvboss:start()
	if (isZoneEnabled("lok")) then
		print("Lok Enabled: Spawning rvboss")
		self:spawnMobiles()
	end
end

function lok_rvboss:spawnMobiles()

	-- Imperial Stronghold Location Of Encounter Lok



--Boss 1 Trigger
	local pPadawan = spawnMobile("lok", "revan_quest1", 3600, -1939.94, 12, -2969.95, 138.087, 0)
        	createObserver(OBJECTDESTRUCTION, "lok_rvboss", "notifyPadawanDead", pPadawan)
--Boss 2 Trigger
	local ppPadawan = spawnMobile("lok", "revan_quest1", 3600, -2021.09, 12, -3063.44, 138.087, 0)
        	createObserver(OBJECTDESTRUCTION, "lok_rvboss", "notifypPadawanDead", ppPadawan)
--Boss 3 Trigger
	local pppPadawan = spawnMobile("lok", "revan_quest1", 3600, -1944.12, 12, -3197.34, 138.087, 0)
        	createObserver(OBJECTDESTRUCTION, "lok_rvboss", "notifyppPadawanDead", pppPadawan)
--Boss 4 Trigger
	local ppppPadawan = spawnMobile("lok", "revan_quest1", 3600, -1841.88, 12, -3084.52, 138.087, 0)
        	createObserver(OBJECTDESTRUCTION, "lok_rvboss", "notifypppPadawanDead", ppppPadawan)
--Boss 5 Trigger
	local pppppPadawan = spawnMobile("lok", "revan_clone", 3600, -1852.3, 19.0, -3092.6, 90, 0)
        	createObserver(OBJECTDESTRUCTION, "lok_rvboss", "notifyppppPadawanDead", pppppPadawan)


end
--Phase 1 Of 5 Boss Instance
function lok_rvboss:notifyPadawanDead(pPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("lok", "emperors_hand", 0, -1939.94, 12, -2969.95, 138.087, 0) print("spawned POTDS") 
			spatialChat(pBoss, "Protect The OutPost!")
        return 0
end
--Phase 2 Of 5 Boss Instance
function lok_rvboss:notifypPadawanDead(ppPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("lok", "palpatine_elder", 0, -1852.3, 19.0, -3097.6, 90, 0) print("spawned POTDS")
			spatialChat(pBoss, "Protect The OutPost!")
        return 0
end
--Phase 3 Of 5 Boss Instance
function lok_rvboss:notifyppPadawanDead(pppPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("lok", "darthvader_elder", 0, -1944.12, 12, -3197.34, 138.087, 0) print("spawned POTDS")
			spatialChat(pBoss, "Protect The OutPost!")

        return 0
end
--Phase 4 Of 5 Boss Instance
function lok_rvboss:notifypppPadawanDead(ppppPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("lok", "som_dark_jedi_boss", 0, -1841.88, 12, -3084.52, 138.087, 0) print("spawned POTDS")
			spatialChat(pBoss, "Protect The OutPost!")
        return 0
end
--Phase 5 Of 5 Boss Instance
function lok_rvboss:notifyppppPadawanDead(pppppPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("lok", "revan", 0, -1959, 12, -3075.66, 0, 0) print("spawned POTDS")
			spatialChat(pBoss, "Kill Me If You Can!")
        return 0
end
