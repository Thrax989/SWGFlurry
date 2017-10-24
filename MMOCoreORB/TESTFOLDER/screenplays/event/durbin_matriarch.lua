durbin_matriarch = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("durbin_matriarch", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Boss Matriarch")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function durbin_matriarch:start()
	if (isZoneEnabled("talus")) then
		self:spawnMobiles()		
 	end
end

function durbin_matriarch:spawnMobiles()
	local pTrigger = spawnMobile("talus", "famished_sludge_panther", 3600, 4200.0, 6.0, 1000.0, -90, 0)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "durbin_matriarch", "notifyTriggerDead", pTrigger)
	end
	writeData("durbin_matriarch:spawnState",0)	
end

function durbin_matriarch:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("talus", "durbin_matriarch", 0, 4200.0, 6.0, 1000.0, -90, 0) print("spawned Matriarch")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("durbin_matriarch:spawnState", 1)
		writeData("durbin_matriarch", oBoss:getObjectID())			
		spatialChat(pBoss, "ROOOAAR")	
		createObserver(DAMAGERECEIVED,"durbin_matriarch","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "durbin_matriarch", "notifyBossDead", pBoss)
		createEvent(1800000, "durbin_matriarch", "despawnBoss", pBoss)		
	end)
	return 0
end

function durbin_matriarch:notifyBossDead(pBoss, pPlayer)
	writeData("durbin_matriarch:spawnState", 0)
	return 0
end

function durbin_matriarch:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("durbinboss"),true)
	writeData("durbin_matriarch:spawnState", 0)
	return 0
end

function durbin_matriarch:boss_damage(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 4200.0
		local y1 = 1000.0
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 50
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "GROWLLL")
			boss:healDamage(pBoss, 0, 2000000)
			boss:healDamage(pBoss, 3, 2000000)
			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "durbin_matriarch", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("durbin_matriarch:spawnState") == 1) then
			spatialChat(pBoss, "*Lets out a howling roar*")
			writeData("durbin_matriarch:spawnState",2)

			local pAdd = spawnMobile("talus", "durbin_packmate", 0, 4196.9, 6.0, 986.2, 83, 0)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "Growlll")
	
			local pAddTwo = spawnMobile("talus", "durbin_packmate", 0, 4231.5, 6.0, 1000.6, -56, 0)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "Growlll")
		
			local pAddThree = spawnMobile("talus", "durbin_packmate", 0, 4222.5, 6.0, 1024.1, -142, 0)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "Growlll")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("durbin_matriarch:spawnState") == 2) then
			spatialChat(pBoss,"*Lets out a pained roar*")
			writeData("durbin_matriarch:spawnState", 3)

			local pAddFour = spawnMobile("talus", "durbin_packmate", 0, 4196.9, 6.0, 986.2, 83, 0)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "Roooar")
		
			local pAddFive = spawnMobile("talus", "durbin_packmate", 0, 4231.5, 6.0, 1000.6, -56, 0)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "Roooar")

			local pAddSix = spawnMobile("talus", "durbin_packmate", 0, 4222.5, 6.0, 1024.1, -142, 0)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "Roooar")
		end
		if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("durbin_matriarch:spawnState") == 3) then
			spatialChat(pBoss,"*Roars for her last hope*")
			writeData("durbin_matriarch:spawnState", 4)


			local pAddSeven = spawnMobile("talus",  "durbin_patriarch", 0, 4186.2, 6.0, 1013.7, -90, 0)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "ROOOAAR")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("durbin_matriarch:spawnState") == 4) then
			spatialChat(pBoss, "Whimper...")
		end
	end
	return 0
end

function durbin_matriarch:resetScreenplayStatus(pPlayer)
	writeData("durbin_matriarch:spawnState", 1)
	return 0	
end

-- End of Matriarch Fight





