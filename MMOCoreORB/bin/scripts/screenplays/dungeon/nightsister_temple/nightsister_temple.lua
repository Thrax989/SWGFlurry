--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
nightsister_templeScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dungeon2",
}
registerScreenPlay("nightsister_templeScreenplay", true)
-----------------------------
--Start NightsisterQueen ScreenPlay
-----------------------------
function nightsister_templeScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("NightsisterQueen Loaded")
	end
end
--------------------------------------------------
--   Terminal - scene objects
--------------------------------------------------
function nightsister_templeScreenplay:spawnSceneObjects()
spawnSceneObject("dantooine", "object/tangible/terminal/terminal_quad_screen.iff", -40.4491, 0.61331, 29.3437, 14200816, 1, 0, 0, 0)
end
-----------------------
--NightsisterQueen Has Spawned
-----------------------
function nightsister_templeScreenplay:spawnMobiles()
		local pBoss = spawnMobile("dungeon2", "nightsisterqueenboss", -1, -79.1685, 17.8173, 23.93, 100, 14201105)--Spawn NightsisterQueen
		local creature = CreatureObject(pBoss)
		print("NightsisterQueen Spawned")
		createObserver(DAMAGERECEIVED, "nightsister_templeScreenplay", "npcDamageObserver", pBoss)    
		createObserver(OBJECTDESTRUCTION, "nightsister_templeScreenplay", "bossDead", pBoss)--NightsisterQueen Has Died Trigger Respawn Function
end
-----------------------------
--NightsisterQueen Damage Observers
-----------------------------
function nightsister_templeScreenplay:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)
  -----------------------
--NightsisterQueen Boss 90% health
-----------------------
	if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("nightsister_templeScreenplay:spawnState") == 0) then
      			writeData("nightsister_templeScreenplay:spawnState",1)
			createEvent(0 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 90%")
	end
-----------------------
--NightsisterQueen Boss 70% health
-----------------------
	if (((health <= (maxHealth * 0.7)) or (action <= (maxAction * 0.7)) or (mind <= (maxMind * 0.7))) and readData("nightsister_templeScreenplay:spawnState") == 1) then
      			writeData("nightsister_templeScreenplay:spawnState",2)
			createEvent(0 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")        
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 70%")
	end
-----------------------
--NightsisterQueen Boss 50% health
-----------------------
	if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("nightsister_templeScreenplay:spawnState") == 2) then
      			writeData("nightsister_templeScreenplay:spawnState",3)
			createEvent(0 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")     
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 50%")
	end
-----------------------
--NightsisterQueen 30% health
-----------------------
	if (((health <= (maxHealth * 0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("nightsister_templeScreenplay:spawnState") == 3) then
      			writeData("nightsister_templeScreenplay:spawnState",4)
			createEvent(0 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")      
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 30%")
	end
-----------------------
--NightsisterQueen Boss 10% health
-----------------------
	if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("nightsister_templeScreenplay:spawnState") == 4) then
      			writeData("nightsister_templeScreenplay:spawnState",5)
			createEvent(0 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
 			createEvent(5 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")
			createEvent(20 * 1000, "nightsister_templeScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 10%")
		end
	return 0

end
--------------------------------
--Deploy Boss Trigger poisonbomb
--------------------------------
function nightsister_templeScreenplay:poisonbomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(400, 500)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/avatar_wke_gas_01.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(400, 500)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/avatar_wke_gas_01.cef", "")
	end
end
-----------------------
--NightsisterQueen Boss Support
-----------------------
function nightsister_templeScreenplay:spawnSupport(playerObject)
	local pGuard1 = spawnMobile("dungeon2", "nightsisterqueenrancor", -1, -79.1685, 17.8173, 23.93, 100, 14201105) 
	spatialChat(pGuard1, "RAWR")
	CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/ui_missile_aquiring.cef", "")
	local pGuard2 = spawnMobile("dungeon2", "nightsisterqueenrancor", -1, -40.1, 7.4, 11.7, -73, 14201105) 
	spatialChat(pGuard2, "Food?")
	CreatureObject(pGuard2):engageCombat(playerObject)
      	CreatureObject(pGuard2):playEffect("clienteffect/ui_missile_aquiring.cef", "")
end  
---------------------------------------------------------------
--NightsisterQueen Has Died Respawn NightsisterQueen With A New Dynamic Spawn
---------------------------------------------------------------
function nightsister_templeScreenplay:bossDead(pBoss)
	print("NightsisterQueen Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "nightsister_templeScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "nightsister_templeScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "nightsister_templeScreenplay", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(10800 * 1000, "nightsister_templeScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn NightsisterQueen Boss
-----------------------
function nightsister_templeScreenplay:KillSpawn()
		local pBoss = spawnMobile("dungeon2", "nightsisterqueenboss", -1, -79.1685, 17.8173, 23.93, 100, 14201105)--Spawn NightsisterQueen After Death 3 Hour Timer
		print("NightsisterQueen Respawned")
		createObserver(DAMAGERECEIVED, "nightsister_templeScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "nightsister_templeScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--NightsisterQueen Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function nightsister_templeScreenplay:KillBoss(pBoss)
      	writeData("nightsister_templeScreenplay:spawnState",0)  
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("NightsisterQueen Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end

----------------------------
--Broadcast Dead
----------------------------
function nightsister_templeScreenplay:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Nightsister Queen Boss Has Died.")
		CreatureObject(bossObject):broadcastToDiscord("Nightsister Queen Boss Has Died.")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function nightsister_templeScreenplay:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Nightsister Queen Boss Respawning.")
		CreatureObject(bossObject):broadcastToDiscord("Nightsister Queen Boss Respawning.")
end
