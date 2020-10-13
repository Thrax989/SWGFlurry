--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
sher_karScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mustafar",
}
registerScreenPlay("sher_karScreenplay", true)
-----------------------------
--Start SherKar ScreenPlay
-----------------------------
function sher_karScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("SherKar Loaded")
	end
end
-----------------------
--SherKar Has Spawned
-----------------------
function sher_karScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mustafar", "sherkar", -1, -79.9848, -20.4863, -121.67, 277, 12116005)--Spawn SherKar
		local creature = CreatureObject(pBoss)
		print("SherKar Spawned")
		createObserver(DAMAGERECEIVED, "sher_karScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "sher_karScreenplay", "bossDead", pBoss)--SherKar Has Died Trigger Respawn
end
-----------------------------
--SherKar Gurk Damage Observers
-----------------------------
function sher_karScreenplay:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)
  -----------------------
--SherKar Gurk Boss 90% health
-----------------------
	if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("sher_karScreenplay:spawnState") == 0) then
      			writeData("sher_karScreenplay:spawnState",1)
			createEvent(0 * 1000, "sher_karScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")      
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 90%")
	end
-----------------------
--SherKar Gurk Boss 70% health
-----------------------
	if (((health <= (maxHealth * 0.7)) or (action <= (maxAction * 0.7)) or (mind <= (maxMind * 0.7))) and readData("sher_karScreenplay:spawnState") == 1) then
      			writeData("sher_karScreenplay:spawnState",2)
			createEvent(0 * 1000, "sher_karScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 70%")
	end
-----------------------
--SherKar Gurk Boss 50% health
-----------------------
	if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("sher_karScreenplay:spawnState") == 2) then
      			writeData("sher_karScreenplay:spawnState",3)
			createEvent(0 * 1000, "sher_karScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 50%")
	end
-----------------------
--SherKar Gurk Boss 30% health
-----------------------
	if (((health <= (maxHealth * 0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("sher_karScreenplay:spawnState") == 3) then
      			writeData("sher_karScreenplay:spawnState",4)
			createEvent(0 * 1000, "sher_karScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")       
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 30%")
	end
-----------------------
--SherKar Gurk Boss 10% health
-----------------------
	if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("sher_karScreenplay:spawnState") == 4) then
      			writeData("sher_karScreenplay:spawnState",5)
			createEvent(0 * 1000, "sher_karScreenplay", "bomb", playerObject, "")
 			createEvent(5 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(10 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")
			createEvent(15 * 1000, "sher_karScreenplay", "poisonbomb", playerObject, "")       
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
function sher_karScreenplay:bomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(1500, 2000)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/mine_drx55.cef", "")
      		CreatureObject(pMember):playEffect("clienteffect/screen_shake_light.cef", "")          
		end
	end
else
	local trapDmg = getRandomNumber(1500, 2000)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/mine_drx55.cef", "")
      	CreatureObject(playerObject):playEffect("clienteffect/screen_shake_light.cef", "")        
	end
end
--------------------------------
--Deploy Boss Trigger player on fire DOT
--------------------------------
function sher_karScreenplay:poisonbomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(300, 400)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/lava_player_burning.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(300, 400)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/lava_player_burning.cef", "")
	end
end
-----------------------
--SherKar Boss Support
-----------------------
function sher_karScreenplay:spawnSupport(playerObject)
	local pGuard1 = spawnMobile("mustafar", "sherkarmini", -1, -116, -15, -138, 13, 12116005) 
	spatialChat(pGuard1, "!!!!!!!!")
	CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/ui_missile_aquiring.cef", "")
	local pGuard2 = spawnMobile("mustafar", "sherkarmini", -1, -112, -17, -55, 171, 12116005) 
	spatialChat(pGuard2, "!!!!!!!!")
	CreatureObject(pGuard2):engageCombat(playerObject)
      	CreatureObject(pGuard2):playEffect("clienteffect/ui_missile_aquiring.cef", "")
end  
---------------------------------------------------------------
--SherKar Has Died Respawn SherKar With A New Dynamic Spawn
---------------------------------------------------------------
function sher_karScreenplay:bossDead(pBoss)
	print("SherKar Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "sher_karScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "sher_karScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "sher_karScreenplay", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(10800 * 1000, "sher_karScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn SherKar Boss
-----------------------
function sher_karScreenplay:KillSpawn()
		local pBoss = spawnMobile("mustafar", "sherkar", -1, -79.9848, -20.4863, -121.67, 277, 12116005)--Spawn SherKar After Death 3 Hour Timer
		print("SherKar Respawned")
		createObserver(DAMAGERECEIVED, "sher_karScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "sher_karScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--SherKar Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function sher_karScreenplay:KillBoss(pBoss)
      	writeData("sher_karScreenplay:spawnState",0)  
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("SherKar Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
----------------------------
--Broadcast Dead
----------------------------
function sher_karScreenplay:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 SherKar Boss Has Died.")
		CreatureObject(bossObject):broadcastToDiscord("SherKar Boss Has Died.")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function sher_karScreenplay:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 SherKar Boss Respawning.")
		CreatureObject(bossObject):broadcastToDiscord("SherKar Boss Respawning.")
end
