worldboss_seven = ScreenPlay:new {
  numberOfActs = 1,
  questString = "worldboss_seven",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet corellia
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("worldboss_seven", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Meatlump King")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function worldboss_seven:start()
if (isZoneEnabled("corellia")) then
	self:spawnMobiles()
  end
end
--------------------------------------------------
--   spawn mobiles for Meatlump King corellia guards
--------------------------------------------------
function worldboss_seven:spawnMobiles()
spawnMobile("corellia", "meatlump_guard", 10800, -2156, 26, -4365, 0, 0)
spawnMobile("corellia", "meatlump_guard", 10800, -2155, 27, -4375, 0, 0)
spawnMobile("corellia", "meatlump_guard", 10800, -2158, 26, -4370, 0, 0)
spawnMobile("corellia", "meatlump_guard", 10800, -2149, 27, -4368, 0, 0)
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pBoss = spawnMobile("corellia", "meatlump_lookout", 10800, -2157, 26, -4369, 0, 0)--3 hour respawn to start the boss
	print("Spawning Meatlump Lookout")
if (pBoss ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "worldboss_seven", "notifyTriggerDead", pBoss)
end
    writeData("worldboss_seven:spawnState",0)
    return 0
end
-----------------------------------------
--  Notify trigger is dead to spawn Boss
-----------------------------------------
function worldboss_seven:notifyTriggerDead(pBoss, pPlayer)
local pBoss = spawnMobile("corellia", "worldboss_7", -1, -2157, 26, -4369, 0, 0)
    print("Spawning Meatlump King")
	local creature = CreatureObject(pBoss)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    CreatureObject(pPlayer):playMusicMessage("sound/exar_kun.snd")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("worldboss_seven:spawnState", 1)
    writeData("worldboss_seven", oBoss:getObjectID())
    spatialChat(pBoss, "What the ....")
    createObserver(DAMAGERECEIVED,"worldboss_seven","boss_damage", pBoss)
    createObserver(OBJECTDESTRUCTION, "worldboss_seven", "Restart", pBoss)
end)
    return 0
end
-----------------------------------------
--  Notify trigger broadcast respawning
-----------------------------------------
function worldboss_seven:Restart(pPlayer, pBoss)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 MeatLump King World Boss Has Died!")
	player:broadcastToServer("\\#63C8F9 MeatLump King World Boss Will Respawn In 3 Hours")
	player:broadcastToDiscord("MeatLump King World Boss Has Died!")
	player:broadcastToDiscord("MeatLump King World Boss Will Respawn In 3 Hours")
    	print("Starting Boss Broadcast Scripts")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_seven", "Restartstates", pPlayer, "")--Restart Meatlump King States
	createEvent(120 * 1000, "worldboss_seven", "KillBoss", pBoss, "")--Clean Up Dead Corpse
	createEvent(10797 * 1000, "worldboss_seven", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "worldboss_seven", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "worldboss_seven", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "worldboss_seven", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function worldboss_seven:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
createEvent(10800 * 1000, "worldboss_seven", "Remove", pBoss, "")
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

local x1 = -2157
local y1 = -4369
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 75 --Max distance you can fight the boss is 75 meeters, you must be within range to fight the boss. Resets to full health if you fail the check.
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
      spatialChat(pBoss, "I dont have to take this. Im going home!")
      CreatureObject(pPlayer):sendSystemMessage("You must be within 75m of the boss to fight, boss is now resetting")
end
--------------------------------------
--  90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("worldboss_seven:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 90%")
      spatialChat(pBoss, "You dont want none of this smoke!")
      writeData("worldboss_seven:spawnState",2)
      local onespawn = spawnMobile("corellia", "meatlump_guard", 0, -2156, 26, -4365, 0, 0)
      local onespawn = spawnMobile("corellia", "meatlump_guard", 0, -2155, 27, -4375, 0, 0)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end

--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("worldboss_seven:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("worldboss_seven:spawnState",3)
      local twospawn = spawnMobile("corellia", "meatlump_guard", 0, -2156, 26, -4365, 0, 0)
      local twospawn = spawnMobile("corellia", "meatlump_guard", 0, -2155, 27, -4375, 0, 0)
      local twospawn = spawnMobile("corellia", "meatlump_guard", 0, -2158, 26, -4370, 0, 0)
      local twospawn = spawnMobile("corellia", "meatlump_guard", 0, -2149, 27, -4368, 0, 0)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end

--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("worldboss_seven:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("worldboss_seven:spawnState",4)
      local threespawn = spawnMobile("corellia", "meatlump_guard", 0, -2158, 26, -4370, 0, 0)
      local threespawn = spawnMobile("corellia", "meatlump_guard", 0, -2149, 27, -4368, 0, 0)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("worldboss_seven:spawnState") == 4) then
      spatialChat(pBoss, "Live by the sword, Die by the sword.")
      spatialChat(pBoss, "You have 5 minutes to loot my body before it disappears.")
            writeData("exar_kun:spawnState",5)
        end
      end
   return 0
end
-----------------------
--Broadcast Respawn
-----------------------
function worldboss_seven:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Meatlump King Respawning In ...")
		player:broadcastToDiscord("Meatlump King World Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function worldboss_seven:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function worldboss_seven:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function worldboss_seven:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
    	print("Meatlump King Is Respawning")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_seven:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Meatlump King Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
		return 0
	end
end
----------------------------
--Remove Boss After 3 hours
----------------------------
function worldboss_seven:Remove(pBoss)
	if SceneObject(pBoss) then
		print("Meatlump King Removed")
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
function worldboss_seven:Restartstates(pPlayer)
   writeData("worldboss_seven:spawnState", 0)
end
