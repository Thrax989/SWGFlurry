
padawanTrialsThree = ScreenPlay:new { 
	numberOfActs = 1, 
	questString = "padawanTrialsThree",
	states = {
		quest = { hasShrine = 1, killedBoss = 2}
		
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
	
}
spHelper = require("screenplayHelper")
registerScreenPlay("padawanTrialsThree", true)
local ObjectManager = require("managers.object.object_manager")

function padawanTrialsThree:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end

function padawanTrialsThree:spawnMobiles()				
	local pTrigger = spawnMobile("lok", "mercenary_messenger", 1800, 4565, 13, -1171, 12, 0)
	if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "padawanTrialsThree", "notifyTriggerDead", pTrigger)

	end

	writeData("padawanTrialsThree:spawnState",0)
	return 0
end

function padawanTrialsThree:notifyTriggerDead(pTrigger, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)

        local pBoss = spawnMobile("lok", "enraged_kimogila", 0, 4565, 13, -1171, 12, 0)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("padawanTrialsThree:spawnState", 1)
		writeData("pad3boss", oBoss:getObjectID())	
		createObserver(DAMAGERECEIVED,"padawanTrialsThree","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "padawanTrialsThree", "notifyKimoDead", pBoss)
		createEvent(900000, "padawanTrialsThree", "despawnBoss", pBoss)		
	end)
	return 0
end

function padawanTrialsThree:notifyKimoDead(pBoss, pPlayer)
	if CreatureObject(pPlayer):hasScreenPlayState(padawanTrialsTwo.states.quest.killedBoss, padawanTrialsTwo.questString) then
		ObjectManager.withCreatureObject(pPlayer, function(player)
			player:setScreenPlayState(padawanTrialsThree.states.quest.killedBoss, padawanTrialsThree.questString)
		end)
	end
	writeData("padawanTrialsThree:spawnState", 0)
 	return 0
end	

function padawanTrialsThree:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("pad3boss"),true)
	writeData("padawanTrialsThree:spawnState", 0)
	return 0
end

function padawanTrialsThree:boss_damage(pBoss, pPlayer)
	   ObjectManager.withCreatureObject(pBoss, function(boss)
	      ObjectManager.withCreatureObject(pPlayer, function(player)
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)
		local x1 = 4565
		local y1 = -1171
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
			createEvent(3500, "padawanTrialsThree", "resetScreenplayStatus", pPlayer)
		
		end		
		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("padawanTrialsThree:spawnState") == 1) then

			writeData("padawanTrialsThree:spawnState",2)
		--[[	local pAdd = spawnMobile("lok", "mercenary_messenger", 0, 4565, 13, -1171, 12, 0)

			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
	
			local pAddTwo = spawnMobile("lok", "mercenary_messenger", 0, 4565, 13, -1171, 12, 0)

			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
		
			local pAddThree = spawnMobile("lok", "mercenary_messenger", 0, 4565, 13, -1171, 12, 0)

			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
		
			local pAddFour = spawnMobile("lok", "mercenary_messenger", 0, 4565, 13, -1171, 12, 0)

			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)--]]
			
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("padawanTrialsThree:spawnState") == 2) then
			writeData("padawanTrialsThree:spawnState", 3)
		--[[	local pAddFive = spawnMobile("lok", "mercenary_messenger", 0, 4565, 13, -1171, 12, 0)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)--]]
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("padawanTrialsThree:spawnState") == 3) then
			writeData("padawanTrialsThree:spawnState", 4)
	--[[		local pAddSix = spawnMobile("lok", "mercenary_messenger", 0, 4565, 13, -1171, 12, 0)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			local pAddSeven = spawnMobile("lok", "mercenary_messenger", 0, 4565, 13, -1171, 12, 0)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end) --]]
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("padawanTrialsThree:spawnState") == 4) then
			writeData("padawanTrialsThree:spawnState", 5)		
			spatialChat(pBoss, "he has been victorious again")
		end
		end)
	end)
	return 0	
end

function padawanTrialsThree:resetScreenplayStatus(pPlayer)
	writeData("padawanTrialsThree:spawnState", 1)
	return 0	
end


