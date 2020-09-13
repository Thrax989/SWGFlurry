--[[ 		High Inquisitor Jerec World Boss v1.0
			Written by Voxxy, for SWG Flurry Use Only
			Current Planet : Rori
			Current Boss Type : Creature 					]]--

inquisitor_boss = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "rori",
}
registerScreenPlay("inquisitor_boss", true)
-----------------------------------------
--Start High Inquisitor Jerec ScreenPlay
-----------------------------------------
function inquisitor_boss:start()
	if (isZoneEnabled("rori")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("High Inquisitor Jerec Loaded")
	end
end
----------------------------------------
--High Inquisitor Jerec Spawn Functions * Change Locations/Add Type
----------------------------------------
function inquisitor_boss:spawnMobiles()
	spawnMobile("rori", "inquisitor_trooper", 1800, -5371, 76, 5045, 130, 8566152)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5376, 76, 5041, 130, 8566153)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5372, 76, 5029, 130, 8566153)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5356, 76, 5037, 130, 8566153)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5340, 76, 5010, 130, 8566154)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5345, 76, 5001, 95, 8566154)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5391, 76, 5044, 85, 8566154)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5384, 76, 5037, 68, 8566155)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5343, 76, 5068, 150, 8566155)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5349, 76, 5064, 150, 8566155)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5340, 76, 5047, 120, 8566155)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5316, 76, 5048, 170, 8566155)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5309, 76, 5023, 170, 8566155)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5318, 76, 5024, 170, 8566155)
	spawnMobile("rori", "inquisitor_trooper", 1800, -5320, 76, 5006, 170, 8566155)	
	local pBoss = spawnMobile("rori", "high_inquisitor", 10800, -5349, 76, 5042, 330, 8566162)--Spawn High Inquisitor Jerec
	local creature = CreatureObject(pBoss)
	print("High Inquisitor Jerec Spawned")
	createObserver(DAMAGERECEIVED, "inquisitor_boss", "npcDamageObserver", pBoss)
	createObserver(OBJECTDESTRUCTION, "inquisitor_boss", "bossDead", pBoss)--Jerec Has Died Trigger Respawn Function
end
-----------------------------------------
--High Inquisitor Jerec Damage Observers
-----------------------------------------
function inquisitor_boss:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)
	
	Force = player:getForcePower()
  -----------------------------------------------------------------------
--High Inquisitor Jerec Boss 90% health - Drain Force & Lightning Attack
-------------------------------------------------------------------------
	if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("inquisitor_boss:spawnState") == 0) then
      			writeData("inquisitor_boss:spawnState",1)
				createEvent(0 * 1000, "inquisitor_boss", "cureDiseases", bossObject, "")
				createEvent(0 * 1000, "inquisitor_boss", "lightningAttack", playerObject, "")
				createEvent(0 * 1000, "inquisitor_boss", "drain", playerObject, "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_shocked_01_noshake.cef", "")
      			spatialChat(bossObject, "Do you think you are a match for me? I am a High Inquisitor of the Sith.")
	end
----------------------------------------------------------------
--High Inquisitor Jerec Boss 70% health - Spawn Vrke and Sancor
----------------------------------------------------------------
	if (((health <= (maxHealth * 0.7)) or (action <= (maxAction * 0.7)) or (mind <= (maxMind * 0.7))) and readData("inquisitor_boss:spawnState") == 1) then
      			writeData("inquisitor_boss:spawnState",2)
				createEvent(0 * 1000, "inquisitor_boss", "cureDiseases", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("You sense the presence of other Inquisitors!")
      			CreatureObject(bossObject):playEffect("clienteffect/death_trooper_infection_03.cef", "")
      			spatialChat(bossObject, "Inquisitors, make quick work of these Heretics!")
	end
-------------------------------------------------------------------------
--High Inquisitor Jerec Boss 50% health - Force Drain & Lightning Attack
-------------------------------------------------------------------------
	if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("inquisitor_boss:spawnState") == 2) then
      			writeData("inquisitor_boss:spawnState",3)
				createEvent(0 * 1000, "inquisitor_boss", "cureDiseases", bossObject, "")
				createEvent(0 * 1000, "inquisitor_boss", "lightningAttack", playerObject, "")
				createEvent(0 * 1000, "inquisitor_boss", "drain", playerObject, "")
				CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_shocked_01_noshake.cef", "")
      			spatialChat(bossObject, "You're tough .. but I am Sith")
	end
----------------------------------------------------------------
--High Inquisitor Jerec Boss 30% health - Mind Assault Attack.
----------------------------------------------------------------
	if (((health <= (maxHealth * 0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("inquisitor_boss:spawnState") == 3) then
      			writeData("inquisitor_boss:spawnState",4)
				createEvent(0 * 1000, "inquisitor_boss", "cureDiseases", bossObject, "")
				createEvent(0 * 1000, "inquisitor_boss", "mindAssault", playerObject, "")
				createEvent(0 * 1000, "inquisitor_boss", "drain", playerObject, "")
      			CreatureObject(bossObject):playEffect("clienteffect/mus_cym_poison.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/frs_dark_suffering.cef", "")
      			spatialChat(bossObject, "Argh! Now it's time to see what you're truly made of. Is your mind ready?")
	end
---------------------------------------
--High Inquisitor Jerec Boss 10% health
---------------------------------------
	if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("inquisitor_boss:spawnState") == 4) then
      			writeData("inquisitor_boss:spawnState",5)
				createEvent(0 * 1000, "inquisitor_boss", "cureDiseases", bossObject, "")
				createEvent(0 * 1000, "inquisitor_boss", "lightningAttack", playerObject, "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_shocked_01_noshake.cef", "")
				CreatureObject(bossObject):playEffect("clienteffect/underground_explosion.cef", "")
      			spatialChat(bossObject, "I am but one Sith, more of us are coming..")
	end
	return 0

end
-----------------------------
--Boss Attacks and Abilities
-----------------------------
function inquisitor_boss:lightningAttack(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local lightningAtk = getRandomNumber(2500, 3000)
			CreatureObject(pMember):inflictDamage(pMember, 0, lightningAtk, 1)
      		CreatureObject(pMember):playEffect("clienteffect/avatar_wke_electric_01.cef", "")
      		CreatureObject(pMember):playEffect("clienteffect/trap_electric_01.cef", "")
		end
	end
else
	local lightningAtk = getRandomNumber(2500, 3000)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, lightningAtk, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/avatar_wke_electric_01.cef", "")
      	CreatureObject(playerObject):playEffect("clienteffect/trap_electric_01.cef", "")
	end
end
--------------------------------------------------------------------------------------
--Mind Assault Attack (Just the lightning attack, but attacking the mind pool instead)
--------------------------------------------------------------------------------------
function inquisitor_boss:lightningAttack(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local lightningAtk = getRandomNumber(2500, 3000)
			CreatureObject(pMember):inflictDamage(pMember, 0, lightningAtk, 6)
      		CreatureObject(pMember):playEffect("clienteffect/frs_dark_suffering.cef", "")
		end
	end
else
	local lightningAtk = getRandomNumber(2500, 3000)
		CreatureObject(playerObject):inflictDamage(playerObject, 0, lightningAtk, 6)
      	CreatureObject(playerObject):playEffect("clienteffect/frs_dark_suffering.cef", "")
	end
end

-----------------------------------------------------
-- Drain Force Test Function * Needs to be Tested *
-----------------------------------------------------
function inquisitor_boss:drain(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
			local forceDrain = getRandomNumber(300, 1000)
			CreatureObject(playerObject):setForcePower(Force - forceDrain)
      		CreatureObject(pMember):playEffect("clienteffect/frs_dark_envy.cef", "")
		end
	end
else
	local forceDrain = getRandomNumber(300, 1000)
		CreatureObject(playerObject):setForcePower(Force - forceDrain)
      	CreatureObject(playerObject):playEffect("clienteffect/frs_dark_envy.cef", "")
	end
end
-----------------------
--High Inquisitor Jerec Boss Support
-----------------------
function inquisitor_boss:spawnSupport(playerObject)
	local pGuard1 = spawnMobile("rori", "inquisitor_sancor", -1, -5352, 76, 5052, 176, 14200878)
		spatialChat(pGuard1, "Heretics.. Prepare to die.")
		CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/invisible_effect.cef", "")
	local pGuard2 = spawnMobile("rori", "inquisitor_vrke", -1, -5361, 76, 5046, 100, 14200878)
		spatialChat(pGuard2, "Get behind me, High Inquisitor!")
		CreatureObject(pGuard2):engageCombat(playerObject)
      	CreatureObject(pGuard2):playEffect("clienteffect/invisible_effect.cef", "")
end
-- Disease cure, to combat pet spamming and allow players to enjoy the encounter. Not sure if it will work. --
function inquisitor_boss:cureDiseases(bossObject)
	local boss = LuaCreatureObject(bossObject)
		spatialChat(bossObject, "You're going to have to do better than diseases.")
		boss:cureDisease(1, 0)
		boss:cureDisease(1, 3)
		boss:cureDisease(1, 6)
	return 0
end
---------------------------------------------------------------
--High Inquisitor Jerec Has Died Respawn High Inquisitor Jerec With A New Dynamic Spawn
---------------------------------------------------------------
function inquisitor_boss:bossDead(pBoss)
	print("High Inquisitor Jerec Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "inquisitor_boss", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "inquisitor_boss", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "inquisitor_boss", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(1 * 1000, "inquisitor_boss", "BroadcastRespawn", pBoss, "")--Broadcast 3 Hour Respawn
	createEvent(10795 * 1000, "inquisitor_boss", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "inquisitor_boss", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "inquisitor_boss", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "inquisitor_boss", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn High Inquisitor Jerec Boss
-----------------------
function inquisitor_boss:KillSpawn()
		local pBoss = spawnMobile("rori", "high_inquisitor", 10800, -5349, 76, 5042, 170, 8566162))--Spawn High Inquisitor Jerec After Death 3 Hour Timer *Change Location*
		print("High Inquisitor Jerec Respawned")
		createObserver(DAMAGERECEIVED, "inquisitor_boss", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "inquisitor_boss", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--High Inquisitor Jerec Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function inquisitor_boss:KillBoss(pBoss)
      	writeData("inquisitor_boss:spawnState",0)
		dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("High Inquisitor Jerec Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
----------------------------
--Broadcast Dead
----------------------------
function inquisitor_boss:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 High Inquisitor Jerec has been slain!")
		CreatureObject(bossObject):broadcastToDiscord("High Inquisitor Jerec has been slain!")
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function inquisitor_boss:BroadcastRespawn(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 High Inquisitor Jerec Respawning In 3 Hours")
		CreatureObject(bossObject):broadcastToDiscord("High Inquisitor Jerec Respawning In 3 Hours")
end
-----------------------
--Broadcast Respawn
-----------------------
function inquisitor_boss:KillSpawnCast(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 High Inquisitor Jerec Respawning In ..")
		CreatureObject(bossObject):broadcastToDiscord("High Inquisitor Jerec Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function inquisitor_boss:KillSpawnCast1(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 3")
		CreatureObject(bossObject):broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function inquisitor_boss:KillSpawnCast2(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 2")
		CreatureObject(bossObject):broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function inquisitor_boss:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 1")
		CreatureObject(bossObject):broadcastToDiscord("1")
end