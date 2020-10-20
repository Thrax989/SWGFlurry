--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
worldboss_seven = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "corellia",
}
registerScreenPlay("worldboss_seven", true)
-----------------------------
--Start MeatLumpKing ScreenPlay
-----------------------------
function worldboss_seven:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("MeatLumpKing Loaded")
	end
end
-----------------------
--MeatLumpKing Has Spawned
-----------------------
function worldboss_seven:spawnMobiles()
		spawnMobile("corellia", "meatlump_guard", 10800, 1293, 19, 3988, 109, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, 1312, 20, 3978, 86, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, 1313, 20, 4038, 3, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, 1287, 20, 4046, -45, 0)
		local pBoss = spawnMobile("corellia", "worldboss_7", -1, 1310, 20, 4004, 159, 0)--Spawn MeatLumpKing
		local creature = CreatureObject(pBoss)
		print("MeatLumpKing Spawned")
		createObserver(DAMAGERECEIVED, "worldboss_seven", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "worldboss_seven", "bossDead", pBoss)--Meatlump king Has Died Trigger Respawn Function
end
-----------------------------
--MeatLumpKing Damage Observers
-----------------------------
function worldboss_seven:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)
  -----------------------
-- Boss 90% health
-----------------------
	if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("worldboss_seven:spawnState") == 0) then
      			writeData("worldboss_seven:spawnState",1)
			createEvent(0 * 1000, "worldboss_seven", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 90%")
	end
-----------------------
--MeatLumpKing Boss 70% health
-----------------------
	if (((health <= (maxHealth * 0.7)) or (action <= (maxAction * 0.7)) or (mind <= (maxMind * 0.7))) and readData("worldboss_seven:spawnState") == 1) then
      			writeData("worldboss_seven:spawnState",2)
			createEvent(0 * 1000, "worldboss_seven", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 70%")
	end
-----------------------
--MeatLumpKing Boss 50% health
-----------------------
	if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("worldboss_seven:spawnState") == 2) then
      			writeData("worldboss_seven:spawnState",3)
			createEvent(0 * 1000, "worldboss_seven", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 50%")
	end
-----------------------
--MeatLumpKing Boss 30% health
-----------------------
	if (((health <= (maxHealth * 0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("worldboss_seven:spawnState") == 3) then
      			writeData("worldboss_seven:spawnState",4)
			createEvent(0 * 1000, "worldboss_seven", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/ui_quest_spawn_enemy.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/medic_reckless_stimulation.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 30%")
	end
-----------------------
--MeatLumpKing Boss 10% health
-----------------------
	if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("worldboss_seven:spawnState") == 4) then
      			writeData("worldboss_seven:spawnState",5)
			createEvent(0 * 1000, "worldboss_seven", "bomb", playerObject, "")
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
function worldboss_seven:bomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(2000, 2500)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/cbt_msl_impact_spacebomb.cef", "")
      		CreatureObject(pMember):playEffect("clienteffect/lava_player_burning.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(2000, 2500)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/cbt_msl_impact_spacebomb.cef", "")
      	CreatureObject(playerObject):playEffect("clienteffect/lava_player_burning.cef", "")
	end
end
-----------------------
--MeatLumpKing Boss Support
-----------------------
function worldboss_seven:spawnSupport(playerObject)
	local pGuard1 = spawnMobile("corellia", "meatlump_guard", 10800, 1293, 19, 3988, 109, 0) 
	spatialChat(pGuard1, "DIE!")
	CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/attacker_berserk.cef", "")
	local pGuard2 = spawnMobile("corellia", "meatlump_guard", 10800, 1287, 20, 4046, -45, 0) 
	spatialChat(pGuard2, "Im coming Boss!")
	CreatureObject(pGuard2):engageCombat(playerObject)
      	CreatureObject(pGuard2):playEffect("clienteffect/attacker_berserk.cef", "")
 	local pGuard3 = spawnMobile("corellia", "meatlump_guard", 10800, 1312, 20, 3978, 86, 0) 
	spatialChat(pGuard3, "Awwwwww man!")
	CreatureObject(pGuard3):engageCombat(playerObject)
      	CreatureObject(pGuard3):playEffect("clienteffect/attacker_berserk.cef", "")       
end
---------------------------------------------------------------
--MeatLumpKing Has Died Respawn MeatLumpKing With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_seven:bossDead(pBoss)
	print("MeatLumpKing Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_seven", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "worldboss_seven", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "worldboss_seven", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(10800 * 1000, "worldboss_seven", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn MeatLumpKing Boss
-----------------------
function worldboss_seven:KillSpawn()
		local pBoss = spawnMobile("corellia", "worldboss_7", -1, 1310, 20, 4004, 159, 0)--Spawn MeatLumpKing After Death 3 Hour Timer
		print("MeatLumpKing Respawned")
		createObserver(DAMAGERECEIVED, "worldboss_seven", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "worldboss_seven", "bossDead", pBoss)    
end
-----------------------------------------------------------------------------
--MeatLumpKing Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_seven:KillBoss(pBoss)
      	writeData("worldboss_seven:spawnState",0)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("MeatLumpKing Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
----------------------------
--Broadcast Dead
----------------------------
function worldboss_seven:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 MeatLumpKing Boss Has Died.")
		CreatureObject(bossObject):broadcastToDiscord("MeatLumpKing Boss Has Died.")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function worldboss_seven:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 MeatLumpKing Boss Respawning.")
		CreatureObject(bossObject):broadcastToDiscord("MeatLumpKing Boss Respawning.")
end