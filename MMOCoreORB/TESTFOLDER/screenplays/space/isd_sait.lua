isd_sait = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("isd_sait", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Boss Sait")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function isd_sait:start()
	if (isZoneEnabled("space_tatooine")) then
		self:spawnMobiles()		
 	end
end

function isd_sait:spawnMobiles()
	local pTrigger = spawnMobile("space_tatooine", "admiral_sait", 3600, -0.1, 453.6, 325.3, 179, 281475109153596)
	if (pTrigger ~= nil ) then	
        	createObserver(OBJECTDESTRUCTION, "isd_sait", "notifyTriggerDead", pTrigger)
	end
	writeData("isd_sait:spawnState",0)	
end

function isd_sait:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("space_tatooine", "grandadmiral_sait", 0, -0.1, 453.6, 325.3, 179, 281475109153596) print("spawned Sait")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("isd_sait:spawnState", 1)
		writeData("isdsait", oBoss:getObjectID())			
		spatialChat(pBoss, "You step onto my Bridge without being invited, you are going out the airlock")	
		createObserver(DAMAGERECEIVED,"isd_sait","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "isd_sait", "notifyBossDead", pBoss)
		createEvent(1800000, "isd_sait", "despawnBoss", pBoss)		
	end)
	return 0
end

function isd_sait:notifyBossDead(pBoss, pPlayer)
	writeData("isd_sait:spawnState", 0)
	return 0
end

function isd_sait:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("isdboss"),true)
	writeData("isd_sait:spawnState", 0)
	return 0
end

function isd_sait:boss_damage(pBoss, pPlayer)


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
		local maxDistance = 20
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Good, run away like a coward")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "isd_sait", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("isd_sait:spawnState") == 1) then
			spatialChat(pBoss, "Every one of you will die here tonight, amongst the stars")
			writeData("isd_sait:spawnState",2)
			local pAdd = spawnMobile("space_tatooine", "blackguard_droid_add", 0, 9.6, 453.6, 330.3, 179, 281475109153596)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "++TARGET LOCKED++")
	
			local pAddTwo = spawnMobile("space_tatooine", "blackguard_droid_add", 0, 7.6, 453.6, 325.0, 179, 281475109153596)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "++TARGET LOCKED++")
		
			local pAddThree = spawnMobile("space_tatooine", "blackguard_droid_add", 0, -3.2, 453.6, 322.0, 179, 281475109153596)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "++TARGET LOCKED++")
		
			local pAddFour = spawnMobile("space_tatooine", "blackguard_droid_add", 0, -9.6, 453.6, 328.7, 179, 281475109153596)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "++TARGET LOCKED++")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("isd_sait:spawnState") == 2) then
			spatialChat(pBoss,"How is this possible, where are my guards!!")
			writeData("isd_sait:spawnState", 3)
			local pAddFive = spawnMobile("space_tatooine", "boba_fett_pve", 0, 0.3, 453.6, 321.3, 179, 281475109153596)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "On behalf of the Blacksun, Im here to help you Grand Admiral")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("isd_sait:spawnState") == 3) then
			spatialChat(pBoss,"++COM LINK++ all droids to the Bridge!")
			writeData("isd_sait:spawnState", 4)
			local pAddSix = spawnMobile("space_tatooine", "blackguard_droid_add", 0, 9.6, 453.6, 330.3, 179, 281475109153596)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "++TARGET LOCKED++")
			local pAddSeven = spawnMobile("space_tatooine",  "blackguard_droid_add", 0, -9.6, 453.6, 328.7, 179, 281475109153596)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "++TARGET LOCKED++")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("isd_sait:spawnState") == 4) then
			spatialChat(pBoss, "How is this possible... it cant be real, my credits, my crew ....")
		end
	end
	return 0
end

function isd_sait:resetScreenplayStatus(pPlayer)
	writeData("isd_sait:spawnState", 1)
	return 0	
end

-- End of prat fight





