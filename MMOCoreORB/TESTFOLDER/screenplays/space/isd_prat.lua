isd_prat = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("isd_prat", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Boss Prat")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function isd_prat:start()
	if (isZoneEnabled("space_tatooine")) then
		self:spawnMobiles()		
 	end
end

function isd_prat:spawnMobiles()
	local pTrigger = spawnMobile("space_tatooine", "blackguard_interrogator_droid", 3600, -54.4, 172.1, 332.5, 0, 281475109153549)
	if (pTrigger ~= nil ) then	
        	createObserver(OBJECTDESTRUCTION, "isd_prat", "notifyTriggerDead", pTrigger)
	end
	writeData("isd_prat:spawnState",0)	
end

function isd_prat:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("space_tatooine", "watch_captain_prat", 0, -55.6, 172.1, 332.5, 0, 281475109153549) print("spawned Prat")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("isd_prat:spawnState", 1)
		writeData("isdprat", oBoss:getObjectID())			
		spatialChat(pBoss, "What is that god awfull smell????")	
		createObserver(DAMAGERECEIVED,"isd_prat","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "isd_prat", "notifyBossDead", pBoss)
		createEvent(1800000, "isd_prat", "despawnBoss", pBoss)		
	end)
	return 0
end

function isd_prat:notifyBossDead(pBoss, pPlayer)
	writeData("isd_prat:spawnState", 0)
	return 0
end

function isd_prat:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("isdboss"),true)
	writeData("isd_prat:spawnState", 0)
	return 0
end

function isd_prat:boss_damage(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -55.6
		local y1 = 332.5
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 25
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "retreating are we? Good choice")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "isd_prat", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("isd_prat:spawnState") == 1) then
			spatialChat(pBoss, "++COM++ Backup Requested!!")
			writeData("isd_prat:spawnState",2)
			local pAdd = spawnMobile("space_tatooine", "blackguard_droid_add", 0, -55.7, 172.1, 349.8, 16, 281475109153549)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "++TARGET LOCKED++")
	
			local pAddTwo = spawnMobile("space_tatooine", "blackguard_droid_add", 0, -53.0, 172.1, 349.3, 16, 281475109153549)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "++TARGET LOCKED++")
		
			local pAddThree = spawnMobile("space_tatooine", "blackguard_droid_add", 0, -39.7, 171.1, 367.5, 59, 281475109153549)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "++TARGET LOCKED++")
		
			local pAddFour = spawnMobile("space_tatooine", "blackguard_droid_add", 0, -39.2, 171.1, 365.4, 68, 281475109153549)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "++TARGET LOCKED++")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("isd_prat:spawnState") == 2) then
			spatialChat(pBoss,"I need backup, they are winning!!")
			writeData("isd_prat:spawnState", 3)
			local pAddFive = spawnMobile("space_tatooine", "blackguard_commando", 0, -57.4, 172.1, 332.5, 0, 281475109153549)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "Reporting in sir")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("isd_prat:spawnState") == 3) then
			spatialChat(pBoss,"++COM LINK++ MORE!")
			writeData("isd_prat:spawnState", 4)
			local pAddSix = spawnMobile("space_tatooine", "blackguard_droid_add", 0, -39.7, 171.1, 367.5, 59, 281475109153549)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "++TARGET LOCKED++")
			local pAddSeven = spawnMobile("space_tatooine",  "blackguard_droid_add", 0, -55.7, 172.1, 349.8, 16, 281475109153549)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "++TARGET LOCKED++")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("isd_prat:spawnState") == 4) then
			spatialChat(pBoss, "Which one of you ....")
		end
	end
	return 0
end

function isd_prat:resetScreenplayStatus(pPlayer)
	writeData("isd_prat:spawnState", 1)
	return 0	
end

-- End of prat fight





