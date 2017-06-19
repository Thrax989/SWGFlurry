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
--Droid 1 Trigger
	local T1Droid = spawnMobile("dungeon1", "death_watch_s_battle_droid", 1, -44.8084, 172.335, 318.598, 80, 4336867) print("Trigger 1 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify1DroidDead", T1Droid)
end

--Phase 1 Of 10 Instance
function ISDScreenPlay:notify1DroidDead(T1Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "alert_droideka", 0, -44.8084, 172.335, 318.598, 80, 4336867) print("Phase 1 Started")
        return 0
end
