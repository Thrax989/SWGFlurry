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
if (isZoneEnabled("dungeon2")) then
  self:spawnMobiles()
  end
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function exar_kun:spawnMobiles()      
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pBoss = spawnMobile("dungeon2", "exar_kun_cultist", 10800, 15.4963, 4.651, 106.287, 178, 14200878)--3 hour respawn to start the boss
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
local pBoss = spawnMobile("dungeon2", "exar_kun_cultist", -1, 15.4963, 4.651, 106.287, 178, 14200878)
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
	createEvent(60 * 1000, "exar_kun", "KillBoss", pPlayer, "")--Clean Up Dead Corpse
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

local x1 = 15.4963
local y1 = 106.287
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
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 90%")
      spatialChat(pBoss, "You fools..")
      writeData("exar_kun:spawnState",2)
      local onespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local onespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local onespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local onespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("exar_kun:spawnState") == 2) then
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("exar_kun:spawnState",3)
      local twospawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local twospawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local twospawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local twospawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("exar_kun:spawnState") == 3) then
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("exar_kun:spawnState",4)
      local threespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local threespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local threespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local threespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind *0.6))) and readData("exar_kun:spawnState") == 4) then
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("exar_kun:spawnState",5)
      local fourspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local fourspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local fourspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local fourspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("exar_kun:spawnState") == 5) then
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("exar_kun:spawnState",6)
      local fivespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local fivespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local fivespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local fivespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind *0.4))) and readData("exar_kun:spawnState") == 6) then
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("exar_kun:spawnState",7)
      local sixspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local sixspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local sixspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local sixspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind *0.3))) and readData("exar_kun:spawnState") == 7) then
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("exar_kun:spawnState",8)
      local sevenspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local sevenspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local sevenspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local sevenspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind *0.2))) and readData("exar_kun:spawnState") == 8) then
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("exar_kun:spawnState",9)
      local eightspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local eightspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local eightspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local eightspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind *0.1))) and readData("exar_kun:spawnState") == 9) then
  	  createEvent(1, "exar_kun", "bomb", pPlayer, "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("exar_kun:spawnState",10)
      local ninespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local ninespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local ninespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local ninespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
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
      spatialChat(pBoss, "You have 60 seconds to loot my body befor it disappears.")
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
    	print("Starting Boss Respawn Broadcast Message")
end
-----------------------
--Broadcast Respawn
-----------------------
function exar_kun:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Exar Kun Boss Respawning In ...")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function exar_kun:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function exar_kun:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function exar_kun:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
    	print("Exar Kun Is Respawning")
end
--------------------------------
--Deploy Boss Trigger Trap Bomb
--------------------------------
function exar_kun:bomb(pPlayer)
	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 500) and not SceneObject(pMember):isAiAgent() then
			local trapDmg = getRandomNumber(1000, 1500)
			CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
			CreatureObject(pMember):sendSystemMessage("You take damage from the fire")
			CreatureObject(pMember):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
			CreatureObject(pMember):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
			CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
			CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
			CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
			CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
			end
		end
	end
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
