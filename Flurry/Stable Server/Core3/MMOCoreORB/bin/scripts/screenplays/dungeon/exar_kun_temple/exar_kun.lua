--------------------------------------
--   Creator : TOXIC
--   Date : 12/20/2019
--------------------------------------
exar_kun = ScreenPlay:new {
  numberOfActs = 1,
  questString = "exar_kun",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 exar kun temple
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("exar_kun", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Exar Kun")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function exar_kun:start()
if (isZoneEnabled("dungeon2") and isZoneEnabled("mustafar")) then
	self:spawnMobiles()
	self:spawnSceneObjects()
  end
end

function exar_kun:spawnSceneObjects()
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -40.4491, 0.61331, 29.3437, 14200816, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 15.5419, 4.71103, 106.975, 14200878, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -40.4448, 0.61331, 29.3521, 14200890, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -11.4999, 0.246572, -121.8, 14200872, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 5.43268, -8, 30.8895, 14200766, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -209.378, 6.08163e-08, -25.2531, 14201271, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 19.3, 0.1, 0.5, 14201104, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 5.4443, -8, 30.8646, 14200737, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 0.1, 0.0315461, 42.2, 14200863, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 6193, 249.9, -5978, 0, 1, 0, 0, 0)
spawnSceneObject("mustafar", "object/tangible/terminal/terminal_quad_screen.iff", -4.9798, -0.528749, 4.48454, 12116005, 0.48481, 0, 0.87462, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_gcw_publish_gift.iff", 88.3474, 0.799999, -41.7449, 14200887, 1, 0, 0, 0)

end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function exar_kun:spawnMobiles()
spawnMobile("mustafar", "sherkar", 10800, -79.9848, -20.4863, -121.67, 277, 12116005)
spawnMobile("dungeon2", "exar_guard", 1800, -18.336, 0.230914, -90.2677, 353, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, -5.34595, 0.230444, -90.253, 354, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, 8.63837, -0.0594431, -78.3088, 279, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, 12.503, -0.0075657, -56.5522, 239, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, -2.02189, -0.073005, -42.7131, 336, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, -6.48184, -0.073003, -42.1362, 64, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, -16.0898, -0.0730027, -42.5834, 293, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, -20.3572, -0.0730028, -43.8532, 356, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, -35.7563, -0.073005, -64.2672, 78, 14200873)
spawnMobile("dungeon2", "exar_guard", 1800, 36.439, 1.03967e-07, -66.3123, 322, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 41.7927, 8.69412e-08, -62.7877, 243, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 30.0415, 0.0481389, -48.8871, 126, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 43.9904, 0, -46.6325, 291, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 45.5865, 1.47995e-10, -40.3613, 124, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 59.0871, -9.14087e-09, -37.6087, 148, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 50.0483, 2.6886e-08, -23.9976, 199, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 56.222, 0, -8.93476, 101, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 40.8638, -0.282756, -3.30831, 81, 14200874)
spawnMobile("dungeon2", "exar_guard", 1800, 31.8826, -2.0582e-08, 7.79434, 245, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 26.4994, 4.72207e-08, 18.5824, 110, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 22.2911, 1.48364e-08, 18.4854, 235, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 24.9813, 3.73068, 22.5541, 35, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 9.14445, 3.73361, 23.8163, 355, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, -12.7134, 3.72579, 23.0671, 167, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, -12.8111, 2.189e-07, 5.82071, 202, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, -12.5628, -3.79284e-07, -0.265207, 314, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, -11.7271, -1.81483e-08, -16.8616, 90, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, -12.3114, 3.73461, -28.1851, 148, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, -11.1999, 3.73439, -31.4396, 26, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 7.65783, 3.7337, -29.8118, 217, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 19.1414, 3.73361, -30.2423, 186, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 16.3503, 0.00143669, -25.4512, 174, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 18.9166, 0.00043262, -25.791, 158, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 30.2456, 0.00460108, -13.4478, 46, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 29.2896, 0.00112588, -9.60125, 110, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, 31.7231, -2.67253e-08, -4.45347, 298, 14200875)
spawnMobile("dungeon2", "exar_guard", 1800, -17.8128, 0.00329914, -24.9968, 87, 14200876)
spawnMobile("dungeon2", "exar_guard", 1800, -26.3125, -0.366251, -24.0849, 53, 14200876)
spawnMobile("dungeon2", "exar_guard", 1800, -31.8507, 0.0220552, 11.4749, 186, 14200876)
spawnMobile("dungeon2", "exar_guard", 1800, -37.2831, -0.0164593, 12.1371, 192, 14200876)
spawnMobile("dungeon2", "exar_guard", 1800, -17.8948, -7.716e-10, 34.8493, 52, 14200876)
spawnMobile("dungeon2", "exar_guard", 1800, -21.529, -0.234192, 39.1009, 52, 14200876)
spawnMobile("dungeon2", "exar_guard", 1800, 27.9179, -0.0967803, 66.9628, 214, 14200878)
spawnMobile("dungeon2", "exar_guard", 1800, 42.7979, 9.68168e-09, 80.7347, 251, 14200878)
spawnMobile("dungeon2", "exar_guard", 1800, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)
spawnMobile("dungeon2", "exar_guard", 1800, 1.52829, -0.0157904, 69.9522, 137, 14200878)
spawnMobile("dungeon2", "exar_guard", 1800, -8.53399, -4.81847e-08, 80.7342, 98, 14200878)
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pBoss = spawnMobile("dungeon2", "exar_clone", 10800, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)--3 hour respawn to start the boss
	print("Spawning Exar Kun Clone")
if (pBoss ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "exar_kun", "notifyTriggerDead", pBoss)
end
    writeData("exar_kun:spawnState",0)
    return 0
end
-----------------------------------------
--  Notify trigger is dead to spawn Boss
-----------------------------------------
function exar_kun:notifyTriggerDead(pBoss, pPlayer)
local pBoss = spawnMobile("dungeon2", "exar_boss", -1, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)
    print("Spawning Exar Kun")
	local creature = CreatureObject(pBoss)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    CreatureObject(pPlayer):playMusicMessage("sound/exar_kun.snd")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("exar_kun:spawnState", 1)
    writeData("exar_kun", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"exar_kun","boss_damage", pBoss)
    createObserver(OBJECTDESTRUCTION, "exar_kun", "Restart", pBoss)
end)
    return 0
end
-----------------------------------------
--  Notify trigger broadcast respawning
-----------------------------------------
function exar_kun:Restart(pPlayer, pBoss)
    print("Starting Boss Broadcast Scripts")
	createEvent(1 * 1000, "exar_kun", "Restartstates", pPlayer, "")--Restart Exar Kun States
	createEvent(1 * 1000, "exar_kun", "BroadcastRespawn", pPlayer, "")--Broadcast 3 Hour Respawn
	createEvent(300 * 1000, "exar_kun", "KillBoss", pPlayer, "")--Clean Up Dead Corpse
	createEvent(10795 * 1000, "exar_kun", "KillSpawnCast", pPlayer, "")--Broadcast Respawn
	createEvent(10798 * 1000, "exar_kun", "KillSpawnCast1", pPlayer, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "exar_kun", "KillSpawnCast2", pPlayer, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "exar_kun", "KillSpawnCast3", pPlayer, "")--Broadcast Respawn 1
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function exar_kun:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
createEvent(10800 * 1000, "exar_kun", "Remove", pBoss, "")
--------------------------------------
--   Range and health checks for boss
--------------------------------------
if (boss ~= nil) then
local heal = 999999
local bossHealth = boss:getHAM(0)
local bossAction = boss:getHAM(3)
local bossMind = boss:getHAM(6)
local bossMaxHealth = boss:getMaxHAM(0)
local bossMaxAction = boss:getMaxHAM(3)
local bossMaxMind = boss:getMaxHAM(6)

local x1 = 15.1374
local y1 = 85.2292
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 50 --Max distance you can fight the boss is 20 meeters, you must be within range to fight the boss. Resets to full health if you fail the check.
if distance > (maxDistance * maxDistance) then
      forcePeace(pBoss)
      forcePeace(pBoss)
      forcePeace(pBoss)
      forcePeace(pBoss)
      forcePeace(pBoss)
      forcePeace(pBoss)
      CreatureObject(pBoss):healDamage(heal, 0)
      CreatureObject(pBoss):healDamage(heal, 3)
      CreatureObject(pBoss):healDamage(heal, 6)
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/bacta_grenade.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_shocked_01_noshake.cef", "")
      spatialChat(pBoss, "Systems powering down you are out of combat range")
      CreatureObject(pPlayer):sendSystemMessage("You must be within 50m of the boss to fight, boss is now resetting")
end
--------------------------------------
--  90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("exar_kun:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 90%")
      spatialChat(pBoss, "You fools..")
      writeData("exar_kun:spawnState",2)
      local onespawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local onespawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("exar_kun:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("exar_kun:spawnState",3)
      local twospawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local twospawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("exar_kun:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("exar_kun:spawnState",4)
      local threespawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local threespawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("exar_kun:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("exar_kun:spawnState",5)
      local fourspawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local fourspawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("exar_kun:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("exar_kun:spawnState",6)
      local fivespawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local fivespawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("exar_kun:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 40%")
      writeData("exar_kun:spawnState",7)
      local sixspawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local sixspawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.3))) and readData("exar_kun:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("exar_kun:spawnState",8)
      local sevenspawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local sevenspawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("exar_kun:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("exar_kun:spawnState",9)  
      local eightspawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local eightspawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("exar_kun:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(2000, 2500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("exar_kun:spawnState",10)
      local ninespawn = spawnMobile("dungeon2", "exar_guard", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local ninespawn = spawnMobile("dungeon2", "exar_guard", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("exar_kun:spawnState") == 10) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      spatialChat(pBoss, "You have 5 minuets to loot my body befor it disappears.")
            writeData("exar_kun:spawnState",11)
        end
      end
   return 0
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function exar_kun:BroadcastRespawn(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Exar Kun Boss Respawning In 3 Hours")
		player:broadcastToDiscord("Nightsister Temple Boss Respawning In 3 Hours")
    	print("Starting Boss Respawn Broadcast Message")
end
-----------------------
--Broadcast Respawn
-----------------------
function exar_kun:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Exar Kun Boss Respawning In ..")
		player:broadcastToDiscord("Exar Kun Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function exar_kun:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function exar_kun:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function exar_kun:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
    	print("Exar Kun Is Respawning")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function exar_kun:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Exar Kun Boss Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
		return 0
	end
end
----------------------------
--Remove Boss After 3 hours
----------------------------
function exar_kun:Remove(pBoss)
	if SceneObject(pBoss) then
		print("Exar Kun Boss Removed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
		dropObserver(pBoss, OBJECTDESTRUCTION)
		dropObserver(pBoss, DAMAGERECEIVED)
		forcePeace(pBoss)
		forcePeace(pBoss)
		forcePeace(pBoss)
		forcePeace(pBoss)
		forcePeace(pBoss)
		forcePeace(pBoss)
		end
		return 0
end
----------------------------
--Reset Player Boss States
----------------------------
function exar_kun:Restartstates(pPlayer)
   writeData("exar_kun:spawnState", 0)
end
