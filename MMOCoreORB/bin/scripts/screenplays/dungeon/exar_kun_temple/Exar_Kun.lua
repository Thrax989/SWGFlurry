--------------------------------------
--   Creator : TOXIC
--   Date : 5/27/2018
--------------------------------------
exar_kun = ScreenPlay:new {
  numberOfActs = 1,
  debris = {
	{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -15.5567, z = 0.242093, y = -94.4686, cell = 14200872 },
	{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -7.85724, z = 0.241319, y = -94.6849, cell = 14200872 }
  },
  questString = "exar_kun",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 exar kun temple
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("exar_kun", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Exar Kun")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function exar_kun:start()
if (isZoneEnabled("dungeon2")) then
  self:spawnMobiles()
  self:spawnActiveAreas()
  self:spawnSceneObjects()
  end
end
--------------------------------------
--   Patroling location triggers
--------------------------------------
function exar_kun:PatrolDestReached(pMobile)
	if (pMobile == nil) then
		return 0
	end

	local curLoc = readData(SceneObject(pMobile):getObjectID() .. ":currentLoc")

	if (curLoc == 1) then
		writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 2)
	end
	
	if (curLoc == 2) then
		writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 3)
	end
	
	if (curLoc == 3) then
		writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 4)
	end
	
	if (curLoc == 4) then
		writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
	end

	createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pMobile, "")

	return 0
end
----------------------------------------------------
--   spawns patrol point locations for patrol npc's
----------------------------------------------------
function exar_kun:npcPatrol(pMobile)
	if (pMobile == nil) then
		return
	end

	local name = readStringData(SceneObject(pMobile):getObjectID() .. ":name")
	local curLoc = readData(SceneObject(pMobile):getObjectID() .. ":currentLoc")
	local nextLoc
---------------------
--   patrol 1 room 2
---------------------
	if (name == "npc1") then
		if (curLoc == 1) then
			nextLoc = { -1.80582, 0.138508, 10.3238, 14200875 }
		end
	end

	if (name == "npc1") then
		if (curLoc == 2) then
			nextLoc = { 18.0264, 0.138509, 9.97312, 14200875 }
		end
	end
	
	if (name == "npc1") then
		if (curLoc == 3) then
			nextLoc = { 18.4538, 0.138509, -15.4002, 14200875 }
		end
	end
	
	if (name == "npc1") then
		if (curLoc == 4) then
			nextLoc = { -1.65118, 0.138509, -15.3809, 14200875 }
		end
	end
---------------------
--   patrol 2 room 2
---------------------
	if (name == "npc2") then
		if (curLoc == 1) then
			nextLoc = { 18.0264, 0.138509, 9.97312, 14200875 }
		end
	end

	if (name == "npc2") then
		if (curLoc == 2) then
			nextLoc = { 18.4538, 0.138509, -15.4002, 14200875 }
		end
	end
	
	if (name == "npc2") then
		if (curLoc == 3) then
			nextLoc = { -1.65118, 0.138509, -15.3809, 14200875 }
		end
	end
	
	if (name == "npc2") then
		if (curLoc == 4) then
			nextLoc = { -1.80582, 0.138508, 10.3238, 14200875 }
		end
	end
---------------------
--   patrol 3 room 2
---------------------
	if (name == "npc3") then
		if (curLoc == 1) then
			nextLoc = { 18.4538, 0.138509, -15.4002, 14200875 }
		end
	end

	if (name == "npc3") then
		if (curLoc == 2) then
			nextLoc = { -1.65118, 0.138509, -15.3809, 14200875 }
		end
	end
	
	if (name == "npc3") then
		if (curLoc == 3) then
			nextLoc = { -1.80582, 0.138508, 10.3238, 14200875 }
		end
	end
	
	if (name == "npc3") then
		if (curLoc == 4) then
			nextLoc = { 18.0264, 0.138509, 9.97312, 14200875 }
		end
	end
---------------------
--   patrol 4 room 2
---------------------
	if (name == "npc4") then
		if (curLoc == 1) then
			nextLoc = { -1.65118, 0.138509, -15.3809, 14200875 }
		end
	end

	if (name == "npc4") then
		if (curLoc == 2) then
			nextLoc = { -1.80582, 0.138508, 10.3238, 14200875 }
		end
	end
	
	if (name == "npc4") then
		if (curLoc == 3) then
			nextLoc = { 18.0264, 0.138509, 9.97312, 14200875 }
		end
	end
	
	if (name == "npc4") then
		if (curLoc == 4) then
			nextLoc = { 18.4538, 0.138509, -15.4002, 14200875 }
		end
	end
---------------------
--   patrol 1 room 1
---------------------
	if (name == "1npc1") then
		if (curLoc == 1) then
			nextLoc = { -19.6852, -0.386468, -54.029, 14200873}
		end
	end

	if (name == "1npc1") then
		if (curLoc == 2) then
			nextLoc = { -3.55566, -0.386468, -53.7905, 14200873 }
		end
	end
	
	if (name == "1npc1") then
		if (curLoc == 3) then
			nextLoc = { -3.59187, -0.386468, -74.9668, 14200873 }
		end
	end
	
	if (name == "1npc1") then
		if (curLoc == 4) then
			nextLoc = { -19.6974, -0.386468, -75.3737, 14200873 }
		end
	end
---------------------
--   patrol 2 room 1
---------------------
	if (name == "2npc2") then
		if (curLoc == 1) then
			nextLoc = { -3.55566, -0.386468, -53.7905, 14200873 }
		end
	end

	if (name == "2npc2") then
		if (curLoc == 2) then
			nextLoc = { -3.59187, -0.386468, -74.9668, 14200873 }
		end
	end
	
	if (name == "2npc2") then
		if (curLoc == 3) then
			nextLoc = { -19.6974, -0.386468, -75.3737, 14200873 }
		end
	end
	
	if (name == "2npc2") then
		if (curLoc == 4) then
			nextLoc = { -19.6852, -0.386468, -54.029, 14200873 }
		end
	end
---------------------
--   patrol 3 room 1
---------------------
	if (name == "3npc3") then
		if (curLoc == 1) then
			nextLoc = { -3.59187, -0.386468, -74.9668, 14200873 }
		end
	end

	if (name == "3npc3") then
		if (curLoc == 2) then
			nextLoc = { -19.6974, -0.386468, -75.3737, 14200873 }
		end
	end
	
	if (name == "3npc3") then
		if (curLoc == 3) then
			nextLoc = { -19.6852, -0.386468, -54.029, 14200873 }
		end
	end
	
	if (name == "3npc3") then
		if (curLoc == 4) then
			nextLoc = { -3.55566, -0.386468, -53.7905, 14200873 }
		end
	end
---------------------
--   patrol 4 room 1
---------------------
	if (name == "4npc4") then
		if (curLoc == 1) then
			nextLoc = { -19.6974, -0.386468, -75.3737, 14200873 }
		end
	end

	if (name == "4npc4") then
		if (curLoc == 2) then
			nextLoc = { -19.6852, -0.386468, -54.029, 14200873}
		end
	end
	
	if (name == "4npc4") then
		if (curLoc == 3) then
			nextLoc = { -3.55566, -0.386468, -53.7905, 14200873 }
		end
	end
	
	if (name == "4npc4") then
		if (curLoc == 4) then
			nextLoc = { -3.59187, -0.386468, -74.9668, 14200873 }
		end
	end
	AiAgent(pMobile):stopWaiting()
	AiAgent(pMobile):setWait(0)
	AiAgent(pMobile):setNextPosition(nextLoc[1], nextLoc[2], nextLoc[3], nextLoc[4])
	AiAgent(pMobile):executeBehavior()
end
--------------------------------------------------
--   spawns debris Observer when destroyed
--------------------------------------------------
function exar_kun:spawnSceneObjects()
	for i = 1, 2, 1 do
		local debrisData = self.debris[i]
		local pDebris = spawnSceneObject("dungeon2", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)
		if (pDebris ~= nil) then
			writeData(SceneObject(pDebris):getObjectID() .. ":exar_kun:debris_index", i)
			createObserver(OBJECTDESTRUCTION, "exar_kun", "notifyDebrisDestroyed", pDebris)
		end
	end
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function exar_kun:spawnMobiles()
--------------------------------------
--  spawns initial patrol 1 room 2
--------------------------------------
    pNpc = spawnMobile("dungeon2", "force_ghost", 120, -1.65118, 0.138509, -15.3809, 205, 14200875)
    writeData(SceneObject(pNpc):getObjectID() .. ":currentLoc", 1)
    writeStringData(SceneObject(pNpc):getObjectID() .. ":name", "npc1")
    createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pNpc, "")
    createObserver(DESTINATIONREACHED, "exar_kun", "PatrolDestReached", pNpc)
    AiAgent(pNpc):setAiTemplate("manualescortwalk")
    AiAgent(pNpc):setFollowState(4)
--------------------------------------
--  spawns initial patrol 2 room 2
--------------------------------------
    pNpc = spawnMobile("dungeon2", "force_ghost", 120, -1.80582, 0.138508, 10.3238, 205, 14200875)
    writeData(SceneObject(pNpc):getObjectID() .. ":currentLoc", 1)
    writeStringData(SceneObject(pNpc):getObjectID() .. ":name", "npc2")
    createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pNpc, "")
    createObserver(DESTINATIONREACHED, "exar_kun", "PatrolDestReached", pNpc)
    AiAgent(pNpc):setAiTemplate("manualescortwalk")
    AiAgent(pNpc):setFollowState(4)
--------------------------------------
--  spawns initial patrol 3 room 2
--------------------------------------
    pNpc = spawnMobile("dungeon2", "force_ghost", 120, 18.0264, 0.138509, 9.97312, 205, 14200875)
    writeData(SceneObject(pNpc):getObjectID() .. ":currentLoc", 1)
    writeStringData(SceneObject(pNpc):getObjectID() .. ":name", "npc3")
    createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pNpc, "")
    createObserver(DESTINATIONREACHED, "exar_kun", "PatrolDestReached", pNpc)
    AiAgent(pNpc):setAiTemplate("manualescortwalk")
    AiAgent(pNpc):setFollowState(4)
--------------------------------------
--  spawns initial patrol 4 room 2
--------------------------------------
    pNpc = spawnMobile("dungeon2", "force_ghost", 120, 18.4538, 0.138509, -15.4002, 205, 14200875)
    writeData(SceneObject(pNpc):getObjectID() .. ":currentLoc", 1)
    writeStringData(SceneObject(pNpc):getObjectID() .. ":name", "npc4")
    createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pNpc, "")
    createObserver(DESTINATIONREACHED, "exar_kun", "PatrolDestReached", pNpc)
    AiAgent(pNpc):setAiTemplate("manualescortwalk")
    AiAgent(pNpc):setFollowState(4)
--------------------------------------
--  spawns initial patrol 1 room 1
--------------------------------------
    pNpc = spawnMobile("dungeon2", "force_ghost", 120, -19.6974, -0.386468, -75.3737, 30, 14200873)
    writeData(SceneObject(pNpc):getObjectID() .. ":currentLoc", 1)
    writeStringData(SceneObject(pNpc):getObjectID() .. ":name", "1npc1")
    createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pNpc, "")
    createObserver(DESTINATIONREACHED, "exar_kun", "PatrolDestReached", pNpc)
    AiAgent(pNpc):setAiTemplate("manualescortwalk")
    AiAgent(pNpc):setFollowState(4)
--------------------------------------
--  spawns initial patrol 2 room 1
--------------------------------------
    pNpc = spawnMobile("dungeon2", "force_ghost", 120, -19.6852, -0.386468, -54.029, 120, 14200873)
    writeData(SceneObject(pNpc):getObjectID() .. ":currentLoc", 1)
    writeStringData(SceneObject(pNpc):getObjectID() .. ":name", "2npc2")
    createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pNpc, "")
    createObserver(DESTINATIONREACHED, "exar_kun", "PatrolDestReached", pNpc)
    AiAgent(pNpc):setAiTemplate("manualescortwalk")
    AiAgent(pNpc):setFollowState(4)
--------------------------------------
--  spawns initial patrol 3 room 1
--------------------------------------
    pNpc = spawnMobile("dungeon2", "force_ghost", 120, -3.55566, -0.386468, -53.7905, 201, 14200873)
    writeData(SceneObject(pNpc):getObjectID() .. ":currentLoc", 1)
    writeStringData(SceneObject(pNpc):getObjectID() .. ":name", "3npc3")
    createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pNpc, "")
    createObserver(DESTINATIONREACHED, "exar_kun", "PatrolDestReached", pNpc)
    AiAgent(pNpc):setAiTemplate("manualescortwalk")
    AiAgent(pNpc):setFollowState(4)
--------------------------------------
--  spawns initial patrol 4 room 1
--------------------------------------
    pNpc = spawnMobile("dungeon2", "force_ghost", 120, -3.59187, -0.386468, -74.9668, 293, 14200873)
    writeData(SceneObject(pNpc):getObjectID() .. ":currentLoc", 1)
    writeStringData(SceneObject(pNpc):getObjectID() .. ":name", "4npc4")
    createEvent(getRandomNumber(350,350) * 100, "exar_kun", "npcPatrol", pNpc, "")
    createObserver(DESTINATIONREACHED, "exar_kun", "PatrolDestReached", pNpc)
    AiAgent(pNpc):setAiTemplate("manualescortwalk")
    AiAgent(pNpc):setFollowState(4)            
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pTrigger = spawnMobile("dungeon2", "exar_kun_cultist", 10800, -11.2544, -0.0730047, -39.2305, 163, 14200873)--3 hour respawn to start the boss
if (pTrigger ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "exar_kun", "notifyTriggerDead", pTrigger)
end
    writeData("exar_kun:spawnState",0)
    return 0
end
--------------------------------------
--  Notify trigger is dead to spawn Boss
--------------------------------------
function exar_kun:notifyTriggerDead(pTrigger, pPlayer)
local pBoss = spawnMobile("dungeon2", "exar_kun_cultist", 0, -12.2959, -0.386468, -64.93, 178, 14200873)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("exar_kun:spawnState", 1)
    writeData("exar_kun", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"exar_kun","boss_damage", pBoss)
end)
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function exar_kun:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
--------------------------------------
--   Range and health checks for boss
--------------------------------------
if (boss ~= nil) then
local heal = 10000
local bossHealth = boss:getHAM(0)
local bossAction = boss:getHAM(3)
local bossMind = boss:getHAM(6)
local bossMaxHealth = boss:getMaxHAM(0)
local bossMaxAction = boss:getMaxHAM(3)
local bossMaxMind = boss:getMaxHAM(6)

local x1 = -13.6987
local y1 = -62.0336
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 20 --Max distance you can fight the boss is 20 meeters, you must be within range to fight the boss. Resets to full health if you fail the check.
if distance > (maxDistance * maxDistance) then
      forcePeace(pBoss)
      CreatureObject(pBoss):healDamage(heal, 0)
      CreatureObject(pBoss):healDamage(heal, 3)
      CreatureObject(pBoss):healDamage(heal, 6)
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/bacta_grenade.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_shocked_01_noshake.cef", "")
      spatialChat(pBoss, "Systems powering down you are out of combat range")
      CreatureObject(pPlayer):sendSystemMessage("You must be within 25m of the boss to fight, boss is now resetting")
end
--------------------------------------
--  90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("exar_kun:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 90%")
      spatialChat(pBoss, "You fools..")
      writeData("exar_kun:spawnState",2)
      local onespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local onespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local onespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local onespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("exar_kun:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("exar_kun:spawnState",3)
      local twospawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local twospawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local twospawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local twospawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("exar_kun:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("exar_kun:spawnState",4)
      local threespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local threespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local threespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local threespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind *0.6))) and readData("exar_kun:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("exar_kun:spawnState",5)
      local fourspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local fourspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local fourspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local fourspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("exar_kun:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("exar_kun:spawnState",6)
      local fivespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local fivespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local fivespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local fivespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind *0.4))) and readData("exar_kun:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("exar_kun:spawnState",7)
      local sixspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local sixspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local sixspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local sixspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind *0.3))) and readData("exar_kun:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("exar_kun:spawnState",8)
      local sevenspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local sevenspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local sevenspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local sevenspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind *0.2))) and readData("exar_kun:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("exar_kun:spawnState",9)
      local eightspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local eightspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local eightspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local eightspawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind *0.1))) and readData("exar_kun:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("exar_kun:spawnState",10)
      local ninespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.55566, -0.386468, -53.7905, 201, 14200873)
      local ninespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6852, -0.386468, -54.029, 120, 14200873)
      local ninespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -3.59187, -0.386468, -74.9668, 293, 14200873)
      local ninespawn = spawnMobile("dungeon2", "exar_kun_cultist", 0, -19.6974, -0.386468, -75.3737, 30, 14200873)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.01)) or (bossAction <= (bossMaxAction * 0.01)) or (bossMind <= (bossMaxMind * 0.01))) and readData("exar_kun:spawnState") == 10) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      CreatureObject(pBoss):broadcastToServer("\\#63C8F9 A Group Has Cleared The Exar Kun Temple Dungeon! Next Boss Encounter will be Avalible in 1 hour!.")
            writeData("exar_kun:spawnState",11)
        end
      end
   return 0
end
--------------------------------------------------------------------------------------------
--   Added Active Area Check for server wide broadcasting, Entering/Exiting active boss zone
--------------------------------------------------------------------------------------------
function exar_kun:spawnActiveAreas()
local pSpawnArea = spawnSceneObject("dungeon2", "object/active_area.iff", 5, 0, 1993, 0, 0, 0, 0, 0)
if (pSpawnArea ~= nil) then
local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(120)--invisible active area script is set for 120m in a 360 degree radius
          createObserver(ENTEREDAREA, "exar_kun", "notifySpawnArea", pSpawnArea)
          createObserver(EXITEDAREA, "exar_kun", "notifySpawnAreaLeave", pSpawnArea)
    end
end
function exar_kun:notifySpawnArea(pActiveArea, pMovingObject, pBoss, pPlayer)
if (not SceneObject(pMovingObject):isCreatureObject()) then
  return 0
end
return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
    return 0
end
if (player:isImperial() or player:isNeutral() or player:isRebel()) then
          --player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has Entered The Exar Kun Temple Dungeon!")
          player:sendSystemMessage("You Have Entered The Exar Kun Temple Dungeon!")
          end
      return 0
  end)
end
function exar_kun:notifySpawnAreaLeave(pActiveArea, pMovingObject, pBoss, pPlayer)
if (not SceneObject(pMovingObject):isCreatureObject()) then
  return 0
end
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
if (player:isAiAgent()) then
  return 0
end
if (player:isImperial() or player:isNeutral() or player:isRebel()) then
      --player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has left the Exar Kun Temple Dungeon!")
      player:sendSystemMessage("You Have Left The Exar Kun Temple Dungeon!")
      end
    return 0
  end)
end
---------------------------------------------------
--  set debris condtion on spawn
---------------------------------------------------
function exar_kun:respawnDebris(pDebris)
	if (pDebris == nil) then
		return
	end

	TangibleObject(pDebris):setConditionDamage(0, false)
	local debrisData = self.debris[readData(SceneObject(pDebris):getObjectID() .. ":exar_kun:debris_index")]

	local pCell = getSceneObject(debrisData.cell)

	if (pCell ~= nil) then
		SceneObject(pCell):transferObject(pDebris, -1, true)
	end
end
--------------------------------------------------
--   creates debirs resapwn task 5 mins
--------------------------------------------------
function exar_kun:notifyDebrisDestroyed(pDebris, pPlayer)
	if (pPlayer == nil or pDebris == nil) then
		return 0
	end

	createEvent(300000, "exar_kun", "respawnDebris", pDebris, "")--5 min respawn
	SceneObject(pDebris):destroyObjectFromWorld()

	CreatureObject(pPlayer):clearCombatState(1)
	return 0
end
