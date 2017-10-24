hoth_bio_facility = ScreenPlay:new {
        numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("hoth_bio_facility", true)
local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function hoth_bio_facility:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
	end
end

function hoth_bio_facility:spawnMobiles()

    	--Cell [34672982]
        	spawnMobile("hoth","undead_trooper_m", 300, -4.1, 0.3, 0.7, 169, 34672982)
        	spawnMobile("hoth","undead_trooper_m", 300, -2.0, 0.3, 2.5, 172, 34672982)
        	spawnMobile("hoth","undead_trooper_m", 300, -3.3, 0.3, -5.0, 0, 34672982)

        	spawnMobile("hoth","undead_trooper_m", 300, 10.7, -12.0, 29.1, 0, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 4.5, -12.0, 30.7, -157, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -3.4, -12.0, 32.8, -164, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 3.1, -12.0, 40.1, -39, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 18.1, -12.0, 40.3, -109, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 19.5, -12.0, 49.4, 0, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 26.5, -12.0, 43.2, -38, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 11.5, -12.0, 49.1, -30, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 26.6, -12.0, 49.5, 89, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -2.6, -12.0, 62.2, -83, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 1800, 5.1, -12.0, 64.6, -145, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 1.4, -12.0, 63.0, 85, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 5.3, -12.0, 61.4, -49, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 9.6, -12.0, 63.8, 103, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 6.1, -12.0, 67.3, 3, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -1.7, -12.0, 68.8, -35, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, 0.2, -12.0, 53.3, -179, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -10.9, -12.0, 50.2, -52, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -19.2, -12.0, 43.7, 6, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -19.4, -12.0, 49.6, -98, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -13.1, -12.0, 40.9, 159, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -1.3, -12.0, 48.2, 170, 34672985)
        	spawnMobile("hoth","undead_trooper_m", 300, -9.8, -12.0, 47.0, -97, 34672985)



    	--Cell [34672988]
        	spawnMobile("hoth","undead_trooper_m", 1800, -48.7, -20.0, 14.5, -68, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -70.0, -20.0, 16.4, 93, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -70.0, -20.0, 9.8, 86, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -76.2, -20.0, 8.8, -119, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -74.7, -20.0, 13.0, 88, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -61.1, -20.0, 13.0, -90, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -62.9, -20.0, 19.1, 1, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -59.1, -20.0, 6.9, 172, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -56.3, -20.0, 11.8, 165, 34672988)
        	spawnMobile("hoth","undead_trooper_m", 300, -49.3, -20.0, 18.2, 44, 34672988)



    	--Cell [34672994]
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 40.3, -12.0, 9.4, -176, 34672994)
        	spawnMobile("hoth","undead_trooper_f", 300, 22.2, -12.0, 24.9, 13, 34672994)
        	spawnMobile("hoth","undead_trooper_f", 1800, 26.2, -12.0, 3.5, -4, 34672994)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 23.3, -12.0, 11.8, 43, 34672994)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 28.2, -12.0, 2.6, 64, 34672994)
        	spawnMobile("hoth","undead_trooper_f", 1800, 20.0, -12.0, 3.1, 25, 34672994)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 58.6, -12.0, 2.4, -14, 34672994)
        	spawnMobile("hoth","undead_trooper_f", 300, 54.0, -12.0, -0.9, 174, 34672994)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 44.1, -12.0, -0.9, 170, 34672994)
        	spawnMobile("hoth","undead_trooper_f", 300, 37.9, -12.0, 4.3, -14, 34672994)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 61.8, -12.0, 12.5, 10, 34672994)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 48.3, -12.0, 12.4, -8, 34672994)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 42.2, -12.0, 20.0, -169, 34672994)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 52.1, -12.0, 22.8, 4, 34672994)

    	--Cell [34672996]
        	spawnMobile("hoth","undead_trooper_m", 300, -22.7, -20.0, -3.0, 169, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -21.3, -20.0, -1.7, -2, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -13.0, -20.0, -2.9, 172, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -10.0, -20.0, -2.7, 89, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -9.9, -20.0, 8.5, -110, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -13.9, -20.0, 7.8, 171, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -19.7, -20.0, 9.1, 2, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -23.2, -20.0, 8.9, -98, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -19.6, -20.0, -3.3, 176, 34672996)
        	spawnMobile("hoth","undead_trooper_m", 300, -15.7, -20.0, 2.6, -79, 34672996)


    	--Cell [34672992]
        	spawnMobile("hoth","undead_trooper_m", 300, 69.4, -12.0, 59.7, -15, 34672992)
        	spawnMobile("hoth","undead_trooper_m", 300, 69.0, -12.0, 57.9, 174, 34672992)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 60.7, -12.0, 59.6, 32, 34672992)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 53.1, -12.0, 57.7, -170, 34672992)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 46.8, -12.0, 59.7, -5, 34672992)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 44.6, -12.0, 53.1, 1, 34672992)

    	--Cell [34672991]
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 50.1, -12.0, 84.7, -9, 34672991)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 50.9, -12.0, 81.2, 178, 34672991)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 57.7, -12.0, 81.2, 175, 34672991)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 67.3, -12.0, 84.7, -17, 34672991)
        	spawnMobile("hoth","undead_rebel_trooper_m", 1800, 73.7, -12.0, 81.2, -176, 34672991)
        	spawnMobile("hoth","undead_rebel_trooper_m", 1800, 71.6, -12.0, 84.7, 8, 34672991)

    	--Cell [34672993]
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 21.9, -20.0, 120.0, -30, 34672993)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 13.5, -20.0, 127.3, 56, 34672993)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 18.3, -20.0, 145.9, 42, 34672993)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 38.7, -20.0, 121.8, 92, 34672993)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 38.2, -20.0, 127.6, 122, 34672993)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 41.7, -20.0, 133.4, 73, 34672993)
--        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 36.4, -20.0, 145.9, -10, 34672993)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 32.8, -20.0, 125.4, 38, 34672993)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 26.7, -20.0, 131.9, -40, 34672993)
        	spawnMobile("hoth","undead_rebel_trooper_m", 300, 19.6, -20.0, 136.9, 156, 34672993)


	local pTrigger = spawnMobile("hoth", "undead_trooper_m", 1800, 35.9, -20.0, 141.2, -177, 34672993)
	if (pTrigger ~= nil ) then	
        	createObserver(OBJECTDESTRUCTION, "hoth_bio_facility", "notifyTriggerDead", pTrigger)
	end

	writeData("hoth_bio_facility:spawnState",0)	
end

function hoth_bio_facility:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("hoth", "gog", 0, 35.9, -20.0, 141.2, -177, 34672993)
		ObjectManager.withCreatureObject(pBoss, function(oBoss)
			writeData("hoth_bio_facility:spawnState", 1)	
			writeData("gogboss", oBoss:getObjectID())		
			spatialChat(pBoss, "YOU DARE KILL MY WORK")	
        	createObserver(DAMAGERECEIVED,"hoth_bio_facility","boss_damage", pBoss)
			createObserver(OBJECTDESTRUCTION, "hoth_bio_facility", "notifyBossDead", pBoss)	  
			createEvent(1800000, "hoth_bio_facility", "despawnBoss", pBoss)
		end)
	return 0
end

function hoth_bio_facility:notifyBossDead(pBoss, pPlayer)
	writeData("hoth_bio_facility:spawnState", 0)
	return 0
end

function hoth_bio_facility:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("gogboss"),true)
	writeData("hoth_bio_facility:spawnState", 0)
	return 0
end

function hoth_bio_facility:boss_damage(pBoss, pPlayer)
		
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if ( boss ~= nil ) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 35.9
		local y1 = 141.2
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 58
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "You flee from me? Cowards")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setPvpStatusBitmask(0)
			forcePeace(pBoss)
--			boss:setOptionsBitmask(128)

			createEvent(3500, "hoth_bio_facility", "resetScreenplayStatus", pPlayer)
				
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("hoth_bio_facility:spawnState") == 1) then
			spatialChat(pBoss, "YOU WILL SURELY PERISH")
			writeData("hoth_bio_facility:spawnState",2)
			local pJos = spawnMobile("hoth", "undead_trooper_m", 0, 35.9, -20.0, 141.2, -177, 34672993)
			ObjectManager.withCreatureObject(pJos, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pJos, "BRAINZZZ?!")

			local pJosTwo = spawnMobile("hoth", "undead_trooper_m", 0, 35.9, -20.0, 141.2, -177, 34672993)
			ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosTwo, "MUST HAVE BRAINS....DIE!!")
		
			local pJosThree = spawnMobile("hoth", "undead_trooper_m", 0, 35.9, -20.0, 141.2, -177, 34672993)
			ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pJosThree, "YES MASTER KILL THE STRANGERS!")
		
			local pJosFour = spawnMobile("hoth", "undead_trooper_m", 0, 35.9, -20.0, 141.2, -177, 34672993)
			ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosFour, "FEED ME BRAINSSS!")				
		end

	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("hoth_bio_facility:spawnState") == 2) then
			spatialChat(pBoss,"HELP ME .. GUARDS")
			writeData("hoth_bio_facility:spawnState", 3)
			local pJosFive = spawnMobile("hoth", "undead_trooper_m", 0, 35.9, -20.0, 141.2, -177, 34672993)
			ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
				spatialChat(pJosFive, "BRAINZZZZ")


		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("hoth_bio_facility:spawnState") == 3) then
			spatialChat(pBoss,"MY PARTNER SHALL KILL YOU NOW!")
			writeData("hoth_bio_facility:spawnState", 4)
			local pJosSix = spawnMobile("hoth", "doctor_evazan", 0, 35.9, -20.0, 141.2, -177, 34672993)
			ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
				spatialChat(pJosSix, "I will kill these fools immediately.")

		end

		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("hoth_bio_facility:spawnState") == 4) then
			spatialChat(pBoss, "You think you have won but I will be reborn!")
		end


		end
	return 0	
end

function hoth_bio_facility:resetScreenplayStatus(pPlayer)
	writeData("hoth_bio_facility:spawnState", 1)
	return 0
end

function hoth_bio_facility:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return
	end
	local creature = LuaCreatureObject(pPlayer)
	if ( creature ~= nil ) then
		creature:teleport( 180.1, 0.1, -5746.3, 0)
	end
	return 0
end

