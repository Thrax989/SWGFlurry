worldboss_sixScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "lok",
}
registerScreenPlay("worldboss_sixScreenplay", true)
-----------------------------
--Start Malevolent Gurk ScreenPlay
-----------------------------
function worldboss_sixScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("WorldBossSix Loaded")
	end
end
-----------------------
--Malevolent Gurk Objects
-----------------------
function worldboss_sixScreenplay:spawnSceneObjects()
spawnSceneObject("lok", "object/tangible/gravestone/gravestone05.iff", 3317, 0, 1725, 0, 1, 0, 0, 0)-- ADD SOMETHING
spawnSceneObject("lok", "object/tangible/container/corpse/player_corpse.iff", 3329, 0.4, 1724, 0, 1, 0, 0, 0)
spawnSceneObject("lok", "object/tangible/container/corpse/player_corpse.iff", 3321, 0.1, 1730, 0, 1, 0, 0, 0)
spawnSceneObject("lok", "object/tangible/gravestone/gravestone02.iff", 3320, 0.1, 1722, 0, 1, 0, 0, 0)
spawnSceneObject("lok", "object/tangible/gravestone/gravestone01.iff", 3329, 1, 1738, 0, 1, 0, 0, 0)
end
-----------------------
--Malevolent Gurk Has Spawned
-----------------------
function worldboss_sixScreenplay:spawnMobiles()
		local pBoss = spawnMobile("lok", "worldboss_6", -1, 3324, 0, 1727, 196, 0)--Spawn Malevolent Gurk
		local creature = CreatureObject(pBoss)
		print("WorldBossSix Spawned")
		createObserver(DAMAGERECEIVED, "worldboss_sixScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "worldboss_sixScreenplay", "bossDead", pBoss)--Malevolent Gurk Has Died Trigger Respawn Function
end
-----------------------------
--Malevolent Gurk Damage Observers
-----------------------------
function worldboss_sixScreenplay:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)
  -----------------------
--Malevolent Gurk Boss 90% health
-----------------------
	if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("worldboss_sixScreenplay:spawnState") == 0) then
      			writeData("worldboss_sixScreenplay:spawnState",1)
			createEvent(0 * 1000, "worldboss_sixScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")      
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 90%")
	end
-----------------------
--Malevolent Gurk Boss 70% health
-----------------------
	if (((health <= (maxHealth * 0.7)) or (action <= (maxAction * 0.7)) or (mind <= (maxMind * 0.7))) and readData("worldboss_sixScreenplay:spawnState") == 1) then
      			writeData("worldboss_sixScreenplay:spawnState",2)
			createEvent(0 * 1000, "worldboss_sixScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 70%")
	end
-----------------------
--Malevolent Gurk Boss 50% health
-----------------------
	if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("worldboss_sixScreenplay:spawnState") == 2) then
      			writeData("worldboss_sixScreenplay:spawnState",3)
			createEvent(0 * 1000, "worldboss_sixScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 50%")
	end
-----------------------
--Malevolent Gurk Boss 30% health
-----------------------
	if (((health <= (maxHealth * 0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("worldboss_sixScreenplay:spawnState") == 3) then
      			writeData("worldboss_sixScreenplay:spawnState",4)
			createEvent(0 * 1000, "worldboss_sixScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 30%")
	end
-----------------------
--Malevolent Gurk Boss 10% health
-----------------------
	if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("worldboss_sixScreenplay:spawnState") == 4) then
      			writeData("worldboss_sixScreenplay:spawnState",5)
			createEvent(0 * 1000, "worldboss_sixScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "worldboss_sixScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 10%")
		end
	return 0

end
--------------------------------
--Deploy Boss Trigger Trap Bomb
--------------------------------
function worldboss_sixScreenplay:bomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(1500, 1800)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/combat_bug_bomb.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(1500, 1800)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/combat_bug_bomb.cef", "")
	end
end
--------------------------------
--Deploy Boss Trigger poisonbomb
--------------------------------
function worldboss_sixScreenplay:poisonbomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(200, 400)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/avatar_wke_gas_01.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(200, 400)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/avatar_wke_gas_01.cef", "")
	end
end
-----------------------
--Malevolent Gurk Boss Support
-----------------------
function worldboss_sixScreenplay:spawnSupport(playerObject)
	local pGuard1 = spawnMobile("lok", "crazed_gurk_destroyer", -1, 3339, 1.5, 1720, -82, 0) 
	spatialChat(pGuard1, "!!!!!!!!")
	CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/ui_missile_aquiring.cef", "")
	local pGuard2 = spawnMobile("lok", "crazed_gurk_destroyer", -1, 3309, 0.2, 1719, 89, 0) 
	spatialChat(pGuard2, "!!!!!!!!")
	CreatureObject(pGuard2):engageCombat(playerObject)
      	CreatureObject(pGuard2):playEffect("clienteffect/ui_missile_aquiring.cef", "")
end
---------------------------------------------------------------
--Malevolent Gurk Has Died Respawn Malevolent Gurk With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_sixScreenplay:bossDead(pBoss)
	print("WorldBossSix Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_sixScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "worldboss_sixScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "worldboss_sixScreenplay", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(1 * 1000, "worldboss_sixScreenplay", "BroadcastRespawn", pBoss, "")--Broadcast 3 Hour Respawn
	createEvent(10795 * 1000, "worldboss_sixScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "worldboss_sixScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "worldboss_sixScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "worldboss_sixScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn Malevolent Gurk Boss
-----------------------
function worldboss_sixScreenplay:KillSpawn()
		local pBoss = spawnMobile("lok", "worldboss_6", -1, 3324, 0, 1727, 196, 0)--Spawn Malevolent Gurk After Death 3 Hour Timer
		print("WorldBossSix Respawned")
		createObserver(DAMAGERECEIVED, "worldboss_sixScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "worldboss_sixScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--Malevolent Gurk Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_sixScreenplay:KillBoss(pBoss)
      	writeData("worldboss_sixScreenplay:spawnState",0)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("WorldBossSix Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
----------------------------
--Broadcast Dead
----------------------------
function worldboss_sixScreenplay:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Malevolent Gurk Boss Has Died!")
		CreatureObject(bossObject):broadcastToDiscord("Malevolent Gurk Boss Has Died!")
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function worldboss_sixScreenplay:BroadcastRespawn(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Malevolent Gurk Boss Respawning In 3 Hours")
		CreatureObject(bossObject):broadcastToDiscord("Malevolent Gurk Boss Respawning In 3 Hours")
end
-----------------------
--Broadcast Respawn
-----------------------
function worldboss_sixScreenplay:KillSpawnCast(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Malevolent Gurk Boss Respawning In ..")
		CreatureObject(bossObject):broadcastToDiscord("Malevolent Gurk Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function worldboss_sixScreenplay:KillSpawnCast1(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 3")
		CreatureObject(bossObject):broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function worldboss_sixScreenplay:KillSpawnCast2(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 2")
		CreatureObject(bossObject):broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function worldboss_sixScreenplay:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 1")
		CreatureObject(bossObject):broadcastToDiscord("1")
end