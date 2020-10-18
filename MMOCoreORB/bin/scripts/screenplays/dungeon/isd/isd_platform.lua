--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
isd_platformScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dungeon2",
}
registerScreenPlay("isd_platformScreenplay", true)
-----------------------------
--Start Thrawn ScreenPlay
-----------------------------
function isd_platformScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("Thrawn Loaded")
	end
end
--------------------------------------------------
--   spawn elevator pads for dungeon
--------------------------------------------------
function isd_platformScreenplay:spawnSceneObjects()
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 20.058, 170.585, 430.548, 14201210, 0, 0, -1, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 19.8045, 453.359, 430.494, 14201210, 0, 0, -1, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", -54, 173.835, 20.3058, 14201200, -0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", -53.0554, 181.335, 20.3764, 14201200, -0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 54, 173.835, 20.0022, 14201199, 0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 54, 181.335, 20.3601, 14201199, 0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -38.3662, 173.835, 67.0904, 14201198, 1, 0, 0, 0)
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
-----------------------
--Thrawn Has Spawned
-----------------------
function isd_platformScreenplay:spawnMobiles()
--Main Spawn Room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 34.452, 173.835, 36.0281, 265, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 34.4445, 173.835, 27.0723, 272, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 30.0845, 173.835, 9.40103, 299, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 23.9617, 173.835, 3.32356, 17, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -0.0402867, 173.835, 0.294756, 73, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -23.5692, 173.835, 2.95916, 90, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -29.9028, 173.835, 9.24134, 110, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -34.4891, 173.835, 27.1564, 121, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -34.4541, 173.835, 36.1355, 136, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 6.8299, 177.335, -57.0574, 325, 14201193)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -6.83028, 177.335, -56.4635, 326, 14201193)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 8.93966, 175.335, -31.7196, 358, 14201191)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 69.1725, 173.835, 25.9111, 349, 14201187)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 64.5691, 173.835, 25.8934, 30, 14201187)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -69.0112, 173.835, 34.0492, 151, 14201197)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -15.2133, 175.335, -24.3627, 90, 14201194)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -9.90025, 175.335, -31.5628, 76, 14201195)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 0.0159999, 175.335, -13.1841, 181, 14201192)

--Mini Boss Room
spawnMobile("dungeon2", "isd_stormtrooper", 300, -0.0410455, 177.335, -58.3967, 355, 14201193)--Save For Mini Boss

--Entrance to creature mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 59.344, 173.835, 70.5219, 121, 14201188)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 59.4756, 173.835, 73.7074, 89, 14201188)


--entrance to boss mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 81.8535, 173.835, 69.755, 358, 14201177)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 78.1821, 173.835, 69.906, 358, 14201177)
--boss in for mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 80.178, 173.835, 63.479, 352, 14201181)


--mutation room 1
spawnMobile("dungeon2", "isd_stormtrooper", 300, 89.7521, 173.835, 94.8365, 265, 14201180)
--mutation room2
spawnMobile("dungeon2", "isd_stormtrooper", 300, 89.4285, 173.835, 114.51, 268, 14201179)
--mutation room 3
spawnMobile("dungeon2", "isd_stormtrooper", 300, 79.897, 173.835, 146.539, 179, 14201178)
--mutation room 4
spawnMobile("dungeon2", "isd_stormtrooper", 300, 57.7598, 173.835, 100.133, 128, 14201184)
--guards for muation room 4
spawnMobile("dungeon2", "isd_stormtrooper", 300, 65.8852, 173.835, 83.8533, 265, 14201185)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 65.7755, 173.835, 81.6075, 268, 14201185)

--exit mutation room 4 guards
spawnMobile("dungeon2", "isd_stormtrooper", 300, 69.5949, 173.835, 116.89, 267, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 54.0397, 173.835, 113.848, 354, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 51.8217, 173.835, 113.764, 354, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 50.3441, 173.835, 115.545, 88, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 50.5408, 173.835, 117.646, 80, 14201183)


--middle entance hallway gaurds
spawnMobile("dungeon2", "isd_stormtrooper", 300, 62.7065, 173.835, 168.518, 162, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 67.3617, 173.835, 168.516, 186, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 64.8666, 173.835, 133.389, 359, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 52.9773, 173.835, 138.086, 157, 14201182)
		local pBoss = spawnMobile("dungeon2", "isd_thrawn", -1, 0.0534111, 173.835, 9.2723, 357, 14201198)--Spawn Thrawn
		local creature = CreatureObject(pBoss)
		print("Thrawn Spawned")
		createObserver(DAMAGERECEIVED, "isd_platformScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "isd_platformScreenplay", "bossDead", pBoss)--SherKar Has Died Trigger Respawn
end
-----------------------------
--Thrawn Damage Observers
-----------------------------
function isd_platformScreenplay:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)
  -----------------------
--Thrawn  Boss 90% health
-----------------------
	if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("isd_platformScreenplay:spawnState") == 0) then
      			writeData("isd_platformScreenplay:spawnState",1)     
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 90%")
	end

-----------------------
--Thrawn  Boss 50% health
-----------------------
	if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("isd_platformScreenplay:spawnState") == 1) then
      			writeData("isd_platformScreenplay:spawnState",2)     
			self:spawnSupport2(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 50%")
	end
-----------------------
--Thrawn  Boss 30% health
-----------------------
	if (((health <= (maxHealth * 0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("isd_platformScreenplay:spawnState") == 2) then
      			writeData("isd_platformScreenplay:spawnState",3)
			createEvent(0 * 1000, "isd_platformScreenplay", "orbitalanim", playerObject, "")
 			createEvent(4 * 1000, "isd_platformScreenplay", "orbitaldam", playerObject, "")     
			self:spawnSupport2(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/attacker_berserk.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 30%")
	end
-----------------------
--Thrawn  Boss 10% health
-----------------------
	if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("isd_platformScreenplay:spawnState") == 3) then
      			writeData("isd_platformScreenplay:spawnState",4)
			createEvent(0 * 1000, "isd_platformScreenplay", "orbitalanim", playerObject, "")
 			createEvent(4 * 1000, "isd_platformScreenplay", "orbitaldam", playerObject, "")      
		end
	return 0

end
--------------------------------
--Deploy Boss orbital animation only
--------------------------------
function isd_platformScreenplay:orbitalanim(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(1, 1)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/combat_pt_orbitalstrike.cef", "")        
		end
	end
else
	local trapDmg = getRandomNumber(1, 1)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/combat_pt_orbitalstrike.cef", "")      
	end
end
--------------------------------
--Deploy Boss orbital damage only DELAY
--------------------------------
function isd_platformScreenplay:orbitaldam(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(1800, 2500)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)        
		end
	end
else
	local trapDmg = getRandomNumber(1800, 2500)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)      
	end
end
-----------------------
--Thrawn Boss Support
-----------------------
function isd_platformScreenplay:spawnSupport(playerObject)
	local pGuard1 = spawnMobile("dungeon2", "isd_at_at", -1, 0.1, 173.8, 52.3, 174, 14201198) 
	spatialChat(pGuard1, "!!!!!!!!")
	CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/ui_missile_aquiring.cef", "")
end
-----------------------
--Thrawn Boss Support 2
-----------------------
function isd_platformScreenplay:spawnSupport2(playerObject)
	local pGuard1 = spawnMobile("dungeon2", "isd_dark_novatrooper", -1, -14.9, 173.8, 54.1, 176, 14201198) 
	spatialChat(pGuard1, "Intruder!")
	CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/ui_missile_aquiring.cef", "")
	local pGuard2 = spawnMobile("dungeon2", "isd_dark_novatrooper", -1, -17.2, 173.8, 27.9, 29, 14201198) 
	spatialChat(pGuard2, "Open fire!")
	CreatureObject(pGuard2):engageCombat(playerObject)
      	CreatureObject(pGuard2):playEffect("clienteffect/ui_missile_aquiring.cef", "")
  	local pGuard3 = spawnMobile("dungeon2", "isd_dark_novatrooper", -1, 6.2, 173.8, 31.2, -66, 14201198) 
	spatialChat(pGuard3, "Target in sight!")
	CreatureObject(pGuard3):engageCombat(playerObject)
      	CreatureObject(pGuard3):playEffect("clienteffect/ui_missile_aquiring.cef", "")
	local pGuard4 = spawnMobile("dungeon2", "isd_dark_novatrooper", -1, 9.7, 173.8, 54.1, -146, 14201198) 
	spatialChat(pGuard4, "Wait what?")
	CreatureObject(pGuard4):engageCombat(playerObject)
      	CreatureObject(pGuard4):playEffect("clienteffect/ui_missile_aquiring.cef", "")      
end 
---------------------------------------------------------------
--Thrawn Has Died Respawn Thrawn With A New Dynamic Spawn
---------------------------------------------------------------
function isd_platformScreenplay:bossDead(pBoss)
	print("Thrawn Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "isd_platformScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "isd_platformScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "isd_platformScreenplay", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(10800 * 1000, "isd_platformScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn Thrawn Boss
-----------------------
function isd_platformScreenplay:KillSpawn()
		local pBoss = spawnMobile("dungeon2", "isd_thrawn", -1, 0.0534111, 173.835, 9.2723, 357, 14201198)--Spawn Thrawn After Death 3 Hour Timer
		print("Thrawn Respawned")
		createObserver(DAMAGERECEIVED, "isd_platformScreenplay", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "isd_platformScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--Thrawn Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function isd_platformScreenplay:KillBoss(pBoss)
  writeData("isd_platformScreenplay:spawnState",0)
	dropObserver(pBoss, OBJECTDESTRUCTION)  
	if SceneObject(pBoss) then
		print("Thrawn Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end

----------------------------
--Broadcast Dead
----------------------------
function isd_platformScreenplay:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 ISD Thrawn Boss Has Died.")
		CreatureObject(bossObject):broadcastToDiscord("ISD Thrawn Boss Has Died.")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function isd_platformScreenplay:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 ISD Thrawn Boss Respawning.")
		CreatureObject(bossObject):broadcastToDiscord("ISD Thrawn Boss Respawning.")
end
