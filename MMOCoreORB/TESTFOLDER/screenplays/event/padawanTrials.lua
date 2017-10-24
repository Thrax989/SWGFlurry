
padawanTrials = ScreenPlay:new { 
	numberOfActs = 1, 
	questString = "padawanTrialsOne",
	states = {
		quest = { hasShrine = 1, killedBoss = 2}
		
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
	
}
spHelper = require("screenplayHelper")
registerScreenPlay("padawanTrials", true)
local ObjectManager = require("managers.object.object_manager")

function padawanTrials:start()
	if (isZoneEnabled("dathomir")) then
		self:spawnMobiles()
	end
end

function padawanTrials:spawnMobiles()				
	local pTrigger = spawnMobile("dathomir", "reclusive_cavern_spider_queen", 1800, -26.6, -80.0, -149.5, 0, 3695711)
	if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "padawanTrials", "notifyTriggerDead", pTrigger)

	end
	writeData("padawanTrials:spawnState",0)
	return 0
end

function padawanTrials:notifyTriggerDead(pTrigger, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)

        local pBoss = spawnMobile("dathomir", "kiin_dray", 0, -87.7, -100.8, -103.4, 174, 3695712)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("padawanTrials:spawnState", 1)
		writeData("pad1boss", oBoss:getObjectID())	
		spatialChat(pBoss, "You killed my Queen with no thought of regret.... now puny Jedi, the trial for your life will begin. I will savor the taste of the marrow in your bones")	
		createObserver(DAMAGERECEIVED,"padawanTrials","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "padawanTrials", "notifyKinndrayDead", pBoss)
		createEvent(900000, "padawanTrials", "despawnBoss", pBoss)		
	end)
	return 0
end

function padawanTrials:notifyKinndrayDead(pBoss, pPlayer)
	ObjectManager.withCreatureObject(pPlayer, function(player)
        player:setScreenPlayState(padawanTrials.states.quest.killedBoss, padawanTrials.questString)
				
				end)
	
	writeData("padawanTrials:spawnState", 0)
	return 0
end	

function padawanTrials:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("pad1boss"),true)
	writeData("padawanTrials:spawnState", 0)
	return 0
end

function padawanTrials:boss_damage(pBoss, pPlayer)
	   ObjectManager.withCreatureObject(pBoss, function(boss)
	      ObjectManager.withCreatureObject(pPlayer, function(player)
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)
		local x1 = -87.7
		local y1 = -103.4
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 50
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "untrained Jedi always show me thier backs")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "padawanTrials", "resetScreenplayStatus", pPlayer)
			end

	
			
		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("padawanTrials:spawnState") == 1) then
			spatialChat(pBoss, "Children, come eat!")
			writeData("padawanTrials:spawnState",2)
			local pAdd = spawnMobile("dathomir", "cavern_spider", 0, -87.7, -100.8, -103.4, 174, 3695712)

			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
	
			local pAddTwo = spawnMobile("dathomir", "cavern_spider", 0, -87.7, -100.8, -103.4, 174, 3695712)

			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
		
			local pAddThree = spawnMobile("dathomir", "cavern_spider", 0, -87.7, -100.8, -103.4, 174, 3695712)

			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
		
			local pAddFour = spawnMobile("dathomir", "cavern_spider", 0, -87.7, -100.8, -103.4, 174, 3695712)

			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("padawanTrials:spawnState") == 2) then
			spatialChat(pBoss,"I will feast on you for days")
			writeData("padawanTrials:spawnState", 3)
			local pAddFive = spawnMobile("dathomir", "cavern_spider", 0, -87.7, -100.8, -103.4, 174, 3695712)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("padawanTrials:spawnState") == 3) then
			spatialChat(pBoss,"you will not kill me")
			writeData("padawanTrials:spawnState", 4)
			local pAddSix = spawnMobile("dathomir", "cavern_spider", 0, -87.7, -100.8, -103.4, 174, 3695712)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			local pAddSeven = spawnMobile("dathomir", "cavern_spider", 0, -87.7, -100.8, -103.4, 174, 3695712)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("padawanTrials:spawnState") == 4) then
			writeData("padawanTrials:spawnState", 5)		
			spatialChat(pBoss, "my children will avenge me")
		end
		end)
	end)
	return 0	
end

function padawanTrials:resetScreenplayStatus(pPlayer)
	writeData("padawanTrials:spawnState", 1)
	return 0
end



