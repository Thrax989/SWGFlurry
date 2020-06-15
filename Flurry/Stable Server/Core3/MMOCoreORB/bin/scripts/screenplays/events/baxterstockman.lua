--------------------------------------
--   Creator : Sygnum
--   Date : 5/08/2020
--------------------------------------
baxter_stockman = ScreenPlay:new {
  numberOfActs = 1,
  questString = "baxter_stockman",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet lok, Baxter Stockman
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("baxter_stockman", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Baxter Stockman fight")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function baxter_stockman:start()
if (isZoneEnabled("lok")) then
	self:spawnMobiles()
  end
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function baxter_stockman:spawnMobiles()
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
spawnMobile("lok", "mutated_baxter_stockman", 10800, 2944.65, 290, -4688, 100, 0)--3 hour respawn to start the boss
spawnMobile("lok", "mutated_razor_angler", 10800, 2940.46, 290, -4688.26, 132, 0)
spawnMobile("lok", "mutated_blistmok", 10800, 2944.45, 290, -4683.93, 110, 0)
spawnMobile("lok", "mutated_bane_back", 10800, 2948.69, 290, -4687.48, 106, 0)
spawnMobile("lok", "mutated_umsortis", 10800, 2944.06, 290, -4692.23, 78, 0)
	print("Spawning Baxter Stockman")
if (pBoss ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "baxter_stockman", "notifyTriggerDead", pBoss)
end
    writeData("baxter_stockman:spawnState",0)
    return 0
end

-----------------------------------------
--  Notify trigger broadcast respawning
-----------------------------------------
function baxter_stockman:Restart(pPlayer, pBoss)
    print("Starting Boss Broadcast Scripts")
	createEvent(1 * 1000, "baxter_stockman", "Restartstates", pPlayer, "")--Restart Baxter Stockman States
	createEvent(1 * 1000, "baxter_stockman", "BroadcastRespawn", pPlayer, "")--Broadcast 3 Hour Respawn
	createEvent(300 * 1000, "baxter_stockman", "KillBoss", pPlayer, "")--Clean Up Dead Corpse
	createEvent(10795 * 1000, "baxter_stockman", "KillSpawnCast", pPlayer, "")--Broadcast Respawn
	createEvent(10798 * 1000, "baxter_stockman", "KillSpawnCast1", pPlayer, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "baxter_stockman", "KillSpawnCast2", pPlayer, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "baxter_stockman", "KillSpawnCast3", pPlayer, "")--Broadcast Respawn 1
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function baxter_stockman:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
createEvent(10800 * 1000, "baxter_stockman", "Remove", pBoss, "")
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("baxter_stockman:spawnState") == 10) then
      spatialChat(pBoss, "I will be back, and with stronger pets!!")
      spatialChat(pBoss, "You have 5 minutes to loot my body before it disappears.")
            writeData("baxter_stockman:spawnState",11)
   return 0
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function baxter_stockman:BroadcastRespawn(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Baxter Stockman has been killed and will be respawning in 3 Hours")
    		player:broadcastToDiscord("Baxter Stockman has been killed and will be respawning in 3 Hours")
    		print("Starting Boss Respawn Broadcast Message")
end
-----------------------
--Broadcast Respawn
-----------------------
function baxter_stockman:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Baxter Stockman will be respawning in ...")
    		player:broadcastToDiscord("Baxter Stockman will be respawning in ...")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function baxter_stockman:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
    		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function baxter_stockman:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
    		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function baxter_stockman:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
    		player:broadcastToDiscord("1")
    	print("Baxter Stockman Is Respawning")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function baxter_stockman:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Baxter Stockman corpse has been destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		return 0
	end
end
----------------------------
--Remove Boss After 3 hours
----------------------------
function baxter_stockman:Remove(pBoss)
	if SceneObject(pBoss) then
		print("Baxter Stockman has been Removed")
		SceneObject(pBoss):destroyObjectFromWorld()
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
end