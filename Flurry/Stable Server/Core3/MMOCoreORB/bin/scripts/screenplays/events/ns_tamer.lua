  --------------------------------------
--   Creator : TOXIC/Bigtap
--   Date : 5/4/2020
--------------------------------------
ns_tamer = ScreenPlay:new {
  numberOfActs = 1,
  questString = "ns_tamer",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Mandalore
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("ns_tamer", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Nightsister Tamer")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function ns_tamer:start()
if (isZoneEnabled("mandalore")) then
	self:spawnMobiles()
	self:spawnSceneObjects()
  end
end

function ns_tamer:spawnSceneObjects()
spawnSceneObject("mandalore", "object/tangible/camp/camp_tent_s4.iff", -1133, 26, 2597, 0, 1, 0, 0, 0)
end
--------------------------------------------------
--   spawn mobiles for dungeon        ADD MOBS HERE!!!!!!!!!!!!!!!!!
--------------------------------------------------
function ns_tamer:spawnMobiles()
spawnMobile("mandalore", "nightsister_rancor", 1800, -1146, 26, 2603, 0, 0)
spawnMobile("mandalore", "nightsister_rancor", 1800, -1122, 26, 2614, 0, 0)
spawnMobile("mandalore", "nightsister_rancor", 1800, -1122, 26, 2599, 0, 0)
spawnMobile("mandalore", "nightsister_rancor", 1800, -1124, 26, 2578, 0, 0)
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pBoss = spawnMobile("mandalore", "rancor_guard", 10800, -1137, 26, 2607, 0, 0)--3 hour respawn to start the boss
	print("Spawning Nightsister Tamer")
if (pBoss ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "ns_tamer", "notifyTriggerDead", pBoss)
end
    writeData("ns_tamer:spawnState",0)
    return 0
end
-----------------------------------------
--  Notify trigger is dead to spawn Boss
-----------------------------------------
function ns_tamer:notifyTriggerDead(pBoss, pPlayer)
local pBoss = spawnMobile("mandalore", "worldboss_8", -1, -1137, 26, 2607, 0, 0)
    print("Spawning Nightsister Tamer")
	local creature = CreatureObject(pBoss)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("ns_tamer:spawnState", 1)
    writeData("ns_tamer", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"ns_tamer","boss_damage", pBoss)
    createObserver(OBJECTDESTRUCTION, "ns_tamer", "Restart", pBoss)
end)
    return 0
end
-----------------------------------------
--  Notify trigger broadcast respawning
-----------------------------------------
function ns_tamer:Restart(pPlayer, pBoss)
    print("Starting Boss Broadcast Scripts")
	createEvent(1 * 1000, "ns_tamer", "Restartstates", pPlayer, "")--Restart Nightsister Tamer Boss States
	createEvent(1 * 1000, "ns_tamer", "BroadcastRespawn", pPlayer, "")--Broadcast 3 Hour Respawn
	createEvent(300 * 1000, "ns_tamer", "KillBoss", pPlayer, "")--Clean Up Dead Corpse
	createEvent(10795 * 1000, "ns_tamer", "KillSpawnCast", pPlayer, "")--Broadcast Respawn
	createEvent(10798 * 1000, "ns_tamer", "KillSpawnCast1", pPlayer, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "ns_tamer", "KillSpawnCast2", pPlayer, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "ns_tamer", "KillSpawnCast3", pPlayer, "")--Broadcast Respawn 1
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function ns_tamer:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
createEvent(10800 * 1000, "ns_tamer", "Remove", pBoss, "")
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

local x1 = -1137
local y1 = 2607
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 50 --Max distance you can fight the boss is 50 meters, you must be within range to fight the boss. Resets to full health if you fail the check.
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
      spatialChat(pBoss, "Boss Resetting. You are out of combat range")
      CreatureObject(pPlayer):sendSystemMessage("You must be within 50m of the boss to fight, boss is now resetting")
end
--------------------------------------
--  90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("ns_tamer:spawnState") == 1) then
      spatialChat(pBoss, "Boss Current Health = 90%")
      spatialChat(pBoss, "Get them! Attack!")
      writeData("ns_tamer:spawnState",2)
      local onespawn = spawnMobile("mandalore", "baz_nitch_terror", 0, -1134, 26, 2608, 0, 0)
      local onespawn = spawnMobile("mandalore", "baz_nitch_terror", 0, -1134, 26, 2608, 0, 0)
      local onespawn = spawnMobile("mandalore", "baz_nitch_terror", 0, -1143, 26, 2604, 0, 0)
      local onespawn = spawnMobile("mandalore", "baz_nitch_terror", 0, -1143, 26, 2604, 0, 0)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("ns_tamer:spawnState") == 2) then
      spatialChat(pBoss, "Boss Current Health = 80%")
      spatialChat(pBoss, "My precious will finish you!")
      writeData("ns_tamer:spawnState",3)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("ns_tamer:spawnState") == 3) then
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("ns_tamer:spawnState",4)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("ns_tamer:spawnState") == 4) then
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("ns_tamer:spawnState",5)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("ns_tamer:spawnState") == 5) then
      spatialChat(pBoss, "Boss Current Health = 50%")
      spatialChat(pBoss, "Kitty's Attack!")
      writeData("ns_tamer:spawnState",6)
      local fivespawn = spawnMobile("mandalore", "narglatch_bruiser", 0, -1134, 26, 2608, 0, 0)
      local fivespawn = spawnMobile("mandalore", "narglatch_bruiser", 0, -1143, 26, 2604, 0, 0)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("ns_tamer:spawnState") == 6) then
      spatialChat(pBoss, "Boss Current Health = 40%")
      writeData("ns_tamer:spawnState",7)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.3))) and readData("ns_tamer:spawnState") == 7) then
      spatialChat(pBoss, "Why we come here?")
      writeData("ns_tamer:spawnState",8)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("ns_tamer:spawnState") == 8) then
      spatialChat(pBoss, "I hate this planet")
      writeData("ns_tamer:spawnState",9)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("ns_tamer:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Protect me!")
      writeData("ns_tamer:spawnState",10)
      local ninespawn = spawnMobile("mandalore", "graul_brute", 0, -1137, 26, 2607, 0, 0)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("ns_tamer:spawnState") == 10) then
      spatialChat(pBoss, "My babies, Noooooooooo.")
      spatialChat(pBoss, "You have 5 minutes to loot my body before it disappears.")
            writeData("ns_tamer:spawnState",11)
        end
      end
   return 0
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function ns_tamer:BroadcastRespawn(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Nightsister Tamer Respawning In 3 Hours")
    	print("Starting Boss Respawn Broadcast Message")
end
-----------------------
--Broadcast Respawn
-----------------------
function ns_tamer:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Nightsister Tamer Respawning In ...")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function ns_tamer:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function ns_tamer:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function ns_tamer:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
    	print("Nightsister Tamer Is Respawning")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function ns_tamer:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Nightsister Tamer Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
		return 0
	end
end
----------------------------
--Remove Boss After 3 hours
----------------------------
function ns_tamer:Remove(pBoss)

	if SceneObject(pBoss == nil) then
		return
	end

	if SceneObject(pBoss) then
		print("Nightsister Tamer Boss Removed")
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
function ns_tamer:Restartstates(pPlayer)
   writeData("ns_tamer:spawnState", 0)
end
