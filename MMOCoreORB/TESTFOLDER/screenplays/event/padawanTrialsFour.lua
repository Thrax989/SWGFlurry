
padawanTrialsFour = ScreenPlay:new { 
	numberOfActs = 1, 
	questString = "padawanTrialsFour",
	states = {
		quest = { hasShrine = 1, killedBoss = 2}
		
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
	
}
spHelper = require("screenplayHelper")
registerScreenPlay("padawanTrialsFour", true)
local ObjectManager = require("managers.object.object_manager")

function padawanTrialsFour:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
	end
end

function padawanTrialsFour:spawnMobiles()				
	local pTrigger = spawnMobile("hoth", "trials_initiate", 1800, -6597.6, 2.8, 3190.1, 0, 0)
	if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "padawanTrialsFour", "notifyTriggerDead", pTrigger)

	end

	writeData("padawanTrialsFour:spawnState",0)
	return 0
end

function padawanTrialsFour:notifyTriggerDead(pTrigger, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)

        local pBoss = spawnMobile("hoth", "master_fotom", 0, -6597.6, 2.8, 3190.1, 0, 0)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("padawanTrialsFour:spawnState", 1)
		writeData("pad4boss", oBoss:getObjectID())	
		createObserver(DAMAGERECEIVED,"padawanTrialsFour","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "padawanTrialsFour", "notifyFotomDead", pBoss)
		createEvent(900000, "padawanTrialsFour", "despawnBoss", pBoss)		
	end)
	return 0
end

function padawanTrialsFour:notifyFotomDead(pBoss, pPlayer)
	if CreatureObject(pPlayer):hasScreenPlayState(padawanTrialsThree.states.quest.killedBoss, padawanTrialsThree.questString) then
		ObjectManager.withCreatureObject(pPlayer, function(player)
			player:setScreenPlayState(padawanTrialsFour.states.quest.killedBoss, padawanTrialsFour.questString) end)

			writeData("padawanTrialsFour:spawnState", 0)
			local pAddEight = spawnMobile("hoth", "trials_yoda", 0, -6597.6, 2.8, 3190.1, -158, 0)
			ObjectManager.withCreatureObject(pAddEight, function(oYoda)
			writeData("yodaboss", oYoda:getObjectID())			
			createEvent(100000, "padawanTrialsFour", "despawnEight", pAddEight)
			spatialChat(pAddEight, "Fallen for my tricks you have, amusing to me it was. Done well in your youth you have. The Padawan Trials.. over they are, passed them you have done. A shrine , seek a force shrine you must...remember what you have learned.")			
		end)
	end
	return 0				
end
		
	

function padawanTrialsFour:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("pad4boss"),true)
	writeData("padawanTrialsFour:spawnState", 0)
	return 0
end

function padawanTrialsFour:despawnEight(pAddEight, pPlayer)
	forcePeace(pAddEight)
	spHelper.destroy(readData("yodaboss"),true)
	writeData("padawanTrialsFour:spawnState", 0)
	return 0
end

function padawanTrialsFour:boss_damage(pBoss, pPlayer)
	   ObjectManager.withCreatureObject(pBoss, function(boss)
	      ObjectManager.withCreatureObject(pPlayer, function(player)
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)
		local x1 = -6597
		local y1 = 3190
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 50
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "much fear in you I sense")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "padawanTrialsFour", "resetScreenplayStatus", pPlayer)
		
		end		
		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("padawanTrialsFour:spawnState") == 1) then
			writeData("padawanTrialsFour:spawnState",2)
	--[[		local pAdd = spawnMobile("hoth", "trials_initiate", 0, -6597.6, 2.8, 3190.1, 0, 0)

			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
	
			local pAddTwo = spawnMobile("hoth", "trials_initiate", 0, -6597.6, 2.8, 3190.1, 0, 0)

			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
		
			local pAddThree = spawnMobile("hoth", "trials_initiate", 0, -6597.6, 2.8, 3190.1, 0, 0)

			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
		
			local pAddFour = spawnMobile("hoth", "trials_initiate", 0, -6597.6, 2.8, 3190.1, 0, 0)

			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)--]]
			
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("padawanTrialsFour:spawnState") == 2) then
			writeData("padawanTrialsFour:spawnState", 3)
		--[[	local pAddFive = spawnMobile("hoth", "trials_initiate", 0, -6597.6, 2.8, 3190.1, 0, 0)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)--]]
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("padawanTrialsFour:spawnState") == 3) then
			writeData("padawanTrialsFour:spawnState", 4)
		--[[	local pAddSix = spawnMobile("hoth", "trials_initiate", 0, -6597.6, 2.8, 3190.1, 0, 0)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			local pAddSeven = spawnMobile("hoth", "trials_initiate", 0, -6597.6, 2.8, 3190.1, 0, 0)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end) --]]
		end		
		

		end)
	end)
	return 0
end

function padawanTrialsFour:resetScreenplayStatus(pPlayer)
	writeData("padawanTrialsFour:spawnState", 1)
	return 0
end


