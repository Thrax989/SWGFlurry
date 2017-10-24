isd_kenkirk = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("isd_kenkirk", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Boss Kenkirk")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function isd_kenkirk:start()
	if (isZoneEnabled("space_tatooine")) then
		self:spawnMobiles()		
 	end
end

function isd_kenkirk:spawnMobiles()
	local pTrigger = spawnMobile("space_tatooine", "blackguard_elite_trooper", 3600, 21.5, 170.6, 407.3, 179, 281475109153548)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "isd_kenkirk", "notifyTriggerDead", pTrigger)
	end
	writeData("isd_kenkirk:spawnState",0)	
end

function isd_kenkirk:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("space_tatooine", "commander_kenkirk", 0, 19.9, 170.6, 420.0, 179, 281475109153548) print("spawned kenkirk")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("isd_kenkirk:spawnState", 1)
		writeData("isdkenkirk", oBoss:getObjectID())			
		spatialChat(pBoss, "Where are your ID Badges? Are you cleared for this area?")	
		createObserver(DAMAGERECEIVED,"isd_kenkirk","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "isd_kenkirk", "notifyBossDead", pBoss)
		createEvent(1800000, "isd_kenkirk", "despawnBoss", pBoss)		
	end)
	return 0
end

function isd_kenkirk:notifyBossDead(pBoss, pPlayer)
	writeData("isd_kenkirk:spawnState", 0)
	return 0
end

function isd_kenkirk:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("isdboss"),true)
	writeData("isd_kenkirk:spawnState", 0)
	return 0
end

function isd_kenkirk:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 19.9
		local y1 = 420.0
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 20
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Renegades are retreating, stand down")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "isd_kenkirk", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("isd_kenkirk:spawnState") == 1) then
			spatialChat(pBoss, "Intruders at my position, send re-enforcements")
			writeData("isd_kenkirk:spawnState",2)
			local pAdd = spawnMobile("space_tatooine", "blackguard_commando", 0, 17.9, 170.6, 391.7, 179, 281475109153548)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "Here as requested sir")
	
			local pAddTwo = spawnMobile("space_tatooine", "blackguard_commando", 0, 21.5, 170.6, 391.7, 179, 281475109153548)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "danger close")
		
			local pAddThree = spawnMobile("space_tatooine", "blackguard_commando", 0, 18.6, 170.6, 407.3, 179, 281475109153548)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "opening fire as ordered")
		
			local pAddFour = spawnMobile("space_tatooine", "blackguard_commando", 0, 21.5, 170.6, 407.3, 179, 281475109153548)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "what the hell is that smell??")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("isd_kenkirk:spawnState") == 2) then
			spatialChat(pBoss,"need help, cant hold them here forever")
			writeData("isd_kenkirk:spawnState", 3)
			local pAddFive = spawnMobile("space_tatooine", "blackguard_commando", 0, 18.6, 170.6, 407.3, 179, 281475109153548)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "Reporting in sir")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("isd_kenkirk:spawnState") == 3) then
			spatialChat(pBoss,"++COM LINK++ Droids attack")
			writeData("isd_kenkirk:spawnState", 4)
			local pAddSix = spawnMobile("space_tatooine", "blackguard_droid_add", 0, 21.5, 170.6, 407.3, 179, 281475109153548)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "++TARGET LOCKED++")
			local pAddSeven = spawnMobile("space_tatooine",  "blackguard_droid_add", 0, 18.6, 170.6, 407.3, 179, 281475109153548)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "++TARGET LOCKED++")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("isd_kenkirk:spawnState") == 4) then
			spatialChat(pBoss, "Ive fallen, Grand Admiral, I failed to protect....")
		end
	end
	return 0
end

function isd_kenkirk:resetScreenplayStatus(pPlayer)
	writeData("isd_kenkirk:spawnState", 1)
	return 0
end

-- End of jeodu fight





