
knightTrial = ScreenPlay:new {
	numberOfActs = 1,
		
}
spHelper = require("screenplayHelper")
registerScreenPlay("knightTrial", true)
local ObjectManager = require("managers.object.object_manager")


function knightTrial:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()		
	end
end

function knightTrial:spawnMobiles()				
	local pTrigger = spawnMobile("tatooine", "thiel_follow", 3600, -502.8, 0.0, 3657.1, 129, 0)
	if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "knightTrial", "notifyTriggerDead", pTrigger)

	end
	writeData("knightTrial:spawnState",0)
end

function knightTrial:notifyTriggerDead(pTrigger)

        local pBoss = spawnMobile("tatooine", "thiel", 0, -492.8, 0.0, 3652.1, 129, 0)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("knightTrial:spawnState", 1)
		writeData("thielboss", oBoss:getObjectID())	
		spatialChat(pBoss, "The trial for my soul has begun..if I can endure for 30 minutes, I will become MORE powerful than you can possibly imagine, and all of you will know the bitter taste of DEFEAT")	
		createObserver(DAMAGERECEIVED,"knightTrial","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "knightTrial", "notifyThielDead", pBoss)
		createEvent(1800000, "knightTrial", "despawnBoss", pBoss)		
	end)
	return 0
end

function knightTrial:notifyThielDead(pBoss, pKiller)
	writeData("knightTrial:spawnState", 0)
	return 0
end

function knightTrial:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("thielboss"),true)
	writeData("knightTrial:spawnState", 0)
	return 0
end

function knightTrial:boss_damage(pBoss, pPlayer)
		
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if ( boss ~= nil ) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)
		local x1 = -492.8
		local y1 = 3652.1
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 50
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Run from me, rethink your aggression")
			boss:healDamage(pBoss, 0, 2000000)
			boss:healDamage(pBoss, 3, 2000000)
			boss:healDamage(pBoss, 6, 2000000)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "knightTrial", "resetScreenplayStatus", pPlayer)
		
		end		
		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("knightTrial:spawnState") == 1) then
			spatialChat(pBoss, "You think you have a chance of defeating me because you killed my padawan? Think again!!! JEDI, COME TO ME!")
			writeData("knightTrial:spawnState",2)
			local pAdd = spawnMobile("tatooine", "thiel_follow", 0, -492.8, 0.0, 3652.1, 129, 0)

			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "Yes master!")
	
			local pAddTwo = spawnMobile("tatooine", "thiel_follow", 0, -461.8, 0.0, 3603.1, 129, 0)

			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "We are here to protect you!")
		
			local pAddThree = spawnMobile("tatooine", "thiel_follow", 0, -431.8, 0.0, 3659.1, 129, 0)

			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
 			spatialChat(pAddThree, "I sense the dark side")
		
			local pAddFour = spawnMobile("tatooine", "thiel_follow", 0, -387.8, 0.0, 3615.1, 129, 0)

			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "Right away")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("knightTrial:spawnState") == 2) then
			spatialChat(pBoss,"I weaken... Come to my aid..I summon the beast born of Tatooine!")
			writeData("knightTrial:spawnState", 3)
			local pAddFive = spawnMobile("tatooine", "kell_dragon_ancient", 0, -492.8, 0.0, 3652.1, 129, 0)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("knightTrial:spawnState") == 3) then
			spatialChat(pBoss,"Help me..quickly")
			writeData("knightTrial:spawnState", 4)
			local pAddSix = spawnMobile("tatooine", "thiel_follow", 0, -492.8, 0.0, 3652.1, 129, 0)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "I will help you kill them!")
			local pAddSeven = spawnMobile("tatooine", "thiel_follow", 0, -431.8, 0.0, 3659.1, 129, 0)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "tracking targets")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("knightTrial:spawnState") == 4) then
			writeData("knightTrial:spawnState", 5)		
			spatialChat(pBoss, "I have been defeated, but not lost. I will become one with the force.. forever")
		end
	end
	return 0
end

function knightTrial:resetScreenplayStatus(pPlayer)
	writeData("knightTrial:spawnState", 1)
	return 0
end
