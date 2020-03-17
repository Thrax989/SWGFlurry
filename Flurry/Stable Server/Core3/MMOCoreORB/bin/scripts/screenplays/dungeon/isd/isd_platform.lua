--------------------------------------
--   Creator : TOXIC
--   Date : 12/20/2019
--------------------------------------
isd_platform = ScreenPlay:new {
  numberOfActs = 1,
  questString = "isd_platform",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 ISD Platform temple
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("isd_platform", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for ISD Platform")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function isd_platform:start()
if (isZoneEnabled("dungeon2")) then
	self:spawnMobiles()
	self:spawnSceneObjects()
  end
end
--------------------------------------------------
--   spawn elevator pads for dungeon
--------------------------------------------------
function isd_platform:spawnSceneObjects()
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 20.058, 170.585, 430.548, 14201210, 0, 0, -1, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 19.8045, 453.359, 430.494, 14201210, 0, 0, -1, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", -54, 173.835, 20.3058, 14201200, -0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", -53.0554, 181.335, 20.3764, 14201200, -0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 54, 173.835, 20.0022, 14201199, 0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 54, 181.335, 20.3601, 14201199, 0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -38.3662, 173.835, 67.0904, 14201198, 1, 0, 0, 0)
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function isd_platform:spawnMobiles()
--Main Spawn Room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 34.452, 173.835, 36.0281, 265, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 34.4445, 173.835, 27.0723, 272, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 30.0845, 173.835, 9.40103, 299, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 23.9617, 173.835, 3.32356, 17, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -0.0402867, 173.835, 0.294756, 73, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -23.5692, 173.835, 2.95916, 90, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -29.9028, 173.835, 9.24134, 110, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -34.4891, 173.835, 27.1564, 121, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -34.4541, 173.835, 36.1355, 136, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 6.8299, 177.335, -57.0574, 325, 14201193)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -6.83028, 177.335, -56.4635, 326, 14201193)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 8.93966, 175.335, -31.7196, 358, 14201191)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 69.1725, 173.835, 25.9111, 349, 14201187)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 64.5691, 173.835, 25.8934, 30, 14201187)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -69.0112, 173.835, 34.0492, 151, 14201197)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -15.2133, 175.335, -24.3627, 90, 14201194)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -9.90025, 175.335, -31.5628, 76, 14201195)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 0.0159999, 175.335, -13.1841, 181, 14201192)

--Mini Boss Room
spawnMobile("dungeon2", "isd_stormtrooper", 300, -0.0410455, 177.335, -58.3967, 355, 14201193)--Save For Mini Boss

--Entrance to creature mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 59.344, 173.835, 70.5219, 121, 14201188)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 59.4756, 173.835, 73.7074, 89, 14201188)


--entrance to boss mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 81.8535, 173.835, 69.755, 358, 14201177)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 78.1821, 173.835, 69.906, 358, 14201177)
--boss in for mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 80.178, 173.835, 63.479, 352, 14201181)


--mutation room 1
spawnMobile("dungeon2", "isd_stormtrooper", 300, 89.7521, 173.835, 94.8365, 265, 14201180)
--mutation room2
spawnMobile("dungeon2", "isd_stormtrooper", 300, 89.4285, 173.835, 114.51, 268, 14201179)
--mutation room 3
spawnMobile("dungeon2", "isd_stormtrooper", 300, 79.897, 173.835, 146.539, 179, 14201178)
--mutation room 4
spawnMobile("dungeon2", "isd_stormtrooper", 300, 57.7598, 173.835, 100.133, 128, 14201184)
--guards for muation room 4
spawnMobile("dungeon2", "isd_stormtrooper", 300, 65.8852, 173.835, 83.8533, 265, 14201185)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 65.7755, 173.835, 81.6075, 268, 14201185)

--exit mutation room 4 guards
spawnMobile("dungeon2", "isd_stormtrooper", 300, 69.5949, 173.835, 116.89, 267, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 54.0397, 173.835, 113.848, 354, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 51.8217, 173.835, 113.764, 354, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 50.3441, 173.835, 115.545, 88, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 50.5408, 173.835, 117.646, 80, 14201183)


--middle entance hallway gaurds
spawnMobile("dungeon2", "isd_stormtrooper", 300, 62.7065, 173.835, 168.518, 162, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 67.3617, 173.835, 168.516, 186, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 64.8666, 173.835, 133.389, 359, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 52.9773, 173.835, 138.086, 157, 14201182)


-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pBoss = spawnMobile("dungeon2", "isd_mouse_droid", 10800, 0.0534111, 173.835, 9.2723, 357, 14201198)--3 hour respawn to start the boss
	print("Spawning ISD Platform Clone")
if (pBoss ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "isd_platform", "notifyTriggerDead", pBoss)
end
    writeData("isd_platform:spawnState",0)
    return 0
end
-----------------------------------------
--  Notify trigger is dead to spawn Boss
-----------------------------------------
function isd_platform:notifyTriggerDead(pBoss, pPlayer)
local pBoss = spawnMobile("dungeon2", "isd_thrawn", -1, 0.0534111, 173.835, 9.2723, 357, 14201198)
    print("Spawning ISD Platform")
	local creature = CreatureObject(pBoss)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    CreatureObject(pPlayer):playMusicMessage("sound/isd_platform.snd")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("isd_platform:spawnState", 1)
    writeData("isd_platform", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"isd_platform","boss_damage", pBoss)
    createObserver(OBJECTDESTRUCTION, "isd_platform", "Restart", pBoss)
end)
    return 0
end
-----------------------------------------
--  Notify trigger broadcast respawning
-----------------------------------------
function isd_platform:Restart(pPlayer, pBoss)
    print("Starting Boss Broadcast Scripts")
	createEvent(1 * 1000, "isd_platform", "Restartstates", pPlayer, "")--Restart ISD Platform States
	createEvent(1 * 1000, "isd_platform", "BroadcastRespawn", pPlayer, "")--Broadcast 3 Hour Respawn
	createEvent(300 * 1000, "isd_platform", "KillBoss", pPlayer, "")--Clean Up Dead Corpse
	createEvent(10795 * 1000, "isd_platform", "KillSpawnCast", pPlayer, "")--Broadcast Respawn
	createEvent(10798 * 1000, "isd_platform", "KillSpawnCast1", pPlayer, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "isd_platform", "KillSpawnCast2", pPlayer, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "isd_platform", "KillSpawnCast3", pPlayer, "")--Broadcast Respawn 1
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function isd_platform:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
createEvent(10800 * 1000, "isd_platform", "Remove", pBoss, "")
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

local x1 = 0.0534111
local y1 = 9.2723
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 100 --Max distance you can fight the boss is 100 meeters, you must be within range to fight the boss. Resets to full health if you fail the check.
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
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("isd_platform:spawnState") == 1) then
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
      writeData("isd_platform:spawnState",2)
      local onespawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      local onespawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      local onespawn = spawnMobile("dungeon2", "krix_swift", 0, -0.0402867, 173.835, 0.294756, 329, 14201198)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("isd_platform:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("isd_platform:spawnState",3)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -9.91647, 173.835, 9.28364, 353, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("isd_platform:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("isd_platform:spawnState",4)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -9.91647, 173.835, 9.28364, 353, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("isd_platform:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("isd_platform:spawnState",5)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -9.91647, 173.835, 9.28364, 353, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("isd_platform:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("isd_platform:spawnState",6)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -9.91647, 173.835, 9.28364, 353, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("isd_platform:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 40%")
      writeData("isd_platform:spawnState",7)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -9.91647, 173.835, 9.28364, 353, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.3))) and readData("isd_platform:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("isd_platform:spawnState",8)
      local sevenspawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 6.70729, -0.027031, 97.9255, 169, 14200878)
      local sevenspawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 21.089, -0.0977471, 61.4571, 359, 14200878)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("isd_platform:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("isd_platform:spawnState",9)  
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -9.91647, 173.835, 9.28364, 353, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 9.87268, 173.835, 36.1161, 200, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -10.0813, 173.835, 36.2106, 179, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_atst", 0, 39.4956, 173.835, 31.5939, 266, 14201198)--Special mini at-st
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("isd_platform:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("isd_platform:spawnState",10)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -9.91647, 173.835, 9.28364, 353, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 10.0493, 173.835, 9.19901, 356, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, 9.87268, 173.835, 36.1161, 200, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -10.0813, 173.835, 36.2106, 179, 14201198)
      local twospawn = spawnMobile("dungeon2", "isd_stormtrooper", 0, -0.00929816, 173.835, 36.3592, 179, 14201198)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("isd_platform:spawnState") == 10) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      spatialChat(pBoss, "You have 5 minuets to loot my body befor it disappears.")
            writeData("isd_platform:spawnState",11)
        end
      end
   return 0
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function isd_platform:BroadcastRespawn(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 ISD Platform Boss Respawning In 3 Hours")
    	print("Starting Boss Respawn Broadcast Message")
end
-----------------------
--Broadcast Respawn
-----------------------
function isd_platform:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 ISD Platform Boss Respawning In ...")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function isd_platform:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function isd_platform:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function isd_platform:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
    	print("ISD Platform Is Respawning")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function isd_platform:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted ISD Platform Boss Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
		return 0
	end
end
----------------------------
--Remove Boss After 3 hours
----------------------------
function isd_platform:Remove(pBoss)
	if SceneObject(pBoss) then
		print("ISD Platform Boss Removed")
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
function isd_platform:Restartstates(pPlayer)
   writeData("isd_platform:spawnState", 0)
end
