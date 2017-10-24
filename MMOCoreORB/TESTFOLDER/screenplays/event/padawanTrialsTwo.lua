
padawanTrialsTwo = ScreenPlay:new { 
	numberOfActs = 1, 
	questString = "padawanTrialsTwo",
	states = {
		quest = { hasShrine = 1, killedBoss = 2}
		
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
	
}
spHelper = require("screenplayHelper")
registerScreenPlay("padawanTrialsTwo", true)
local ObjectManager = require("managers.object.object_manager")

function padawanTrialsTwo:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
	end
end

function padawanTrialsTwo:spawnMobiles()				
	local pTrigger = spawnMobile("dantooine", "force_sensitive_renegade", 1800, 1908, 1.1, -4749, -179, 0)
	if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "padawanTrialsTwo", "notifyTriggerDead", pTrigger)

	end
	writeData("padawanTrialsTwo:spawnState",0)
	return 0
end

function padawanTrialsTwo:notifyTriggerDead(pTrigger, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)

        local pBoss = spawnMobile("dantooine", "graul_marauder", 0, 1908, 1.1, -4749, -179, 0)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("padawanTrialsTwo:spawnState", 1)
		writeData("pad2boss", oBoss:getObjectID())	
		createObserver(DAMAGERECEIVED,"padawanTrialsTwo","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "padawanTrialsTwo", "notifyGraulDead", pBoss)
		createEvent(900000, "padawanTrialsTwo", "despawnBoss", pBoss)		
	end)
	return 0
end

function padawanTrialsTwo:notifyGraulDead(pBoss, pPlayer)
	if CreatureObject(pPlayer):hasScreenPlayState(padawanTrials.states.quest.killedBoss, padawanTrials.questString) then
			ObjectManager.withCreatureObject(pPlayer, function(player)
	        	player:setScreenPlayState(padawanTrialsTwo.states.quest.killedBoss, padawanTrialsTwo.questString)
		end)
	end
	writeData("padawanTrialsTwo:spawnState", 0)
 	return 0
end	

function padawanTrialsTwo:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("pad2boss"),true)
	writeData("padawanTrialsTwo:spawnState", 0)
	return 0
end

function padawanTrialsTwo:boss_damage(pBoss, pPlayer)
	   ObjectManager.withCreatureObject(pBoss, function(boss)
	      ObjectManager.withCreatureObject(pPlayer, function(player)
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)
		local x1 = 1908
		local y1 = -4749
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 50
		
		if distance > (maxDistance * maxDistance) then

--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "padawanTrialsTwo", "resetScreenplayStatus", pPlayer)
		
		end		
--[[		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("padawanTrialsTwo:spawnState") == 1) then

			writeData("padawanTrialsTwo:spawnState",2)
			local pAdd = spawnMobile("dantooine", "force_sensitive_renegade", 0, 1908, 1.1, -4749, -179, 0)

			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
	
			local pAddTwo = spawnMobile("dantooine", "force_sensitive_renegade", 0, 1908, 1.1, -4749, -179, 0)

			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
		
			local pAddThree = spawnMobile("dantooine", "force_sensitive_renegade", 0, 1908, 1.1, -4749, -179, 0)

			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
		
			local pAddFour = spawnMobile("dantooine", "force_sensitive_renegade", 0, 1908, 1.1, -4749, -179, 0)

			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			
		end	--]]
	
	--[[	if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("padawanTrialsTwo:spawnState") == 2) then
			writeData("padawanTrialsTwo:spawnState", 3)
			local pAddFive = spawnMobile("dantooine", "force_sensitive_renegade", 0, 1908, 1.1, -4749, -179, 0)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("padawanTrialsTwo:spawnState") == 3) then
			writeData("padawanTrialsTwo:spawnState", 4)
			local pAddSix = spawnMobile("dantooine", "force_sensitive_renegade", 0, 1908, 1.1, -4749, -179, 0)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			local pAddSeven = spawnMobile("dantooine", "force_sensitive_renegade", 0, 1908, 1.1, -4749, -179, 0)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
		end		--]]
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("padawanTrialsTwo:spawnState") == 4) then
			writeData("padawanTrialsTwo:spawnState", 5)		

		end
		end)
	end)
	return 0		
end

function padawanTrialsTwo:resetScreenplayStatus(pPlayer)
	writeData("padawanTrialsTwo:spawnState", 1)
	return 0	
end





