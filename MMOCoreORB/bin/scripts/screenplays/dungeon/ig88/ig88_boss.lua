--------------------------------------
--   Creator : TOXIC
--   Date : 12/11/2017
--------------------------------------

ig88_boss = ScreenPlay:new {
  numberOfActs = 1,
  questString = "ig88_boss",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
---------------------------------------------
--   Register Screenplay to planet Dungeon 2
---------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("ig88_boss", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for IG-88")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function ig88_boss:start()
if (isZoneEnabled("dungeon2")) then
  self:spawnMobiles()
  self:spawnActiveAreas()
  end
end
--------------------------------------------------
--   spawn mouse droid when droid dies spawn boss
--------------------------------------------------
function ig88_boss:spawnMobiles()
local pTrigger = spawnMobile("dungeon2", "mouse_droid", 86400, -0.0547165, 0.0315461, 10.281, 8, 14200863)--24 hour respawn to start the boss
if (pTrigger ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "ig88_boss", "notifyTriggerDead", pTrigger)
end
    writeData("ig88_boss:spawnState",0)
    return 0
end
--------------------------------------
--  active boss once mouse droid dies
--------------------------------------
function ig88_boss:notifyTriggerDead(pTrigger, pPlayer)
local pBoss = spawnMobile("dungeon2", "ig_88_boss", 0, -0.0547165, 0.0315461, 10.281, 8, 14200863)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("ig88_boss:spawnState", 1)
    writeData("ig88boss", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"ig88_boss","boss_damage", pBoss)
end)
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function ig88_boss:boss_damage(pBoss, pPlayer, pAdd, oAdd, oAddTwo, oAddThree, oAddFour, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, pAddNine, pAddTen, pAddEleven, pAddTwelve, pAddThirteen, pAddFourteen, pAddFifteen, pAddSixteen, pAddSeventeen, pAddEighteen, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
--------------------------------------
--   Range and health checks for boss
--------------------------------------
  if (boss ~= nil) then
local heal = 500000
local bossHealth = boss:getHAM(0)
local bossAction = boss:getHAM(3)
local bossMind = boss:getHAM(6)
local bossMaxHealth = boss:getMaxHAM(0)
local bossMaxAction = boss:getMaxHAM(3)
local bossMaxMind = boss:getMaxHAM(6)

local x1 = -0.0547165
local y1 = 10.281
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 40 --Max distance you can fight the boss is 40 meeters, you must be within range to fight the boss. Reset to full health if you fail the check.
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
--   First wave 90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("ig88_boss:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("First Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 90%")
      writeData("ig88_boss:spawnState",2)
      local oAdd = spawnMobile("dungeon2", "iggungan", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      spatialChat(oAdd, "target locked")
      local oAdd = spawnMobile("dungeon2", "iggungan", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      spatialChat(oAdd, "target locked")
      ObjectManager.withCreatureObject(oAdd, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
      CreatureObject(oAdd):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local oAddTwo = spawnMobile("dungeon2", "iggungan", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      spatialChat(oAddTwo, "target locked")
      local oAddTwo = spawnMobile("dungeon2", "iggungan", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      spatialChat(oAddTwo, "target locked")
      ObjectManager.withCreatureObject(oAddTwo, function(osecondTime)
      writeData("countadd2", osecondTime:getObjectID())
      osecondTime:engageCombat(pPlayer)
      CreatureObject(oAddTwo):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local oAddThree = spawnMobile("dungeon2", "iggungan", 0, -28.0065, 0.031546, -19.2101, 33, 14200863)
      spatialChat(oAddThree, "target locked")
      local oAddThree = spawnMobile("dungeon2", "iggungan", 0, 0.0157171, 0.0315459, -21.8045, 359, 14200863)
      spatialChat(oAddThree, "target locked")
      ObjectManager.withCreatureObject(oAddThree, function(othirdTime)
      writeData("countadd3", othirdTime:getObjectID())
      othirdTime:engageCombat(pPlayer)
      CreatureObject(oAddThree):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local oAddFour = spawnMobile("dungeon2", "iggungan", 0, -29.4181, 0.031546, 40.9501, 129, 14200863)
      spatialChat(oAddFour, "target locked")
      local oAddFour = spawnMobile("dungeon2", "iggungan", 0, -29.6284, 0.031546, 9.97978, 87, 14200863)
      spatialChat(oAddFour, "target locked")
      ObjectManager.withCreatureObject(oAddFour, function(ofourthTime)
      writeData("countadd4", ofourthTime:getObjectID())
      ofourthTime:engageCombat(pPlayer)
      CreatureObject(oAddFour):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)

end
--------------------------------------
--   Second wave 80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind *0.8))) and readData("ig88_boss:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("First Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("ig88_boss:spawnState",3)
      local oAdd = spawnMobile("dungeon2", "igtusken", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      spatialChat(oAdd, "target locked")
      local oAdd = spawnMobile("dungeon2", "igtusken", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      spatialChat(oAdd, "target locked")
      ObjectManager.withCreatureObject(oAdd, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
      CreatureObject(oAdd):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local oAddTwo = spawnMobile("dungeon2", "igtusken", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      spatialChat(oAddTwo, "target locked")
      local oAddTwo = spawnMobile("dungeon2", "igtusken", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      spatialChat(oAddTwo, "target locked")
      ObjectManager.withCreatureObject(oAddTwo, function(osecondTime)
      writeData("countadd2", osecondTime:getObjectID())
      osecondTime:engageCombat(pPlayer)
      CreatureObject(oAddTwo):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local oAddThree = spawnMobile("dungeon2", "igtusken", 0, -28.0065, 0.031546, -19.2101, 33, 14200863)
      spatialChat(oAddThree, "target locked")
      local oAddThree = spawnMobile("dungeon2", "igtusken", 0, 0.0157171, 0.0315459, -21.8045, 359, 14200863)
      spatialChat(oAddThree, "target locked")
      ObjectManager.withCreatureObject(oAddThree, function(othirdTime)
      writeData("countadd3", othirdTime:getObjectID())
      othirdTime:engageCombat(pPlayer)
      CreatureObject(oAddThree):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local oAddFour = spawnMobile("dungeon2", "igtusken", 0, -29.4181, 0.031546, 40.9501, 129, 14200863)
      spatialChat(oAddFour, "target locked")
      local oAddFour = spawnMobile("dungeon2", "igtusken", 0, -29.6284, 0.031546, 9.97978, 87, 14200863)
      spatialChat(oAddFour, "target locked")
      ObjectManager.withCreatureObject(oAddFour, function(ofourthTime)
      writeData("countadd4", ofourthTime:getObjectID())
      ofourthTime:engageCombat(pPlayer)
      CreatureObject(oAddFour):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)

end
--------------------------------------
--   Third wave 70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("ig88_boss:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Second Enemy Wave Starting!")
      spatialChat(pBoss,"Boss Current Health = 70%")
      writeData("ig88_boss:spawnState", 4)
      local pAddFive = spawnMobile("dungeon2", "igbattleforeman", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      spatialChat(pAddFive, "target locked")
      local pAddFive = spawnMobile("dungeon2", "igbattleforeman", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      spatialChat(pAddFive, "target locked")
      ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
      writeData("countadd5", fifthTime:getObjectID())
      fifthTime:engageCombat(pPlayer)
      CreatureObject(pAddFive):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddSix = spawnMobile("dungeon2", "igbattleforeman", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      spatialChat(pAddSix, "target locked")
      local pAddSix = spawnMobile("dungeon2", "igbattleforeman", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      spatialChat(pAddSix, "target locked")
      ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
      writeData("countadd6", sixthTime:getObjectID())
      sixthTime:engageCombat(pPlayer)
      CreatureObject(pAddSix):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddSeven = spawnMobile("dungeon2", "igbattleforeman", 0, -28.0065, 0.031546, -19.2101, 33, 14200863)
      spatialChat(pAddSeven, "target locked")
      local pAddSeven = spawnMobile("dungeon2", "igbattleforeman", 0, 0.0157171, 0.0315459, -21.8045, 359, 14200863)
      spatialChat(pAddSeven, "target locked")
      ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
      writeData("countadd7", seventhTime:getObjectID())
      seventhTime:engageCombat(pPlayer)
      CreatureObject(pAddSeven):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddEight = spawnMobile("dungeon2", "igbattleforeman", 0, -29.4181, 0.031546, 40.9501, 129, 14200863)
      spatialChat(pAddEight, "Target Lock")
      local pAddEight = spawnMobile("dungeon2", "igbattleforeman", 0, -29.6284, 0.031546, 9.97978, 87, 14200863)
      spatialChat(pAddEight, "Target Lock")
      ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
      writeData("countadd8", eighthTime:getObjectID())
      eighthTime:engageCombat(pPlayer)
      CreatureObject(pAddEight):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)

end
--------------------------------------
--   Fourth wave 60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("ig88_boss:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Third Enemy Wave Starting!")
      spatialChat(pBoss,"Boss Current Health = 60%")
      writeData("ig88_boss:spawnState", 5)
      local pAddNine = spawnMobile("dungeon2", "igsuperbattledroid", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      spatialChat(pAddNine, "target locked")
      local pAddNine = spawnMobile("dungeon2", "igsuperbattledroid", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      spatialChat(pAddNine, "target locked")
      ObjectManager.withCreatureObject(pAddNine, function(ninthTime)
      writeData("countadd9", ninthTime:getObjectID())
      ninthTime:engageCombat(pPlayer)
      CreatureObject(pAddNine):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddTen = spawnMobile("dungeon2", "igsuperbattledroid", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      spatialChat(pAddTen, "target locked")
      local pAddTen = spawnMobile("dungeon2", "igsuperbattledroid", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      spatialChat(pAddTen, "target locked")
      ObjectManager.withCreatureObject(pAddTen, function(tenthTime)
      writeData("countadd10", tenthTime:getObjectID())
      tenthTime:engageCombat(pPlayer)
      CreatureObject(pAddTen):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddEleven = spawnMobile("dungeon2", "igsuperbattledroid", 0, -28.0065, 0.031546, -19.2101, 33, 14200863)
      spatialChat(pAddEleven, "target locked")
      local pAddEleven = spawnMobile("dungeon2", "igsuperbattledroid", 0, 0.0157171, 0.0315459, -21.8045, 359, 14200863)
      spatialChat(pAddEleven, "target locked")
      ObjectManager.withCreatureObject(pAddEleven, function(eleventhTime)
      writeData("countadd11", eleventhTime:getObjectID())
      eleventhTime:engageCombat(pPlayer)
      CreatureObject(pAddEleven):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddTwelve = spawnMobile("dungeon2", "igsuperbattledroid", 0, -29.4181, 0.031546, 40.9501, 129, 14200863)
      spatialChat(pAddTwelve, "Target Lock")
      local pAddTwelve = spawnMobile("dungeon2", "igsuperbattledroid", 0, -29.6284, 0.031546, 9.97978, 87, 14200863)
      spatialChat(pAddTwelve, "Target Lock")
      ObjectManager.withCreatureObject(pAddTwelve, function(twelthTime)
      writeData("countadd12", twelthTime:getObjectID())
      twelthTime:engageCombat(pPlayer)
      CreatureObject(pAddTwelve):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)

end
--------------------------------------
--   Fifth wave 50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("ig88_boss:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Fourth Enemy Wave Starting!")
      spatialChat(pBoss,"Boss Current Health = 50%")
      writeData("ig88_boss:spawnState", 6)
      local pAddThirteen = spawnMobile("dungeon2", "ancientigguardian", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      spatialChat(pAddThirteen, "target locked")
      local pAddThirteen = spawnMobile("dungeon2", "ancientigguardian", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      spatialChat(pAddThirteen, "target locked")
      ObjectManager.withCreatureObject(pAddThirteen, function(thirteenthTime)
      writeData("countadd13", thirteenthTime:getObjectID())
      thirteenthTime:engageCombat(pPlayer)
      CreatureObject(pAddThirteen):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddFourteen = spawnMobile("dungeon2", "ancientigguardian", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      spatialChat(pAddFourteen, "target locked")
      local pAddFourteen = spawnMobile("dungeon2", "ancientigguardian", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      spatialChat(pAddFourteen, "target locked")
      ObjectManager.withCreatureObject(pAddFourteen, function(fourteenthTime)
      writeData("countadd14", fourteenthTime:getObjectID())
      fourteenthTime:engageCombat(pPlayer)
      CreatureObject(pAddFourteen):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddFifteen = spawnMobile("dungeon2", "ancientigguardian", 0, -28.0065, 0.031546, -19.2101, 33, 14200863)
      spatialChat(pAddFifteen, "target locked")
      local pAddFifteen = spawnMobile("dungeon2", "ancientigguardian", 0, 0.0157171, 0.0315459, -21.8045, 359, 14200863)
      spatialChat(pAddFifteen, "target locked")
      ObjectManager.withCreatureObject(pAddFifteen, function(fifteenthTime)
      writeData("countadd15", fifteenthTime:getObjectID())
      fifteenthTime:engageCombat(pPlayer)
      CreatureObject(pAddFifteen):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddSixteen = spawnMobile("dungeon2", "ancientigguardian", 0, -29.4181, 0.031546, 40.9501, 129, 14200863)
      spatialChat(pAddSixteen, "Target Lock")
      local pAddSixteen = spawnMobile("dungeon2", "ancientigguardian", 0, -29.6284, 0.031546, 9.97978, 87, 14200863)
      spatialChat(pAddSixteen, "Target Lock")
      ObjectManager.withCreatureObject(pAddSixteen, function(sixteenthTime)
      writeData("countadd16", sixteenthTime:getObjectID())
      sixteenthTime:engageCombat(pPlayer)
      CreatureObject(pAddSixteen):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)

end
--------------------------------------
--   Six wave 40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("ig88_boss:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(1000, 1500)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pBoss):playEffect("clienteffect/space_command/cbt_nebulae_fire.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Fifth Enemy Wave Starting!")
      spatialChat(pBoss,"Boss Current Health = 40%")
      writeData("ig88_boss:spawnState", 7)
      local pAddSeventeen = spawnMobile("dungeon2", "igrancor", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      spatialChat(pAddSeventeen, "Target Lock")
      local pAddSeventeen = spawnMobile("dungeon2", "igrancor", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      spatialChat(pAddSeventeen, "Target Lock")
      local pAddSeventeen = spawnMobile("dungeon2", "igrancor", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      spatialChat(pAddSeventeen, "Target Lock")
      local pAddSeventeen = spawnMobile("dungeon2", "igrancor", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      spatialChat(pAddSeventeen, "Target Lock")
      ObjectManager.withCreatureObject(pAddSeventeen, function(seventeenthTime)
      writeData("countadd17", seventeenthTime:getObjectID())
      seventeenthTime:engageCombat(pPlayer)
      CreatureObject(pAddSeventeen):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)
      local pAddEighteen = spawnMobile("dungeon2", "igrancor", 0, -28.0065, 0.031546, -19.2101, 33, 14200863)
      spatialChat(pAddEighteen, "Target Lock")
      local pAddEighteen = spawnMobile("dungeon2", "igrancor", 0, 0.0157171, 0.0315459, -21.8045, 359, 14200863)
      spatialChat(pAddEighteen, "Target Lock")
      local pAddEighteen = spawnMobile("dungeon2", "igrancor", 0, -29.4181, 0.031546, 40.9501, 129, 14200863)
      spatialChat(pAddEighteen, "Target Lock")
      local pAddEighteen = spawnMobile("dungeon2", "igrancor", 0, -29.6284, 0.031546, 9.97978, 87, 14200863)
      spatialChat(pAddEighteen, "Target Lock")
      ObjectManager.withCreatureObject(pAddEighteen, function(eighteenthTime)
      writeData("countadd18", eighteenthTime:getObjectID())
      eighteenthTime:engageCombat(pPlayer)
      CreatureObject(pAddEighteen):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
end)

end
--------------------------------------------
--   30% health check
--------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.3))) and readData("ig88_boss:spawnState") == 7) then
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_02.cef", "head")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_03.cef", "")
end
--------------------------------------------
--   20% health check
--------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("ig88_boss:spawnState") == 7) then
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_02.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_03.cef", "head")
end
--------------------------------------------
--   10% health check
--------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("ig88_boss:spawnState") == 7) then
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_02.cef", "head")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_03.cef", "")
end
--------------------------------------------
--   5% health check near death
--------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.05)) or (bossAction <= (bossMaxAction * 0.05)) or (bossMind <= (bossMaxMind * 0.05))) and readData("ig88_boss:spawnState") == 7) then
      CreatureObject(pBoss):playEffect("sclienteffect/space_command/hp_astromech_effects_02.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_03.cef", "head")
      CreatureObject(pBoss):playEffect("clienteffect/cbt_bolt_hit_metal.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/ep3_avatar_core_overload.cef", "")
end
--------------------------------------------
--   1% health check for death
--------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.0001)) or (bossAction <= (bossMaxAction * 0.0001)) or (bossMind <= (bossMaxMind * 0.0001))) and readData("ig88_boss:spawnState") == 7) then
      spatialChat(pBoss, "Self Destruct!.")
      CreatureObject(pBoss):playEffect("sclienteffect/space_command/hp_astromech_effects_02.cef", "head")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_03.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/cbt_bolt_hit_vulcan.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/ig88_bomb_droid_explode.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/pl_force_absorb_self.cef", "")
      CreatureObject(pBoss):broadcastToServer("\\#63C8F9 A Group Has Cleared The IG-88 Boss Dungeon! Next Boss Encounter will be Avalible in 24 hours!.")
        end
      end
   return 0
end
----------------------------------------------
--   Added Active Area Check for broadcasting
----------------------------------------------
function ig88_boss:spawnActiveAreas()
local pSpawnArea = spawnSceneObject("dungeon2", "object/active_area.iff", 4000, 0, 6010, 0, 0, 0, 0, 0)
if (pSpawnArea ~= nil) then
local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(75)
          createObserver(ENTEREDAREA, "ig88_boss", "notifySpawnArea", pSpawnArea)
          createObserver(EXITEDAREA, "ig88_boss", "notifySpawnAreaLeave", pSpawnArea)
    end
end
function ig88_boss:notifySpawnArea(pActiveArea, pMovingObject, pBoss, pPlayer)
if (not SceneObject(pMovingObject):isCreatureObject()) then
  return 0
end
return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
    return 0
end
if (player:isImperial() or player:isNeutral() or player:isRebel()) then
          player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has Entered The Ig-88 Boss Dungeon!")
          player:sendSystemMessage("You Have Entered The Ig-88 Boss Dungeon!")
          end
      return 0
  end)
end
function ig88_boss:notifySpawnAreaLeave(pActiveArea, pMovingObject, pBoss, pPlayer)
if (not SceneObject(pMovingObject):isCreatureObject()) then
  return 0
end
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
if (player:isAiAgent()) then
  return 0
end
if (player:isImperial() or player:isNeutral() or player:isRebel()) then
      player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has left the Ig-88 Boss Dungeon!")
      player:sendSystemMessage("You Have Left The Ig-88 Boss Dungeon!")
      end
    return 0
  end)
end
