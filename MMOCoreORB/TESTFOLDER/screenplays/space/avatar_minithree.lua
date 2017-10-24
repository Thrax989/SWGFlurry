avatar_minithree = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("avatar_minithree", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Avatar first mini 0 Boss")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function avatar_minithree:start()
	if (isZoneEnabled("space_lok")) then
		self:spawnMobiles()		
 	end
end

function avatar_minithree:spawnMobiles()
	local pTrigger = spawnMobile("space_lok", "salvage_bandit", 3600, -90.2, -0.3, 11.5, 0.0, 281475247980793)
	if (pTrigger ~= nil ) then	
        	createObserver(OBJECTDESTRUCTION, "avatar_minithree", "notifyTriggerDead", pTrigger)
	end
	writeData("avatar_minithree:spawnState",0)	
end

function avatar_minithree:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("space_lok", "sith_unya", 0, -90.2, -0.3, 11.5, 0.0, 281475247980793) print("spawned Avatar first mini 0 Boss")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("avatar_minithree:spawnState", 1)
		writeData("avatarminithreeboss", oBoss:getObjectID())			
		spatialChat(pBoss, "The cold of space rivals my own thoughts")	
		createObserver(DAMAGERECEIVED,"avatar_minithree","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "avatar_minithree", "notifyBossDead", pBoss)
		createEvent(1800000, "avatar_minithree", "despawnBoss", pBoss)		
	end)
	return 0
end

function avatar_minithree:notifyBossDead(pBoss, pPlayer)
	writeData("avatar_minithree:spawnState", 0)
	return 0
end

function avatar_minithree:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("avatarminithreeboss"),true)
	writeData("avatar_minithree:spawnState", 0)
	return 0
end

function avatar_minithree:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	forcePeace(pAddSix)
	forcePeace(pAddSeven)
	forcePeace(pAddEight)
	spHelper.destroy(readData("avatarminithreeadd"),true)
	spHelper.destroy(readData("avatarminithreeadd2"),true)
	spHelper.destroy(readData("avatarminithreeadd3"),true)
	spHelper.destroy(readData("avatarminithreeadd4"),true)
	spHelper.destroy(readData("avatarminithreeadd5"),true)
	spHelper.destroy(readData("avatarminithreeadd6"),true)
	spHelper.destroy(readData("avatarminithreeadd7"),true)
	spHelper.destroy(readData("avatarminithreeadd8"),true)
	return 0
end

function avatar_minithree:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -90.2
		local y1 = 11.5
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 55
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Flee, as I knew you would.")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "avatar_minithree", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("avatar_minithree:spawnState") == 1) then
			spatialChat(pBoss, "You will not win")
			writeData("avatar_minithree:spawnState",2)
			local pAdd = spawnMobile("space_lok", "blackguard_droid_add", 0, -94.6, -0.3, 13.4, -10, 281475247980793)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("avatarminithreeadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "target locked")
	
			local pAddTwo = spawnMobile("space_lok", "blackguard_droid_add", 0, -93.8, -0.3, 21.4, -33, 281475247980793)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("avatarminithreeadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "target locked")
		
			local pAddThree = spawnMobile("space_lok", "blackguard_droid_add", 0, -87.0, -0.3, 12.9, -30, 281475247980793)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("avatarminithreeadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "target locked")
		
			local pAddFour = spawnMobile("space_lok", "blackguard_droid_add", 0, -85.1, -0.3, 20.6, -121, 281475247980793)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("avatarminithreeadd4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "target locked")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("avatar_minithree:spawnState") == 2) then
			spatialChat(pBoss,"I am assured victory with your level of combat prowess")
			writeData("avatar_minithree:spawnState", 3)
			local pAddFive = spawnMobile("space_lok", "droid_lord", 0, -94.6, -0.3, 13.4, -10, 281475247980793)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("avatarminithreeadd5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "Target Lock")
			local pAddSix = spawnMobile("space_lok", "droid_lord", 0, -93.8, -0.3, 21.4, -33, 281475247980793)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("avatarminithreeadd6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "Target Lock")
		end
		if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("avatar_minithree:spawnState") == 3) then
			spatialChat(pBoss,"impossible, but possible, am I released?")
			writeData("avatar_minithree:spawnState", 4)
			local pAddSeven = spawnMobile("space_lok", "droid_lord", 0, -87.0, -0.3, 12.9, -30, 281475247980793)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("avatarminithreeadd7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSeven, "Target Lock")
			local pAddEight = spawnMobile("space_lok",  "droid_lord", 0, -85.1, -0.3, 20.6, -121, 281475247980793)
			ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
			writeData("avatarminithreeadd8", eighthTime:getObjectID())
				eighthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddEight, "Target Lock")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.10)) or (bossAction <= (bossMaxAction * 0.10)) or (bossMind <= (bossMaxMind * 0.10))) and readData("avatar_minithree:spawnState") == 4) then
			spatialChat(pBoss, "")
		end
	end
	return 0
end

function avatar_minithree:resetScreenplayStatus(pPlayer)
	writeData("avatar_minithree:spawnState", 1)
	return 0	
end




