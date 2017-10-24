ig88_boss = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("ig88_boss", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for IG-88")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function ig88_boss:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()		
 	end
end

function ig88_boss:spawnMobiles()
	local pTrigger = spawnMobile("lok", "ig_mouse_droid", 3600, 0, 0, 0, -99, 281475698965698)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "ig88_boss", "notifyTriggerDead", pTrigger)
	end
	writeData("ig88_boss:spawnState",0)	
	return 0
end

function ig88_boss:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("lok", "ig88_npc_boss", 0, 0, 0, -18, 0, 281475698965698) print("spawned IG-88")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("ig88_boss:spawnState", 1)
		writeData("ig88boss", oBoss:getObjectID())			
		spatialChat(pBoss, "Intruder Alert Activating Defense Systems")	
		createObserver(DAMAGERECEIVED,"ig88_boss","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "ig88_boss", "notifyBossDead", pBoss)
		createEvent(1800000, "ig88_boss", "despawnBoss", pBoss)		
	end)
	return 0
end

function ig88_boss:notifyBossDead(pBoss, pPlayer)
	writeData("ig88_boss:spawnState", 0)
	createEvent(6000, "ig88_boss", "despawnAdd", pAdd)
	return 0
end

function ig88_boss:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("ig88boss"),true)
	writeData("ig88_boss:spawnState", 0)
	createEvent(6000, "ig88_boss", "despawnAdd", pAdd)
	return 0
end

function ig88_boss:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, pAddNine, pAddTen, pAddEleven, pAddTwelve, pAddThirteen, pAddFourteen, pAddFifteen, pAddSixteen, pAddSeventeen, pAddEighteen, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	forcePeace(pAddSix)
	forcePeace(pAddSeven)
	forcePeace(pAddEight)
	forcePeace(pAddNine)
	forcePeace(pAddTen)
	forcePeace(pAddEleven)
	forcePeace(pAddTwelve)
	forcePeace(pAddThirteen)
	forcePeace(pAddFourteen)
	forcePeace(pAddFifteen)
	forcePeace(pAddSixteen)
	forcePeace(pAddSeventeen)
	forcePeace(pAddEighteen)
--	forcePeace(pAddNineteen)
--	forcePeace(pAddTwenty)
--	forcePeace(pAddTwentyone)
--	forcePeace(pAddTwentytwo)
	spHelper.destroy(readData("countadd"),true)
	spHelper.destroy(readData("countadd2"),true)
	spHelper.destroy(readData("countadd3"),true)
	spHelper.destroy(readData("countadd4"),true)
	spHelper.destroy(readData("countadd5"),true)
	spHelper.destroy(readData("countadd6"),true)
	spHelper.destroy(readData("countadd7"),true)
	spHelper.destroy(readData("countadd8"),true)
	spHelper.destroy(readData("countadd9"),true)
	spHelper.destroy(readData("countadd10"),true)
	spHelper.destroy(readData("countadd11"),true)
	spHelper.destroy(readData("countadd12"),true)
	spHelper.destroy(readData("countadd13"),true)
	spHelper.destroy(readData("countadd14"),true)
	spHelper.destroy(readData("countadd15"),true)
	spHelper.destroy(readData("countadd16"),true)
	spHelper.destroy(readData("countadd17"),true)
	spHelper.destroy(readData("countadd18"),true)
--	spHelper.destroy(readData("countadd19"),true)
--	spHelper.destroy(readData("countadd20"),true)
--	spHelper.destroy(readData("countadd21"),true)
--	spHelper.destroy(readData("countadd22"),true)

	return 0
end

function ig88_boss:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 0.0
		local y1 = -18.0
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 75
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Systems powering down")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "ig88_boss", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("ig88_boss:spawnState") == 1) then
			spatialChat(pBoss, "Enemy Survival Chance = 87%")
			writeData("ig88_boss:spawnState",2)
			local pAdd = spawnMobile("lok", "ig_battle_droid", 0, -20.0, 0.0, 43.2, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("countadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "target locked")
	
			local pAddTwo = spawnMobile("lok", "ig_battle_droid", 0, 20.0, 0.0, 43.2, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("countadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "target locked")
		
			local pAddThree = spawnMobile("lok", "ig_battle_droid", 0, 20.0, 0.0, -23.0, 0, 281475698965698)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("countadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "target locked")
		
			local pAddFour = spawnMobile("lok", "ig_battle_droid", 0, -20.0, 0.0, -23.0, 0, 281475698965698)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("countadd4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "target locked")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("ig88_boss:spawnState") == 2) then
			spatialChat(pBoss,"Enemy Survival Chance = 73%")
			writeData("ig88_boss:spawnState", 3)
			local pAddFive = spawnMobile("lok", "ig_droideka", 0, -20.0, 0.0, 43.2, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("countadd5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "target locked")
	
			local pAddSix = spawnMobile("lok", "ig_droideka", 0, 20.0, 0.0, 43.2, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("countadd6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "target locked")
		
			local pAddSeven = spawnMobile("lok", "ig_droideka", 0, 20.0, 0.0, -23.0, 0, 281475698965698)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("countadd7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddSeven, "target locked")
		
			local pAddEight = spawnMobile("lok",  "ig_droideka", 0, -20.0, 0.0, -23.0, 0, 281475698965698)
			ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
			writeData("countadd8", eighthTime:getObjectID())
				eighthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddEight, "Target Lock")		
		end	

		if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("ig88_boss:spawnState") == 3) then
			spatialChat(pBoss,"Enemy Survival Chance = 53%")
			writeData("ig88_boss:spawnState", 4)
			local pAddNine = spawnMobile("lok", "ig_droideka", 0, -20.0, 0.0, 43.2, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddNine, function(ninthTime)
			writeData("countadd9", ninthTime:getObjectID())
				ninthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddNine, "target locked")
	
			local pAddTen = spawnMobile("lok", "ig_droideka", 0, 20.0, 0.0, 43.2, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddTen, function(tenthTime)
			writeData("countadd10", tenthTime:getObjectID())
				tenthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTen, "target locked")
		
			local pAddEleven = spawnMobile("lok", "ig_droideka", 0, 20.0, 0.0, -23.0, 0, 281475698965698)
			ObjectManager.withCreatureObject(pAddEleven, function(eleventhTime)
			writeData("countadd11", eleventhTime:getObjectID())
				eleventhTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddEleven, "target locked")
		
			local pAddTwelve = spawnMobile("lok",  "ig_droideka", 0, -20.0, 0.0, -23.0, 0, 281475698965698)
			ObjectManager.withCreatureObject(pAddTwelve, function(twelthTime)
			writeData("countadd12", twelthTime:getObjectID())
				twelthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwelve, "Target Lock")		
		end	

		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("ig88_boss:spawnState") == 4) then
			spatialChat(pBoss,"Enemy Survival Chance = 42%")
			writeData("ig88_boss:spawnState", 5)
			local pAddThirteen = spawnMobile("lok", "ig_droideka", 0, -20.0, 0.0, 43.2, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddThirteen, function(thirteenthTime)
			writeData("countadd13", thirteenthTime:getObjectID())
				thirteenthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThirteen, "target locked")
	
			local pAddFourteen = spawnMobile("lok", "ig_droideka", 0, 20.0, 0.0, 43.2, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddFourteen, function(fourteenthTime)
			writeData("countadd14", fourteenthTime:getObjectID())
				fourteenthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFourteen, "target locked")
		
			local pAddFifteen = spawnMobile("lok", "ig_droideka", 0, 20.0, 0.0, -23.0, 0, 281475698965698)
			ObjectManager.withCreatureObject(pAddFifteen, function(fifteenthTime)
			writeData("countadd15", fifteenthTime:getObjectID())
				fifteenthTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddFifteen, "target locked")
		
			local pAddSixteen = spawnMobile("lok",  "ig_droideka", 0, -20.0, 0.0, -23.0, 0, 281475698965698)
			ObjectManager.withCreatureObject(pAddSixteen, function(sixteenthTime)
			writeData("countadd16", sixteenthTime:getObjectID())
				sixteenthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSixteen, "Target Lock")		
		end	

		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("ig88_boss:spawnState") == 5) then
			spatialChat(pBoss,"Enemy Survival Chance = 17%")
			writeData("ig88_boss:spawnState", 6)
			local pAddSeventeen = spawnMobile("lok", "ig_elite_battle_droid", 0, -13.0, 0.0, 10.0, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddSeventeen, function(seventeenthTime)
			writeData("countadd17", seventeenthTime:getObjectID())
				seventeenthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSeventeen, "Target Lock")
			local pAddEighteen = spawnMobile("lok",  "ig_elite_battle_droid", 0, 13.0, 0.0, 10.0, 177, 281475698965698)
			ObjectManager.withCreatureObject(pAddEighteen, function(eighteenthTime)
			writeData("countadd18", eighteenthTime:getObjectID())
				eighteenthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddEighteen, "Target Lock")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("ig88_boss:spawnState") == 6) then
			spatialChat(pBoss, "ERROR COMMAND SYSTEM OFFLINE tokenizer = incomplete type, index = -1, delimeter = incomplete type command = incomplete type fullCommand = incomplete type arguments = incomplete type Core::run Core 21 No locals.")
		end
	end
	return 0
end

function ig88_boss:resetScreenplayStatus(pPlayer)
	writeData("ig88_boss:spawnState", 1)
	return 0	
end




