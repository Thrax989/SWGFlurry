isd_hangar = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("isd_hangar", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Boss ATAT")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function isd_hangar:start()
	if (isZoneEnabled("space_tatooine")) then
		self:spawnMobiles()		
 	end
end

function isd_hangar:spawnMobiles()
	local pTrigger = spawnMobile("space_tatooine", "blackguard_mini_atat", 3600, 0.1, 172.3, 284.1, 179, 281475109153544)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "isd_hangar", "notifyTriggerDead", pTrigger)
	end
	writeData("isd_hangar:spawnState",0)	
end

function isd_hangar:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("space_tatooine", "blackguard_atat", 0, 0.1, 172.3, 284.1, 179, 281475109153544) print("spawned ATAT")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("isd_hangar:spawnState", 1)
		writeData("isdhangar", oBoss:getObjectID())			
--		spatialChat(pBoss, "You step onto my Bridge without being invited, you are going out the airlock")	
		createObserver(DAMAGERECEIVED,"isd_hangar","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "isd_hangar", "notifyBossDead", pBoss)
		createEvent(1800000, "isd_hangar", "despawnBoss", pBoss)		
	end)
	return 0
end

function isd_hangar:notifyBossDead(pBoss, pPlayer)
	writeData("isd_hangar:spawnState", 0)
	return 0
end

function isd_hangar:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("isdboss"),true)
	writeData("isd_hangar:spawnState", 0)
	return 0
end

function isd_hangar:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -0.1
		local y1 = 325.3
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 55
		
		if distance > (maxDistance * maxDistance) then
	--		spatialChat(pBoss, "Good, run away like a coward")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "isd_hangar", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("isd_hangar:spawnState") == 1) then
	--		spatialChat(pBoss, "Every one of you will die here tonight, amongst the stars")
			writeData("isd_hangar:spawnState",2)
			local pAdd = spawnMobile("space_tatooine", "blackguard_atst", 0, -41.8, 172.3, 300.2, 90, 281475109153544)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAdd, "++TARGET LOCKED++")
	
			local pAddTwo = spawnMobile("space_tatooine", "blackguard_atst", 0, -41.8, 172.3, 306.2, 90, 281475109153544)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddTwo, "++TARGET LOCKED++")
		
			local pAddThree = spawnMobile("space_tatooine", "blackguard_atst", 0, -41.8, 172.3, 312.0, 90, 281475109153544)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
	--		spatialChat(pAddThree, "++TARGET LOCKED++")
		
			local pAddFour = spawnMobile("space_tatooine", "blackguard_atst", 0, -41.8, 172.3, 330.2, 90, 281475109153544)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddThree, "++TARGET LOCKED++")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("isd_hangar:spawnState") == 2) then
	--		spatialChat(pBoss,"How is this possible, where are my guards!!")
			writeData("isd_hangar:spawnState", 3)
			local pAddFive = spawnMobile("space_tatooine", "blackguard_atst", 0, -41.8, 172.3, 300.2, 90, 281475109153544)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddFive, "On behalf of the Blacksun, Im here to help you Grand Admiral")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("isd_hangar:spawnState") == 3) then
	--		spatialChat(pBoss,"++COM LINK++ all droids to the Bridge!")
			writeData("isd_hangar:spawnState", 4)
			local pAddSix = spawnMobile("space_tatooine", "blackguard_atst", 0, -41.8, 172.3, 300.2, 90, 281475109153544)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
	--		spatialChat(pAddSix, "++TARGET LOCKED++")
			local pAddSeven = spawnMobile("space_tatooine",  "blackguard_atst", 0, -41.8, 172.3, 312.0, 90, 281475109153544)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddSeven, "++TARGET LOCKED++")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("isd_hangar:spawnState") == 4) then
	--		spatialChat(pBoss, "How is this possible... it cant be real, my credits, my crew ....")
		end
	end
	return 0
end

function isd_hangar:resetScreenplayStatus(pPlayer)
	writeData("isd_hangar:spawnState", 1)
	return 0
end

-- End of prat fight





