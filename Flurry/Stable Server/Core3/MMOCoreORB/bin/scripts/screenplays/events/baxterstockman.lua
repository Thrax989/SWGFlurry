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
local pBoss = spawnMobile("lok", "baxter_stockman", 10800, 2944.65, 290, -4688, 100, 0)--3 hour respawn to start the boss
	print("Spawning Baxter Stockman")
if (pBoss ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "baxter_stockman", "notifyTriggerDead", pBoss)
end
    writeData("baxter_stockman:spawnState",0)
    return 0
end
-----------------------------------------
--  Notify trigger is dead to spawn Boss
-----------------------------------------
function baxter_stockman:notifyTriggerDead(pBoss, pPlayer)
local pBoss = spawnMobile("lok", "mutated_baxter_stockman", -1, 2944.65, 290, -4688, 100, 0)
    print("Baxter Stockman has mutated")
	local creature = CreatureObject(pBoss)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    CreatureObject(pPlayer):playMusicMessage("sound/nightsister_temple.snd")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("baxter_stockman:spawnState", 1)
    writeData("baxter_stockman", oBoss:getObjectID())
    spatialChat(pBoss, "Baxter Stockmen injects himself with something, sheds his human skin turing into..")
    createObserver(DAMAGERECEIVED,"baxter_stockman","boss_damage", pBoss)
    createObserver(OBJECTDESTRUCTION, "baxter_stockman", "Restart", pBoss)
end)
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

--------------------------------------
--  90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("baxter_stockman:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "HAHA, Lets see how you do with my latest creations!!")
      spatialChat(pBoss, "Attack my pets..")
      writeData("baxter_stockman:spawnState",2)
      local onespawn = spawnMobile("lok", "mutated_quenker", 0, 2940.46, 290, -4688.26, 132, 0)
      local onespawn = spawnMobile("lok", "mutated_quenker", 0, 2944.45, 290, -4683.93, 110, 0)
--      local onespawn = spawnMobile("lok", "mutated_quenker", 0, 2948.69, 290, -4687.48, 106, 0)
--      local onespawn = spawnMobile("lok", "mutated_quenker", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("baxter_stockman:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "You havent seen anything yet!")
      spatialChat(pBoss, "Attack my pets")
      writeData("baxter_stockman:spawnState",3)
      local twospawn = spawnMobile("lok", "mutated_razor_angler", 0, 2940.46, 290, -4688.26, 132, 0)
      local twospawn = spawnMobile("lok", "mutated_razor_angler", 0, 2944.45, 290, -4683.93, 110, 0)
 --     local twospawn = spawnMobile("lok", "mutated_razor_angler", 0, 2948.69, 290, -4687.48, 106, 0)
 --     local twospawn = spawnMobile("lok", "mutated_razor_angler", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("baxter_stockman:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "You might have handled my pets with easy, but you won't be able to handle these!!!")
      spatialChat(pBoss, "Protect your master, ATTACK!!")      
      writeData("baxter_stockman:spawnState",4)
      local threespawn = spawnMobile("lok", "mutated_pug_jumper", 0, 2940.46, 290, -4688.26, 132, 0)
      local threespawn = spawnMobile("lok", "mutated_pug_jumper", 0, 2944.45, 290, -4683.93, 110, 0)
 --   local threespawn = spawnMobile("lok", "mutated_pug_jumper", 0, 2948.69, 290, -4687.48, 106, 0)
 --   local threespawn = spawnMobile("lok", "mutated_pug_jumper", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("baxter_stockman:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "You have dealt with my pets well.. Still, you're doomed.")
      spatialChat(pBoss, "Now, my pets.. Obey, your master.. Kill this fool..")
      writeData("baxter_stockman:spawnState",5)
      local fourspawn = spawnMobile("lok", "mutated_blistmok", 0, 2940.46, 290, -4688.26, 132, 0)
      local fourspawn = spawnMobile("lok", "mutated_blistmok", 0, 2944.45, 290, -4683.93, 110, 0)
--      local fourspawn = spawnMobile("lok", "mutated_blistmok", 0, 2948.69, 290, -4687.48, 106, 0)
--     local fourspawn = spawnMobile("lok", "mutated_blistmok", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("baxter_stockman:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "You will pay...")
      spatialChat(pBoss, "Damn you!. Lets try the some real pets")
      writeData("baxter_stockman:spawnState",6)
      local fivespawn = spawnMobile("lok", "mutated_bane_back", 0, 2940.46, 290, -4688.26, 132, 0)
      local fivespawn = spawnMobile("lok", "mutated_bane_back", 0, 2944.45, 290, -4683.93, 110, 0)
--      local fivespawn = spawnMobile("lok", "mutated_bane_back", 0, 2948.69, 290, -4687.48, 106, 0)
--      local fivespawn = spawnMobile("lok", "mutated_bane_back", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("baxter_stockman:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Sigh.. Stupid pets. ")
      spatialChat(pBoss, "You will pay for your defiance.. ATTACK!")
      writeData("baxter_stockman:spawnState",7)
      local sixspawn = spawnMobile("lok", "mutated_spiderclan_consort", 0, 2940.46, 290, -4688.26, 132, 0)
      local sixspawn = spawnMobile("lok", "mutated_spiderclan_consort", 0, 2944.45, 290, -4683.93, 110, 0)
--      local sixspawn = spawnMobile("lok", "mutated_spiderclan_consort", 0, 2948.69, 290, -4687.48, 106, 0)
--      local sixspawn = spawnMobile("lok", "mutated_spiderclan_consort", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.3))) and readData("baxter_stockman:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Useless pets...")
      spatialChat(pBoss, "Do not fail me...")
      writeData("baxter_stockman:spawnState",8)
      local sevenspawn = spawnMobile("lok", "mutated_umsortis", 0, 2940.46, 290, -4688.26, 132, 0)
      local sevenspawn = spawnMobile("lok", "mutated_umsortis", 0, 2944.45, 290, -4683.93, 110, 0)
--      local sevenspawn = spawnMobile("lok", "mutated_umsortis", 0, 2948.69, 290, -4687.48, 106, 0)
--      local sevenspawn = spawnMobile("lok", "mutated_umsortis", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("baxter_stockman:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "You have fought well, but now you die..")
      spatialChat(pBoss, "Attack...")      
      writeData("baxter_stockman:spawnState",9)  
      local eightspawn = spawnMobile("lok", "mutated_blackwing_rancor", 0, 2940.46, 290, -4688.26, 132, 0)
      local eightspawn = spawnMobile("lok", "mutated_blackwing_rancor", 0, 2944.45, 290, -4683.93, 110, 0)
--      local eightspawn = spawnMobile("lok", "mutated_blackwing_rancor", 0, 2948.69, 290, -4687.48, 106, 0)
--      local eightspawn = spawnMobile("lok", "mutated_blackwing_rancor", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("baxter_stockman:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "I saved the best for last. You're going down!")
      writeData("baxter_stockman:spawnState",10)
      local ninespawn = spawnMobile("lok", "mutated_massif", 0, 2940.46, 290, -4688.26, 132, 0)
      local ninespawn = spawnMobile("lok", "mutated_massif", 0, 2944.45, 290, -4683.93, 110, 0)
--      local ninespawn = spawnMobile("lok", "mutated_massif", 0, 2948.69, 290, -4687.48, 106, 0)
--      local ninespawn = spawnMobile("lok", "mutated_massif", 0, 2944.06, 290, -4692.23, 78, 0)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("baxter_stockman:spawnState") == 10) then
      spatialChat(pBoss, "I will be back, and with stronger pets!!")
      spatialChat(pBoss, "You have 5 minutes to loot my body before it disappears.")
            writeData("baxter_stockman:spawnState",11)
        end
      end
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
----------------------------
--Reset Player Boss States
----------------------------
function baxter_stockman:Restartstates(pPlayer)
   writeData("baxter_stockman:spawnState", 0)
end
