avatar_minione = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("avatar_minione", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Avatar Mini Boss 1")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function avatar_minione:start()
	if (isZoneEnabled("space_lok")) then
		self:spawnMobiles()		
 	end
end

function avatar_minione:spawnMobiles()
	local pTrigger = spawnMobile("space_lok", "salvage_bandit", 3600, -182.4, 0.0, 46.4, 99, 281475247980786)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "avatar_minione", "notifyTriggerDead", pTrigger)
	end
	writeData("avatar_minione:spawnState",0)	
end

function avatar_minione:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("space_lok", "avatar_vekuji", 0, -173.2, -0.3, 45.9, -175, 281475247980786) print("spawned Vekuji")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("avatar_minione:spawnState", 1)
		writeData("avatarminiboss1", oBoss:getObjectID())			
		spatialChat(pBoss, "Bhoam foom unode jesstekis?")	
		createObserver(DAMAGERECEIVED,"avatar_minione","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "avatar_minione", "notifyBossDead", pBoss)
		createEvent(1800000, "avatar_minione", "despawnBoss", pBoss)		
	end)
	return 0
end

function avatar_minione:notifyBossDead(pBoss, pPlayer)
	writeData("avatar_minione:spawnState", 0)
	return 0
end

function avatar_minione:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("avatarminiboss1"),true)
	writeData("avatar_minione:spawnState", 0)
	return 0
end

function avatar_minione:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	forcePeace(pAddSix)
	forcePeace(pAddSeven)
	forcePeace(pAddEight)
	spHelper.destroy(readData("avatarmini1add"),true)
	spHelper.destroy(readData("avatarmini1add2"),true)
	spHelper.destroy(readData("avatarmini1add3"),true)
	spHelper.destroy(readData("avatarmini1add4"),true)
	spHelper.destroy(readData("avatarmini1add5"),true)
	spHelper.destroy(readData("avatarmini1add6"),true)
	spHelper.destroy(readData("avatarmini1add7"),true)
	spHelper.destroy(readData("avatarmini1add8"),true)
	return 0
end

function avatar_minione:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -173.2
		local y1 = 45.9
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 35
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "poostika laaars ferrendersh.")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "avatar_minione", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("avatar_minione:spawnState") == 1) then
			spatialChat(pBoss, "wulls dooo foghund")
			writeData("avatar_minione:spawnState",2)
			local pAdd = spawnMobile("space_lok", "blackguard_droid_add", 0, -183.5, 0.0, 30.0, -10, 281475247980786)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("avatarmini1add", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "target locked")
	
			local pAddTwo = spawnMobile("space_lok", "blackguard_droid_add", 0, -162.3, 0.0, 30.1, -41, 281475247980786)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("avatarmini1add2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "target locked")
		
			local pAddThree = spawnMobile("space_lok", "blackguard_droid_add", 0, -161.7, 0.0, 45.4, -119, 281475247980786)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("avatarmini1add3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "target locked")
		
			local pAddFour = spawnMobile("space_lok", "blackguard_droid_add", 0, -182.4, 0.0, 46.4, 99, 281475247980786)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("avatarmini1add4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "target locked")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("avatar_minione:spawnState") == 2) then
			spatialChat(pBoss,"piyu huyachi kurrrd")
			writeData("avatar_minione:spawnState", 3)
			local pAddFive = spawnMobile("space_lok", "droid_lord", 0, -161.7, 0.0, 45.4, -119, 281475247980786)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("avatarmini1add5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "Target Lock")
			local pAddSix = spawnMobile("space_lok", "droid_lord", 0, -182.4, 0.0, 46.4, 99, 281475247980786)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("avatarmini1add6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "Target Lock")
		end
		if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("avatar_minione:spawnState") == 3) then
			spatialChat(pBoss,"JAKATAH GERARDI  NEQUESONI")
			writeData("avatar_minione:spawnState", 4)
			local pAddSeven = spawnMobile("space_lok", "droid_lord", 0, -161.7, 0.0, 45.4, -119, 281475247980786)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("avatarmini1add7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSeven, "Target Lock")
			local pAddEight = spawnMobile("space_lok",  "droid_lord", 0, -182.4, 0.0, 46.4, 99, 281475247980786)
			ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
			writeData("avatarmini1add8", eighthTime:getObjectID())
				eighthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddEight, "Target Lock")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.10)) or (bossAction <= (bossMaxAction * 0.10)) or (bossMind <= (bossMaxMind * 0.10))) and readData("avatar_minione:spawnState") == 4) then
			spatialChat(pBoss, "FLORENTONE HANUS")
		end
	end
	return 0
end

function avatar_minione:resetScreenplayStatus(pPlayer)
	writeData("avatar_minione:spawnState", 1)
	return 0	
end




