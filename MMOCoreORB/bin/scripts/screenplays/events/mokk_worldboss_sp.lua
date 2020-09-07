mokk_worldboss_sp = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dantooine",
}
registerScreenPlay("mokk_worldboss_sp", true)
-----------------------------
--Start mokk_worldboss ScreenPlay
-----------------------------
function mokk_worldboss_sp:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Mokk Chieftain Loaded")
	end
end
-----------------------
--mokk_worldboss Has Spawned
-----------------------
function mokk_worldboss_sp:spawnMobiles()
		local pBoss = spawnMobile("dantooine", "mokk_chieftain", -1, -7046.9, 2.2, -3329.2, -165,0)--Spawn Mokk Chieftain
		local creature = CreatureObject(pBoss)
		print("Mokk Chieftain Spawned")
		createObserver(DAMAGERECEIVED, "mokk_worldboss_sp", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "mokk_worldboss_sp", "bossDead", pBoss)--Mokk Chieftain Has Died Trigger Respawn Function
end
-----------------------------
--mokk_worldboss Damage Observers
-----------------------------
function mokk_worldboss_sp:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)
  -----------------------
--mokk_worldboss Boss 90% health
-----------------------
	if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("mokk_worldboss_sp:spawnState") == 0) then
      			writeData("mokk_worldboss_sp:spawnState",1)
			createEvent(0 * 1000, "mokk_worldboss_sp", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 90%")
	end
-----------------------
--mokk_worldboss Boss 70% health
-----------------------
	if (((health <= (maxHealth * 0.7)) or (action <= (maxAction * 0.7)) or (mind <= (maxMind * 0.7))) and readData("mokk_worldboss_sp:spawnState") == 1) then
      			writeData("mokk_worldboss_sp:spawnState",2)
			createEvent(0 * 1000, "mokk_worldboss_sp", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 70%")
	end
-----------------------
--mokk_worldboss Boss 50% health
-----------------------
	if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("mokk_worldboss_sp:spawnState") == 2) then
      			writeData("mokk_worldboss_sp:spawnState",3)
			createEvent(0 * 1000, "mokk_worldboss_sp", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 50%")
	end
-----------------------
--mokk_worldboss Boss 30% health
-----------------------
	if (((health <= (maxHealth * 0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("mokk_worldboss_sp:spawnState") == 3) then
      			writeData("mokk_worldboss_sp:spawnState",4)
			createEvent(0 * 1000, "mokk_worldboss_sp", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 30%")
	end
-----------------------
--mokk_worldboss Boss 10% health
-----------------------
	if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("mokk_worldboss_sp:spawnState") == 4) then
      			writeData("mokk_worldboss_sp:spawnState",5)
			createEvent(0 * 1000, "mokk_worldboss_sp", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 10%")
		end
	return 0

end
--------------------------------
--Deploy Boss Trigger Trap Bomb
--------------------------------
function mokk_worldboss_sp:bomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(2000, 2500)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/underground_explosion.cef", "")
      		CreatureObject(pMember):playEffect("clienteffect/lava_player_burning.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(2000, 2500)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/underground_explosion.cef", "")
      	CreatureObject(playerObject):playEffect("clienteffect/lava_player_burning.cef", "")
	end
end
-----------------------
--mokk_worldboss Boss Support
-----------------------
function mokk_worldboss_sp:spawnSupport(playerObject)
	local pGuard1 = spawnMobile("dantooine", "mokk_huurton_reaper", -1, -7053, 2.7, -3350, 16, 0) 
	spatialChat(pGuard1, "!!!!!!!!")
	CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/attacker_berserk.cef", "")
	local pGuard2 = spawnMobile("dantooine", "mokk_guard", -1, -7049, 2.5, -3339, -165, 0) 
	spatialChat(pGuard2, "Im coming Boss! Attack you useless mutt!")
	CreatureObject(pGuard2):engageCombat(playerObject)
      	CreatureObject(pGuard2):playEffect("clienteffect/attacker_berserk.cef", "")
end
---------------------------------------------------------------
--mokk_worldboss Has Died Respawn NSTamer With A New Dynamic Spawn
---------------------------------------------------------------
function mokk_worldboss_sp:bossDead(pBoss)
	print("Mokk Chieftain Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "mokk_worldboss_sp", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "mokk_worldboss_sp", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "mokk_worldboss_sp", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(1 * 1000, "mokk_worldboss_sp", "BroadcastRespawn", pBoss, "")--Broadcast 3 Hour Respawn
	createEvent(10795 * 1000, "mokk_worldboss_sp", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "mokk_worldboss_sp", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "mokk_worldboss_sp", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "mokk_worldboss_sp", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
-- mokk Boss
-----------------------
function mokk_worldboss_sp:KillSpawn()
		local pBoss = spawnMobile("dantooine", "mokk_chieftain", -1, -7046.9, 2.2, -3329.2, -165,0)--Spawn mokk_worldboss After Death 3 Hour Timer
		print("Mokk Chieftain Respawned")
		createObserver(DAMAGERECEIVED, "mokk_worldboss_sp", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "mokk_worldboss_sp", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--mokk_worldboss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function mokk_worldboss_sp:KillBoss(pBoss)
      	writeData("mokk_worldboss_sp:spawnState",0)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Mokk Chieftain Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
----------------------------
--Broadcast Dead
----------------------------
function mokk_worldboss_sp:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Mokk Chieftain Boss Has Died!")
		CreatureObject(bossObject):broadcastToDiscord("Mokk Chieftain Boss Has Died!")
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function mokk_worldboss_sp:BroadcastRespawn(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Mokk Chieftain Boss Respawning In 3 Hours")
		CreatureObject(bossObject):broadcastToDiscord("Mokk Chieftain Boss Respawning In 3 Hours")
end
-----------------------
--Broadcast Respawn
-----------------------
function mokk_worldboss_sp:KillSpawnCast(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Mokk Chieftain Boss Respawning In ..")
		CreatureObject(bossObject):broadcastToDiscord("Mokk Chieftain Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function mokk_worldboss_sp:KillSpawnCast1(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 3")
		CreatureObject(bossObject):broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function mokk_worldboss_sp:KillSpawnCast2(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 2")
		CreatureObject(bossObject):broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function mokk_worldboss_sp:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 1")
		CreatureObject(bossObject):broadcastToDiscord("1")
end