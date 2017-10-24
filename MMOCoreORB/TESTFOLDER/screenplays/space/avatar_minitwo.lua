avatar_minitwo = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("avatar_minitwo", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Avatar Mini Boss 2")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function avatar_minitwo:start()
	if (isZoneEnabled("space_lok")) then
		self:spawnMobiles()		
 	end
end

function avatar_minitwo:spawnMobiles()
	local pTrigger = spawnMobile("space_lok", "salvage_bandit", 3600, -190.9, -0.1, -111.8, 0, 281475247980788)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "avatar_minitwo", "notifyTriggerDead", pTrigger)
	end
	writeData("avatar_minitwo:spawnState",0)	
end

function avatar_minitwo:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("space_lok", "avatar_droid_boss", 0, -190.9, -0.1, -111.8, 0, 281475247980788) print("spawned Droid Boss")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("avatar_minitwo:spawnState", 1)
		writeData("avatarminiboss2", oBoss:getObjectID())			
		spatialChat(pBoss, "reset. multiple. targets. lock.")	
		createObserver(DAMAGERECEIVED,"avatar_minitwo","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "avatar_minitwo", "notifyBossDead", pBoss)
		createEvent(1800000, "avatar_minitwo", "despawnBoss", pBoss)		
	end)
	return 0
end

function avatar_minitwo:notifyBossDead(pBoss, pPlayer)
	writeData("avatar_minitwo:spawnState", 0)
	return 0
end

function avatar_minitwo:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("avatarminiboss2"),true)
	writeData("avatar_minitwo:spawnState", 0)
	return 0
end

function avatar_minitwo:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	forcePeace(pAddSix)
	forcePeace(pAddSeven)
	forcePeace(pAddEight)
	spHelper.destroy(readData("avatarmini2add"),true)
	spHelper.destroy(readData("avatarmini2add2"),true)
	spHelper.destroy(readData("avatarmini2add3"),true)
	spHelper.destroy(readData("avatarmini2add4"),true)
	spHelper.destroy(readData("avatarmini2add5"),true)
	spHelper.destroy(readData("avatarmini2add6"),true)
	spHelper.destroy(readData("avatarmini2add7"),true)
	spHelper.destroy(readData("avatarmini2add8"),true)
	return 0
end

function avatar_minitwo:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -191.0
		local y1 = -112.1
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 45
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "reset. reset.")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "avatar_minitwo", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("avatar_minitwo:spawnState") == 1) then
			spatialChat(pBoss, "program run")
			writeData("avatar_minitwo:spawnState",2)
			local pAdd = spawnMobile("space_lok", "blackguard_droid_add", 0, -186.1, 0.0, -103.3, -36, 281475247980788)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("avatarmini2add", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "")
	
			local pAddTwo = spawnMobile("space_lok", "blackguard_droid_add", 0, -195.9, 0.0, -103.0, 45, 281475247980788)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("avatarmini2add2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "")
		
			local pAddThree = spawnMobile("space_lok", "blackguard_droid_add", 0, -195.7, -0.2, -94.7, 150, 281475247980788)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("avatarmini2add3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "")
		
			local pAddFour = spawnMobile("space_lok", "blackguard_droid_add", 0, -186.2, 0.0, -93.4, -169, 281475247980788)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("avatarmini2add4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("avatar_minitwo:spawnState") == 2) then
			spatialChat(pBoss,"program 27 run")
			writeData("avatar_minitwo:spawnState", 3)
			local pAddFive = spawnMobile("space_lok", "blackguard_droid_add", 0, -161.7, 0.0, 45.4, -119, 281475247980786)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("avatarmini2add5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "")
			local pAddSix = spawnMobile("space_lok", "blackguard_droid_add", 0, -182.4, 0.0, 46.4, 99, 281475247980786)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("avatarmini2add6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "")
		end
		if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("avatar_minitwo:spawnState") == 3) then
			spatialChat(pBoss,"")
			writeData("avatar_minitwo:spawnState", 4)
			local pAddSeven = spawnMobile("space_lok", "blackguard_droid_add", 0, -182.7, -0.2, -100.6, -99, 281475247980788)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("avatarmini2add7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSeven, "")
			local pAddEight = spawnMobile("space_lok", "blackguard_droid_add", 0, -199.9, -0.2, -100.8, 86, 281475247980788)
			ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
			writeData("avatarmini2add8", eighthTime:getObjectID())
				eighthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddEight, "")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.10)) or (bossAction <= (bossMaxAction * 0.10)) or (bossMind <= (bossMaxMind * 0.10))) and readData("avatar_minitwo:spawnState") == 4) then
			spatialChat(pBoss, "program run error")
		end
	end
	return 0
end

function avatar_minitwo:resetScreenplayStatus(pPlayer)
	writeData("avatar_minitwo:spawnState", 1)
	return 0	
end




