avatar_prison = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("avatar_prison", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Avatar Prison Boss")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function avatar_prison:start()
	if (isZoneEnabled("space_lok")) then
		self:spawnMobiles()		
 	end
end

function avatar_prison:spawnMobiles()
	local pTrigger = spawnMobile("space_lok", "salvage_bandit", 3600, -171.6, 0.0, -157.7, 3.0, 281475247980780)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "avatar_prison", "notifyTriggerDead", pTrigger)
	end
	writeData("avatar_prison:spawnState",0)	
end

function avatar_prison:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("space_lok", "general_baneseg", 0, -171.6, 0.0, -157.7, 3.0, 281475247980780) print("spawned Avatar Prison Boss")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("avatar_prison:spawnState", 1)
		writeData("avatarprisonboss", oBoss:getObjectID())			
		spatialChat(pBoss, "More weapons for my collection?")	
		createObserver(DAMAGERECEIVED,"avatar_prison","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "avatar_prison", "notifyBossDead", pBoss)
		createEvent(1800000, "avatar_prison", "despawnBoss", pBoss)		
	end)
	return 0
end

function avatar_prison:notifyBossDead(pBoss, pPlayer)
	writeData("avatar_prison:spawnState", 0)
	return 0
end

function avatar_prison:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("avatarprisonboss"),true)
	writeData("avatar_prison:spawnState", 0)
	return 0
end

function avatar_prison:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	forcePeace(pAddSix)
	forcePeace(pAddSeven)
	forcePeace(pAddEight)
	spHelper.destroy(readData("avatarprisonadd"),true)
	spHelper.destroy(readData("avatarprisonadd2"),true)
	spHelper.destroy(readData("avatarprisonadd3"),true)
	spHelper.destroy(readData("avatarprisonadd4"),true)
	spHelper.destroy(readData("avatarprisonadd5"),true)
	spHelper.destroy(readData("avatarprisonadd6"),true)
	spHelper.destroy(readData("avatarprisonadd7"),true)
	spHelper.destroy(readData("avatarprisonadd8"),true)
	return 0
end

function avatar_prison:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -171.6
		local y1 = -157.7
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 55
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Prizes for my wall")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "avatar_prison", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("avatar_prison:spawnState") == 1) then
			spatialChat(pBoss, "You will not win")
			writeData("avatar_prison:spawnState",2)
			local pAdd = spawnMobile("space_lok", "blackguard_droid_add", 0, -171.6, 0.0, -127.7, -10, 281475247980780)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("avatarprisonadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "target locked")
	
			local pAddTwo = spawnMobile("space_lok", "blackguard_droid_add", 0, -171.6, 0.0, -137.7, -41, 281475247980780)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("avatarprisonadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "target locked")
		
			local pAddThree = spawnMobile("space_lok", "blackguard_droid_add", 0, -171.6, 0.0, -139.7, -119, 281475247980780)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("avatarprisonadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "target locked")
		
			local pAddFour = spawnMobile("space_lok", "blackguard_droid_add", 0, -171.6, 0.0, -147.7, 99, 281475247980780)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("avatarprisonadd4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "target locked")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("avatar_prison:spawnState") == 2) then
			spatialChat(pBoss,"I will lay you out in your grave")
			writeData("avatar_prison:spawnState", 3)
			local pAddFive = spawnMobile("space_lok", "droid_lord", 0, -171.6, 0.0, -141.7, -119, 281475247980780)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("avatarprisonadd5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "Target Lock")
			local pAddSix = spawnMobile("space_lok", "droid_lord", 0, -171.6, 0.0, -131.7, 99, 281475247980780)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("avatarprisonadd6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "Target Lock")
		end
		if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("avatar_prison:spawnState") == 3) then
			spatialChat(pBoss,"Master, hear me")
			writeData("avatar_prison:spawnState", 4)
			local pAddSeven = spawnMobile("space_lok", "droid_lord", 0, -171.6, 0.0, -144.7, -119, 281475247980780)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("avatarprisonadd7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSeven, "Target Lock")
			local pAddEight = spawnMobile("space_lok",  "droid_lord", 0, -171.6, 0.0, -133.7, 99, 281475247980780)
			ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
			writeData("avatarprisonadd8", eighthTime:getObjectID())
				eighthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddEight, "Target Lock")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.10)) or (bossAction <= (bossMaxAction * 0.10)) or (bossMind <= (bossMaxMind * 0.10))) and readData("avatar_prison:spawnState") == 4) then
			spatialChat(pBoss, "")
		end
	end
	return 0
end

function avatar_prison:resetScreenplayStatus(pPlayer)
	writeData("avatar_prison:spawnState", 1)
	return 0	
end




