droid_factoryScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("droid_factoryScreenPlay" ,true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Droid Factory")

function droid_factoryScreenPlay :start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
	end
end


function droid_factoryScreenPlay:spawnMobiles()

	local pCollector = spawnMobile("mustafar", "eg6_port", 120, -1.3, 0.0, 3.4, -48, 281475789827823)
	local collector = LuaCreatureObject(pCollector)
	collector:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#FF0000Exit Droid")	
	createObserver(OBJECTRADIALUSED, "droid_factoryScreenPlay", "teleportOut", pCollector)
	if (pCollecter~= nil) then 
		return
	end
-- factory_battle_droid
-- factory_s_battle_droid
-- factory_devastator_droid (mini boss)
-- factory_droid_boss

-- [hallway 1]
spawnMobile("mustafar", "factory_battle_droid", 200, -0.1, -8.0, 24.8, 179, 281475789827823)
spawnMobile("mustafar", "factory_battle_droid", 200, 5.6, -8.0, 31.0, -88, 281475789827823)
spawnMobile("mustafar", "factory_battle_droid", 200, 20.2, -12.0, 31.0, -93, 281475789827823)

-- [mainroom 27 1st tier]
spawnMobile("mustafar", "factory_battle_droid", 200, 26.2, -12.0, 11.6, 0, 281475789827849)
spawnMobile("mustafar", "factory_battle_droid", 200, 27.8, -12.0, -21.7, -24, 281475789827849)
spawnMobile("mustafar", "factory_s_battle_droid",200,55.6, -12.0, -22.8, -12, 281475789827849)
spawnMobile("mustafar", "factory_battle_droid", 200, 84.9, -12.0, -21.8, -56, 281475789827849)
spawnMobile("mustafar", "factory_battle_droid", 200, 85.7, -12.0, -21.8, -56, 281475789827849)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 84.3, -12.0, 36.0, -96, 281475789827849)
spawnMobile("mustafar", "factory_battle_droid", 200, 53.4, -12.0, 36.8, -88, 281475789827849)

-- [small room 23] 
spawnMobile("mustafar", "factory_s_battle_droid", 200, 31.8, -12.0, 54.6, -179, 281475789827845)

-- [small room 24]
spawnMobile("mustafar", "factory_s_battle_droid", 200, 14.1, -12.0, -16.9, 88, 281475789827846)

--[small room 25]
spawnMobile("mustafar", "factory_battle_droid", 200, 27.6, -12.0, -34.8, 27, 281475789827847)
spawnMobile("mustafar", "factory_battle_droid", 200, 37.6, -12.0, -35.0, -37, 281478789827847)

-- [small room 26]
spawnMobile("mustafar", "factory_battle_droid", 200, 80.0, -12.0, -33.2, 1, 281475789827848)

--[small room 21]
spawnMobile("mustafar", "factory_battle_droid", 200, 97.9, -12.0, 31.0, -89, 281475789827843)

--[small room 22]
spawnMobile("mustafar", "factory_battle_droid", 200, 75.1, -12.0, 49.0, 138, 281475789827844)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 85.5, -12.0, 49.1, -143, 281475789827844)

-- [hallway 2]
spawnMobile("mustafar", "factory_battle_droid", 200, 91.8, -12.0, -16.9, -85, 281475789827824)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 103.5, -16.8, -16.9, -88, 281475789827824)
spawnMobile("mustafar", "factory_battle_droid", 200, 119.6, -20.0, -17.1, -92, 281478789827824)

-- [small room 3]
spawnMobile("mustafar", "factory_battle_droid", 200, 119.8, -20.0, -1.8, 176, 281475789827825)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 117.0, -20.0, 18.6, -157, 281475789827825)

-- [small room 4] mini boss
spawnMobile("mustafar", "factory_devastator_droid", 400, 102.3, -20.0, -1.0, 88, 281475789827826)

-- [hallway 5]
spawnMobile("mustafar", "factory_battle_droid", 200, 104.0, -20.0, 14.9, 90, 281475789827827)
spawnMobile("mustafar", "factory_battle_droid", 200, 103.9, -22.7, 30.7, 177, 281475789827827)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 104.1, -28.0, 50.9, 177, 281475789827827)

-- [small room 6]
spawnMobile("mustafar", "factory_s_battle_droid", 200, 118.8, -28.0, 48.9, -64, 281475789827828)
spawnMobile("mustafar", "factory_battle_droid", 200, 124.3, -28.0, 54.6, -119, 281475789827828)
spawnMobile("mustafar", "factory_battle_droid", 200, 124.5, -28.0, 63.1, -111, 281475789827828)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 118.7, -28.0, 71.7, -178, 281475789827828)

-- [hallway 7]
spawnMobile("mustafar", "factory_battle_droid", 200, 103.6, -28.9, 66.9, 93, 281475789827829)
spawnMobile("mustafar", "factory_battle_droid", 200, 94.3, -34.0, 67.1, 86, 281475789827829)
spawnMobile("mustafar", "factory_battle_droid", 200, 81.0, -36.0, 67.0, 92, 281475789827829)

-- [small room 8]
spawnMobile("mustafar", "factory_s_battle_droid", 200, 80.0, -36.0, 47.5, 0, 281475789827830)

-- [mainroom 27 2nd tier]
spawnMobile("mustafar", "factory_battle_droid", 200, 79.9, -36.0, 30.0, 1, 281475789827849)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 80.1, -36.0, 8.3, 0, 281475789827849)
spawnMobile("mustafar", "factory_battle_droid", 200, 79.9, -36.0, -19.1, 3, 281475789827849)

-- [medium room 10]
spawnMobile("mustafar", "factory_battle_droid", 200, 73.0, -38.0, -53.1, 33, 281475789827832)
spawnMobile("mustafar", "factory_s_battle_droid",200, 52.6, -38.0, -45.4, 116, 281475789827832)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 47.2, -38.0, -58.5, 86, 281475789827832)
spawnMobile("mustafar", "factory_battle_droid", 200, 64.0, -38.0, -66.6, -1, 281475789827832)

-- [small room 11]
spawnMobile("mustafar", "factory_battle_droid", 200, 80.0, -38.0, -78.6, 3, 281475789827833)

-- small room 12]
spawnMobile("mustafar", "factory_s_battle_droid", 200, 47.9, -38.0, -78.4, -2, 281475789827834)

-- [hallway 13]
spawnMobile("mustafar", "factory_s_battle_droid", 200, 27.7, -38.0, -61.0, 90, 281475789827835)
spawnMobile("mustafar", "factory_battle_droid", 200, 16.0, -38.0, -49.5, 178, 281475789827835)

-- [small room 14]
spawnMobile("mustafar", "factory_battle_droid", 200, 15.9, -36.0, -33.0, 178, 281475789827836)

-- [mainroom 27 3rd tier]
spawnMobile("mustafar", "factory_battle_droid", 200, 31.7, -36.0, -21.9, 179, 281475789827849)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 32.0, -36.0, 7.6, 0, 281475789827849)
spawnMobile("mustafar", "factory_battle_droid", 200, 32.1, -36.0, 31.8, 0, 281475789827849)

-- [small room 16] mini boss
spawnMobile("mustafar", "factory_devastator_droid", 400, 32.1, -36.0, 56.5, -172, 281475789827838)

-- [hallway 17 ]
spawnMobile("mustafar", "factory_battle_droid", 200, 5.8, -29.7, 49.0, 90, 281475789827839)
spawnMobile("mustafar", "factory_battle_droid", 200, -11.3, -28.0, 49.1, 94, 281475789827839)

-- [medium room 18]
spawnMobile("mustafar", "factory_battle_droid", 200, -11.4, -28.0, 49.4, 92, 281475789827840)
spawnMobile("mustafar", "factory_s_battle_droid", 200, -11.5, -28.0, 38.3, 28, 281475789827840)
spawnMobile("mustafar", "factory_battle_droid", 200, -19.6, -28.0, 38.0, 28, 281475789827840)
spawnMobile("mustafar", "factory_s_battle_droid", 200, -19.7, -28.0, 43.8, 87, 281475789827840)
spawnMobile("mustafar", "factory_battle_droid", 200, -28.2, -28.0, 49.6, 90, 281475789827840)
spawnMobile("mustafar", "factory_s_battle_droid", 200, -28.2, -28.0, 32.5, 93, 281475789827840)
spawnMobile("mustafar", "factory_battle_droid", 200, -28.3, -28.0, 13.0, 93, 281475789827840)
spawnMobile("mustafar", "factory_s_battle_droid", 200, -28.5, -28.0, 1.3, 71, 281475789827840)
spawnMobile("mustafar", "factory_battle_droid", 200, -11.1, -28.0, 1.1, -4, 281475789827840)
spawnMobile("mustafar", "factory_s_battle_droid", 200, -11.3, -28.0, 12.4, -4, 281475789827840)

-- [hallway 19]
spawnMobile("mustafar", "factory_battle_droid", 200, 5.9, -28.0, 14.9, -102, 281475789827841)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 15.5, -25.1, 15.0, -90,  281475789827841)


-- [mainroom 27 4th tier]
spawnMobile("mustafar", "factory_battle_droid", 200, 30.9, -24.0, 15.1, 90, 281475789827849)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 57.8, -24.0, 15.1, -89, 281475789827849)
spawnMobile("mustafar", "factory_s_battle_droid", 200, 63.4, -24.0, -1.1, 88, 281475789827849)
spawnMobile("mustafar", "factory_battle_droid", 200, 37.0, -24.0, -0.9, 89, 281475789827849)


-- [central room 28] mini boss

spawnMobile("mustafar", "factory_devastator_droid", 400, 59.6, -24.0, 7.0, 93, 281475789827850)

-- [small room 20] main boss

	local pTrigger = spawnMobile("mustafar", "factory_s_battle_droid", 3600, 11.2, -24.0, -0.9, 89, 281475789827842)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "droid_factoryScreenPlay", "notifyTriggerDead", pTrigger)
	end
	writeData("droid_factoryScreenPlay:spawnState",0)	
	return 0
end

function droid_factoryScreenPlay:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("mustafar", "factory_droid_boss", 0, 11.2, -24.0, -0.9, 89, 281475789827842) print("spawned Doom Bringer")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("droid_factoryScreenPlay:spawnState", 1)
		writeData("droid_boss", oBoss:getObjectID())			
		spatialChat(pBoss, "How dare you enter this facility without authorization. Prepare to die scum")	
		createObserver(DAMAGERECEIVED,"droid_factoryScreenPlay","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "droid_factoryScreenPlay", "notifyBossDead", pBoss)
		createEvent(1800000, "droid_factoryScreenPlay", "despawnBoss", pBoss)		
	end)
	return 0
end

function droid_factoryScreenPlay:notifyBossDead(pBoss, pPlayer)
	createEvent(6000, "droid_factoryScreenPlay", "despawnAdd", pAdd)
	writeData("droid_factoryScreenPlay:spawnState", 0)
	return 0
end

function droid_factoryScreenPlay:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("droid_boss"),true)
	createEvent(6000, "droid_factoryScreenPlay", "despawnAdd", pAdd)
	writeData("droid_factoryScreenPlay:spawnState", 0)
	return 0
end
function ig88_boss:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	forcePeace(pAddSix)
	forcePeace(pAddSeven)
	spHelper.destroy(readData("countadd"),true)
	spHelper.destroy(readData("countadd2"),true)
	spHelper.destroy(readData("countadd3"),true)
	spHelper.destroy(readData("countadd4"),true)
	spHelper.destroy(readData("countadd5"),true)
	spHelper.destroy(readData("countadd6"),true)
	spHelper.destroy(readData("countadd7"),true)
	return 0
end

function droid_factoryScreenPlay:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 11.2
		local y1 = -0.9
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 8
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Why do they like to run away")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "droid_factoryScreenPlay", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("droid_factoryScreenPlay:spawnState") == 1) then
			spatialChat(pBoss, "++open coms++ Send in the troops")
			writeData("droid_factoryScreenPlay:spawnState",2)
			local pAdd = spawnMobile("mustafar", "factory_s_battle_droid", 0, 17.0, -24.0, -4.1, -43, 281475789827842)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("countadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "")
	
			local pAddTwo = spawnMobile("mustafar", "factory_s_battle_droid", 0, 17.3, -24.0, 2.5, -13.2, 281475789827842)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("countadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "")
		
			local pAddThree = spawnMobile("mustafar", "factory_battle_droid", 0, 9.1, -24.0, 4.0, 121, 281475789827842)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("countadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "")

			local pAddFour = spawnMobile("mustafar", "factory_battle_droid", 0, 8.1, -24.0, 4.0, 121, 281475789827842)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("countadd4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "target locked")	
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("droid_factoryScreenPlay:spawnState") == 2) then
			spatialChat(pBoss,"Is this the best you got? come on....")
			writeData("droid_factoryScreenPlay:spawnState", 3)
			local pAddFive = spawnMobile("mustafar", "factory_s_battle_droid", 0, 9.1, -24.0, -6.0, 51, 281475789827842)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("countadd5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "")
		end

		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("droid_factoryScreenPlay:spawnState") == 3) then
			spatialChat(pBoss,"IMPOSSIBLE! MORE DROIDS!!!")
			writeData("droid_factoryScreenPlay:spawnState", 4)
			local pAddSix = spawnMobile("mustafar", "factory_s_battle_droid", 0, 14.2, -24.0, -4.3, -2, 281475789827842)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("countadd6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "")

			local pAddSeven = spawnMobile("mustafar",  "factory_s_battle_droid", 0, 13.9, -24.0, 2.4, 179, 281475789827842)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("countadd7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("droid_factoryScreenPlay:spawnState") == 4) then
			spatialChat(pBoss, "help")
		end
	end
	return 0
end

function droid_factoryScreenPlay:resetScreenplayStatus(pPlayer)
	writeData("droid_factoryScreenPlay:spawnState", 1)
	return 0	
end

function droid_factoryScreenPlay:teleportOut(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("mustafar", 3478.3, 65.3, -1016.1, 0)
	return 0
end
