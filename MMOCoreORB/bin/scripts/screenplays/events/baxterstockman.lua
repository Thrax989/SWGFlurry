--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
baxter_stockman = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "lok",
}
registerScreenPlay("baxter_stockman", true)
-----------------------------
--Start BaxterStockman ScreenPlay
-----------------------------
function baxter_stockman:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("BaxterStockman Loaded")
	end
end
-----------------------
--BaxterStockman Has Spawned
-----------------------
function baxter_stockman:spawnMobiles()
		local pBoss = spawnMobile("lok", "mutated_baxter_stockman", -1, 2944.65, 290, -4688, 100, 0)--Spawn BaxterStockman
		local creature = CreatureObject(pBoss)
		print("BaxterStockman Spawned")
		createObserver(OBJECTDESTRUCTION, "baxter_stockman", "bossDead", pBoss)--BaxterStockman Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--BaxterStockman Has Died Respawn BaxterStockman With A New Dynamic Spawn
---------------------------------------------------------------
function baxter_stockman:bossDead(pBoss)
	print("BaxterStockman Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "baxter_stockman", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "baxter_stockman", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "baxter_stockman", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(10800 * 1000, "baxter_stockman", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn BaxterStockman Boss
-----------------------
function baxter_stockman:KillSpawn()
		local pBoss = spawnMobile("lok", "mutated_baxter_stockman", -1, 2944.65, 290, -4688, 100, 0)--Spawn BaxterStockman After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("BaxterStockman Respawned")
		createObserver(OBJECTDESTRUCTION, "baxter_stockman", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--BaxterStockman Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function baxter_stockman:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("BaxterStockman Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
----------------------------
--Broadcast Dead
----------------------------
function baxter_stockman:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Baxter Stockman Boss Has Died.")
		CreatureObject(bossObject):broadcastToDiscord("Baxter Stockman Boss Has Died.")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function baxter_stockman:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Baxter Stockman Boss Respawning.")
		CreatureObject(bossObject):broadcastToDiscord("Baxter Stockman Boss Respawning.")
end
