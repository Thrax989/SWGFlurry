--------------------------------------
--   Creator : TOXIC
--   Date : 1/27/2020
--------------------------------------
avatar_platform = ScreenPlay:new {
  numberOfActs = 1,
  questString = "avatar_platform",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 avatar_platform
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("avatar_platform", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for avata platform")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function avatar_platform:start()
if (isZoneEnabled("dungeon2")) then
  self:spawnMobiles()
  end
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function avatar_platform:spawnMobiles()
----14201271
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-209,0,-17,90,14201271)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-209,0,-33,90,14201271)

--14201265 room before boss

spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-171,0,-27,90,14201265)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_02",360,-170,0,-21,90,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-164,0,-21,-45,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-163,0,-27,-135,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-171,0,-34,45,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-164,0,-34,-45,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-170,0,-15,135,14201265)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-164,0,-15,-135,14201265)

--14201238 systemscontrol

spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-84,0,35,0,14201238)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,-97,0,35,0,14201238)

--14201274 controlroom

spawnMobile("dungeon2","ep3_blackscale_trooper_m_03",360,-90,0.75,14,0,14201274)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_02",360,-94,0.75,17,90,14201274)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-87,0.75,17,-90,14201274)


--14201224 mainhangar

spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,35,0,8,90,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,35,0,26,90,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,40,0,7,0,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,40,0,36,180,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,59,0,22,90,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,62,0,25,180,14201224)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,62,0,19,0,14201224)

--14201226 checkpoint01

spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,20,0,65,-135,14201226)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,18,0,55,-25,14201226)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",260,13,0,57,90,14201226)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,10,0,65,135,14201226)

--14201229 generalstorage

spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-10,0,11,-45,14201229)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-12,0,11,45,14201229)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-11,0,15,-135,14201229)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,-17,0,20,-45,14201229)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-31,0,19,-90,14201229)

--14201234 secondarystorage

spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-51,0,37,90,14201234)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,-48,0,46,135,14201234)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-41,0,47,-135,14201234)

--14201241 anteroom

spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,57,0,-60,180,14201241)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,45,0,-60,135,14201241)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,48,0,-76,45,14201241)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,62,0,-76,-45,14201241)

--14201252 barracks01

spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-77,0,-176,90,14201252)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-74,0,-179,45,14201252)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-74,0,-171,135,14201252)
spawnMobile("dungeon2","ep3_blackscale_guard_m_04",360,-64,0,-187,180,14201252)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-50,0,-183,-90,14201252)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-61,0,-170,-90,14201252)

--14201266 commandhall06

spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-176,0,18,180,14201266)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-171,0,19,180,14201266)

--14201267 navigationroom

spawnMobile("dungeon2","ep3_blackscale_trooper_m_02",360,-178,-1,42,135,14201267)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_03",360,-173,-1,45,180,14201267)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_01",360,-169,-1,42,-135,14201267)

--14201262 commandhall04

spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-144,0,-47,180,14201262)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-146,0,-46,180,14201262)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-149,0,-35,180,14201262)

--14201239 powercore

spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-93,10,-18,-135,14201239)
spawnMobile("dungeon2","ep3_blackscale_trooper_m_03",360,-88,10,-18,135,14201239)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-81,-14,-83,180,14201239)
spawnMobile("dungeon2","ep3_blackscale_guard_m_02",360,-104,-14,-84,180,14201239)
spawnMobile("dungeon2","ep3_blackscale_scaleguard",360,-90,-14,-82,0,14201239)
spawnMobile("dungeon2","ep3_blackscale_guard_m_01",360,-87,-14,-68,90,14201239)
spawnMobile("dungeon2","ep3_blackscale_guard_m_03",360,-93,-14,-68.,-90,14201239)

--Boss Room
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -204.523, 3.07264e-08, -16.5945, 188, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -195.08, -1.80585e-08, -16.5001, 54, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -194.91, -2.85989e-08, -32.9612, 158, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -206.562, 5.37062e-08, -31.8888, 359, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -205.181, -3.61113e-08, -47.1831, 99, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -214.551, 5.66324e-08, -32.4732, 208, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -216.127, 9.56048e-08, -30.2505, 215, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -218.302, 1.01136e-08, -28.7245, 221, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -218.213, 8.02523e-08, -26.4286, 239, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -218.237, 6.40836e-08, -23.6183, 280, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -218.183, 6.22061e-08, -20.972, 270, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -216.092, 6.27911e-08, -19.5472, 308, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -214.619, 6.13758e-08, -17.4476, 319, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -204.523, 3.07264e-08, -16.5945, 188, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -215.745, -1, -36.0073, 167, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -221.225, -1, -19.4058, 219, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -222.017, -1, -29.2173, 252, 14201271)
spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 1800, -216.899, -1, -14.8131, 272, 14201271)
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pTrigger = spawnMobile("dungeon2", "ep3_blackscale_guard_m_02", 10800, -234, -1, -25.07, 90, 14201271)--3 hour respawn to start the boss
if (pTrigger ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "avatar_platform", "notifyTriggerDead", pTrigger)
end
    writeData("avatar_platform:spawnState",0)
    return 0
end
--------------------------------------
--  Notify trigger is dead to spawn Boss
--------------------------------------
function avatar_platform:notifyTriggerDead(pTrigger, pPlayer)
local pBoss = spawnMobile("dungeon2", "ep3_lord_cyssc", 0, -234, -1, -25.07, 90, 14201271)
    print("Spawning Avatar Boss")
	local creature = CreatureObject(pBoss)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("avatar_platform:spawnState", 1)
    writeData("avatar_platform", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"avatar_platform","boss_damage", pBoss)
    createObserver(OBJECTDESTRUCTION, "avatar_platform", "Restart", pBoss)
end)
    return 0
end
-----------------------------------------
--  Notify trigger broadcast respawning
-----------------------------------------
function avatar_platform:Restart(pPlayer, pBoss)
    print("Starting Boss Broadcast Scripts")
	createEvent(1 * 1000, "avatar_platform", "Restartstates", pPlayer, "")--Restart Avatar  States
	createEvent(1 * 1000, "avatar_platform", "BroadcastRespawn", pPlayer, "")--Broadcast 3 Hour Respawn
	createEvent(300 * 1000, "avatar_platform", "KillBoss", pPlayer, "")--Clean Up Dead Corpse
	createEvent(10795 * 1000, "avatar_platform", "KillSpawnCast", pPlayer, "")--Broadcast Respawn
	createEvent(10798 * 1000, "avatar_platform", "KillSpawnCast1", pPlayer, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "avatar_platform", "KillSpawnCast2", pPlayer, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "avatar_platform", "KillSpawnCast3", pPlayer, "")--Broadcast Respawn 1
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function avatar_platform:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
--------------------------------------
--   Range and health checks for boss
--------------------------------------
if (boss ~= nil) then
local heal = 500000
local bossHealth = boss:getHAM(0)
local bossAction = boss:getHAM(3)
local bossMind = boss:getHAM(6)
local bossMaxHealth = boss:getMaxHAM(0)
local bossMaxAction = boss:getMaxHAM(3)
local bossMaxMind = boss:getMaxHAM(6)

local x1 = -234
local y1 = -25.07
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 50 --Max distance you can fight the boss is 40 meeters, you must be within range to fight the boss. Resets to full health if you fail the check.
if distance > (maxDistance * maxDistance) then
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
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("avatar_platform:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 90%")
      spatialChat(pBoss, "You fools..")
      writeData("avatar_platform:spawnState",2)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("avatar_platform:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("avatar_platform:spawnState",3)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("avatar_platform:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("avatar_platform:spawnState",4)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("avatar_platform:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("avatar_platform:spawnState",5)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("avatar_platform:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("avatar_platform:spawnState",6)
      local fivespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -223.854, -1, -9.97092, 173, 14201271)
      local fivespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -229.786, -1, -12.8313, 169, 14201271)
      local fivespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -234.791, -1, -18.631, 93, 14201271)
      local fivespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -235.897, -1, -25.1299, 82, 14201271)
      local fivespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -234.588, -1, -31.3546, 56, 14201271)
      local fivespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -229.591, -1, -36.829, 6, 14201271)
      local fivespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -223.892, -1, -39.4279, 347, 14201271)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("avatar_platform:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 40%")
      writeData("avatar_platform:spawnState",7)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.3))) and readData("avatar_platform:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("avatar_platform:spawnState",8)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind *0.2))) and readData("avatar_platform:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("avatar_platform:spawnState",9)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind *0.1))) and readData("avatar_platform:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("avatar_platform:spawnState",10)
      local ninespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -223.854, -1, -9.97092, 173, 14201271)
      local ninespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -229.786, -1, -12.8313, 169, 14201271)
      local ninespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -234.791, -1, -18.631, 93, 14201271)
      local ninespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -235.897, -1, -25.1299, 82, 14201271)
      local ninespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -234.588, -1, -31.3546, 56, 14201271)
      local ninespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -229.591, -1, -36.829, 6, 14201271)
      local ninespawn = spawnMobile("dungeon2", "ep3_blackscale_scaleguard", 0, -223.892, -1, -39.4279, 347, 14201271)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("avatar_platform:spawnState") == 10) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
            writeData("avatar_platform:spawnState",11)
        end
      end
   return 0
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function avatar_platform:BroadcastRespawn(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Avatar Boss Respawning In 3 Hours")
    	print("Starting Boss Respawn Broadcast Message")
end
-----------------------
--Broadcast Respawn
-----------------------
function avatar_platform:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Avatar Boss Respawning In ...")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function avatar_platform:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function avatar_platform:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function avatar_platform:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
    	print("Avatar Boss Is Respawning")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function avatar_platform:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Avatar Boss Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
		return 0
	end
end
----------------------------
--Remove Boss After 3 hours
----------------------------
function avatar_platform:Remove(pBoss)
	if SceneObject(pBoss) then
		print("Avatar Boss Removed")
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
function avatar_platform:Restartstates(pPlayer)
   writeData("avatar_platform:spawnState", 0)
end
