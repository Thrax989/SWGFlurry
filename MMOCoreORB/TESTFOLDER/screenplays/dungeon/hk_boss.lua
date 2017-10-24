hk_boss = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("hk_boss", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for HK47")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function hk_boss:start()
	if (isZoneEnabled("hk_encounter")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
 	end
end

function hk_boss:spawnSceneObjects()

	--cloner
	spawnSceneObject("hk_encounter", "object/building/military/outpost_cloning_facility_s03.iff", 175, 78, -182, 0, math.rad(-40) )
	spawnSceneObject("hk_encounter", "object/building/mustafar/structures/must_crashed_republic_ship_hull.iff", -66, 73, 151, 0, math.rad(-179) )
	spawnSceneObject("hk_encounter", "object/building/mustafar/structures/must_crashed_republic_ship_hull.iff", 159, 73, 218, 0, math.rad(-90) )
	spawnSceneObject("hk_encounter", "object/building/mustafar/structures/must_crashed_republic_ship_hull.iff", -11, 73, 231, 0, math.rad(-90) )
	spawnSceneObject("hk_encounter", "object/building/mustafar/structures/must_crashed_republic_ship_hull.iff", 41, 73, -124, 0, math.rad(-179) )
	spawnSceneObject("hk_encounter", "object/building/mustafar/structures/must_crashed_republic_ship_hull.iff", 169, 73, -243, 0, math.rad(-90) )
	spawnSceneObject("hk_encounter", "object/static/structure/military/military_wall_strong_imperial_32_style_01.iff", -64, 71, 101, 0, math.rad(90) )
	spawnSceneObject("hk_encounter", "object/static/structure/military/military_wall_strong_imperial_32_style_01.iff", -64, 71, 79, 0, math.rad(90) )
	spawnSceneObject("hk_encounter", "object/static/structure/military/military_wall_strong_imperial_32_style_01.iff", -63, 71, 198, 0, math.rad(90) )
	spawnSceneObject("hk_encounter", "object/static/structure/military/military_wall_strong_imperial_32_style_01.iff", -63, 71, 220, 0, math.rad(90) )
end

function hk_boss:spawnMobiles()

  spawnMobile("hk_encounter", "hk47_add", 900, 185, 78, 15, 170, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 202, 78, 24, -179, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 201, 78, 38, 170, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 213, 78, 54, -179, 0)
  spawnMobile("hk_encounter", "hk_elite_battle_droid", 900, 178, 78, 47, 145, 0)

  spawnMobile("hk_encounter", "hk47_add", 900, 133, 78, 138, -179, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 118, 78, 138, -179, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 106, 77, 166, -179, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 118, 78, 174, -179, 0)

  spawnMobile("hk_encounter", "hk47_add", 900, -13, 78, 176, 90, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -4, 78, 162, 90, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 10, 78, 147, 90, 0)
  spawnMobile("hk_encounter", "hk_elite_battle_droid", 900, -21, 78, 145, 90, 0)

  spawnMobile("hk_encounter", "hk47_add", 900, 27, 78, 2, 1, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -1, 78, 1, 1, 0)
  spawnMobile("hk_encounter", "hk_elite_battle_droid", 900, 10, 78, -16, 1, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 13, 77, -30, 1, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -9, 78, -28, 1, 0)

  spawnMobile("hk_encounter", "hk47_add", 900, -12, 78, -100, 1, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, 4, 78, -98, 1, 0)

  spawnMobile("hk_encounter", "hk47_add", 900, -67, 78, -170, 90, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -57, 78, -195, 75, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -89, 78, -219, 75, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -111, 78, -170, 90, 0)
  spawnMobile("hk_encounter", "hk_elite_battle_droid", 900, -81, 78, -176, 90, 0)

  spawnMobile("hk_encounter", "hk47_add", 900, -153, 78, -40, 160, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -174, 78, -48, 160, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -206, 77, -58, 95, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -216, 77, -32, 105, 0)
  spawnMobile("hk_encounter", "hk47_add", 900, -178, 78, -11, 160, 0)





	local pTrigger = spawnMobile("hk_encounter", "hk47_trigger", 5400, -173,78,110,-175,0)
	if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "hk_boss", "notifyTriggerDead", pTrigger)
	end
	writeData("hk_boss:spawnState",0)
	return 0

end

function hk_boss:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("hk_encounter", "hk47_boss", 0, -173,78,110,-175,0) print("spawned Acklay")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("hk_boss:spawnState", 1)
		writeData("hkboss", oBoss:getObjectID())
		spatialChat(pBoss, "Like so many others, you think you can defeat me?! Your fate will be the same as theirs.")
		createObserver(DAMAGERECEIVED,"hk_boss","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "hk_boss", "notifyBossDead", pBoss)
		createEvent(1800000, "hk_boss", "despawnBoss", pBoss)
	end)
	return 0
end

function hk_boss:notifyBossDead(pBoss, pPlayer)
--	createEvent(60000, "hk_boss", "removeFromHk", pPlayer, "")
	writeData("hk_boss:spawnState", 0)
	return 0
end



function hk_boss:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("hkboss"),true)
	writeData("hk_boss:spawnState", 0)
	return 0
end

function hk_boss:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -173
		local y1 = 110
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY()

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 90

		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Run away little Meat Bags")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)
			createEvent(3500, "hk_boss", "resetScreenplayStatus", pPlayer)

		end


		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("hk_boss:spawnState") == 1) then
			spatialChat(pBoss, "HKs!!! Show these meat bags what we can do!.")
			writeData("hk_boss:spawnState",2)
			local pAdd = spawnMobile("hk_encounter", "musty_lava_flea_queen", 0, -220,78,120,90,0)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAdd, "")

			local pAddTwo = spawnMobile("hk_encounter", "musty_lava_flea_queen", 0, -115,77,148,-90,0)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddTwo, "")

			local pAddThree = spawnMobile("hk_encounter", "hk47_add", 0, -205,78,161,-175,0)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "You wont stop us!")

			local pAddFour = spawnMobile("hk_encounter", "hk47_add", 0, -169,78,182,-175,0)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "Back up is here!")

		end

		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("hk_boss:spawnState") == 2) then
	--		spatialChat(pBoss,"")
			writeData("hk_boss:spawnState", 3)
			local pAddFive = spawnMobile("hk_encounter", "hk_elite_battle_droid", 0, -169,78,182,-175,0)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "Roger Roger *bzzzt* Enganging Targets")

		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("hk_boss:spawnState") == 3) then
	--		spatialChat(pBoss,"")
			writeData("hk_boss:spawnState", 4)
			local pAddSix = spawnMobile("hk_encounter", "hk47_add", 0, -169,78,182,-175,0)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "The intruders will pay!")
			local pAddSeven = spawnMobile("hk_encounter",  "hk47_add", 0, -205,78,161,-175,0)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddSeven, "")

		end

		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("hk_boss:spawnState") == 4) then
			spatialChat(pBoss, "Impressive... I will return again.. my HK Series Army can't be stopped!!")
		end
	end
	return 0
end

function hk_boss:removeFromHk(pPlayer)
	if (pPlayer == nil) then
		return 0
	end

	local playerID = SceneObject(pPlayer):getObjectID()

	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil then
				if CreatureObject(pMember):getParentID() > 1 then
					createEvent(5000, "hk_boss", "teleportPlayer", pMember, "")
				end
			end
		end
	else
		createEvent(5000, "hk_boss", "teleportPlayer", pPlayer, "")
	end
	return 0
end

function hk_boss:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return 0
	end

	local creatureID = SceneObject(pPlayer):getObjectID()
	local parentID = SceneObject(pPlayer):getParentID()
	if (readData(creatureID .. ":teleportedFromHk") == 1) then
		return 0
	end

	writeData(creatureID .. ":teleportedFromHk", 1)
	CreatureObject(pPlayer):teleport(154, 78, -183, 0)
	return 0
end

function hk_boss:resetScreenplayStatus(pPlayer)
	writeData("hk_boss:spawnState", 1)
	return 0
end




