avatar_boss = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("avatar_boss", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Avatar Main Boss")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function avatar_boss:start()
	if (isZoneEnabled("space_lok")) then
		self:spawnMobiles()		
 	end
end

function avatar_boss:spawnMobiles()
	local pTrigger = spawnMobile("space_lok", "salvage_bandit", 3600, -234.8, -1.0, -26.8, -99, 281475247980790)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "avatar_boss", "notifyTriggerDead", pTrigger)
	end
	writeData("avatar_boss:spawnState",0)	
	return 0
end

function avatar_boss:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("space_lok", "avatar_boss_one", 0, -238.3, -1.0, -32.6, 0, 281475247980790) print("spawned Count Jancet")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("avatar_boss:spawnState", 1)
		writeData("avatarboss", oBoss:getObjectID())			
		spatialChat(pBoss, "Looking down upon Nym's despot of a planet, and being in the heart of this installation with 3 Imperial Star Destroyers above you, how did you plan to escape from us?")	
		createObserver(DAMAGERECEIVED,"avatar_boss","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "avatar_boss", "notifyBossDead", pBoss)
		createEvent(1800000, "avatar_boss", "despawnBoss", pBoss)		
	end)
	return 0
end

function avatar_boss:notifyBossDead(pBoss, pPlayer)
	writeData("avatar_boss:spawnState", 0)
	return 0
end

function avatar_boss:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("avatarboss"),true)
	writeData("avatar_boss:spawnState", 0)
	return 0
end

function avatar_boss:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	forcePeace(pAddSix)
	forcePeace(pAddSeven)
	forcePeace(pAddEight)
	spHelper.destroy(readData("countadd"),true)
	spHelper.destroy(readData("countadd2"),true)
	spHelper.destroy(readData("countadd3"),true)
	spHelper.destroy(readData("countadd4"),true)
	spHelper.destroy(readData("countadd5"),true)
	spHelper.destroy(readData("countadd6"),true)
	spHelper.destroy(readData("countadd7"),true)
	spHelper.destroy(readData("countadd8"),true)
	return 0
end

function avatar_boss:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -238.3
		local y1 = -32.6
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 55
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Security, make sure they do not escape.")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "avatar_boss", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("avatar_boss:spawnState") == 1) then
			spatialChat(pBoss, "Your screams of death will go unheard")
			writeData("avatar_boss:spawnState",2)
			local pAdd = spawnMobile("space_lok", "pit_droid_add", 0, -227.9, 0.0, -2.1, 177, 281475247980790)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("countadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "target locked")
	
			local pAddTwo = spawnMobile("space_lok", "pit_droid_add", 0, -221.6, 0.0, -49.5, -7, 281475247980790)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("countadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "target locked")
		
			local pAddThree = spawnMobile("space_lok", "pit_droid_add", 0, -203.9, 0.0, -42.7, -79, 281475247980790)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("countadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "target locked")
		
			local pAddFour = spawnMobile("space_lok", "pit_droid_add", 0, -206.2, 0.0, -3.9, -121, 281475247980790)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("countadd4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "target locked")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("avatar_boss:spawnState") == 2) then
			spatialChat(pBoss,"Fortune fancies the lucky, and the ignorant. Your group is the latter")
			writeData("avatar_boss:spawnState", 3)
			local pAddFive = spawnMobile("space_lok", "droid_lord", 0, -227.9, 0.0, -2.1, 177, 281475247980790)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("countadd5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "Target Lock")
			local pAddSix = spawnMobile("space_lok", "droid_lord", 0, -221.6, 0.0, -49.5, -7, 281475247980790)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("countadd6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "Target Lock")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("avatar_boss:spawnState") == 3) then
			spatialChat(pBoss,"Death in space is quiet and quick, you should have left when you had that chance")
			writeData("avatar_boss:spawnState", 4)
			local pAddSeven = spawnMobile("space_lok", "droid_lord", 0, -227.9, 0.0, -2.1, 177, 281475247980790)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("countadd7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSeven, "Target Lock")
			local pAddEight = spawnMobile("space_lok",  "droid_lord", 0, -221.6, 0.0, -49.5, -7, 281475247980790)
			ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
			writeData("countadd8", eighthTime:getObjectID())
				eighthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddEight, "Target Lock")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.00)) or (bossAction <= (bossMaxAction * 0.00)) or (bossMind <= (bossMaxMind * 0.00))) and readData("avatar_boss:spawnState") == 4) then
			spatialChat(pBoss, "I will be reborn, and have my revenge")
		end
	end
	return 0
end

function avatar_boss:resetScreenplayStatus(pPlayer)
	writeData("avatar_boss:spawnState", 1)
	return 0	
end




