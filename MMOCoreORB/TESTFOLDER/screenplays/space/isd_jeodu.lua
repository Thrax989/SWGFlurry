isd_jeodu = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("isd_jeodu", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Boss Jeodu")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function isd_jeodu:start()
	if (isZoneEnabled("space_tatooine")) then
		self:spawnMobiles()		
 	end
end

function isd_jeodu:spawnMobiles()
	local pTrigger = spawnMobile("space_tatooine", "black_sun_pirate", 3600, 17.1, 140.6, 485.8, -179, 281475109153590)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "isd_jeodu", "notifyTriggerDead", pTrigger)
	end
	writeData("isd_jeodu:spawnState",0)	
end

function isd_jeodu:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("space_tatooine", "jeodu_dequc", 0, -8.1, 140.6, 484.3, 90, 281475109153590) print("spawned Dequc")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("isd_jeodu:spawnState", 1)
		writeData("isddequc", oBoss:getObjectID())			
		spatialChat(pBoss, "What is with all the noise out there? Get back to work you dogs!")	
		createObserver(DAMAGERECEIVED,"isd_jeodu","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "isd_jeodu", "notifyBossDead", pBoss)
		createEvent(1800000, "isd_jeodu", "despawnBoss", pBoss)		
	end)
	return 0
end

function isd_jeodu:notifyBossDead(pBoss, pPlayer)
	writeData("isd_jeodu:spawnState", 0)
	return 0
end

function isd_jeodu:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("isdboss"),true)
	writeData("isd_jeodu:spawnState", 0)
	return 0
end

function isd_jeodu:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -8.1
		local y1 = 484.3
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 40
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Running away, you will just die tired")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "isd_jeodu", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("isd_jeodu:spawnState") == 1) then
			spatialChat(pBoss, "Blacksun, to my side..FIGHT!")
			writeData("isd_jeodu:spawnState",2)
			local pAdd = spawnMobile("space_tatooine", "black_sun_pirate", 0, 43.0, 141.6, 479.1, 95, 281475109153590)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "scumbag spacers")
	
			local pAddTwo = spawnMobile("space_tatooine", "black_sun_pirate", 0, 43.8, 141.6, 486.5, 60, 281475109153590)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "thats right, you're my bitch tonight")
		
			local pAddThree = spawnMobile("space_tatooine", "black_sun_pirate", 0, 36.1, 140.6, 483.5, -179, 281475109153590)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "after you're dead I'm going to teabag your dead skull")
		
			local pAddFour = spawnMobile("space_tatooine", "black_sun_pirate", 0, 17.1, 140.6, 485.8, -179, 281475109153590)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "man, cant we all just get along?")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("isd_jeodu:spawnState") == 2) then
			spatialChat(pBoss,"argh smelly bastard, get on this guy, he stinks like sewage")
			writeData("isd_jeodu:spawnState", 3)
			local pAddFive = spawnMobile("space_tatooine", "black_sun_pirate", 0,  36.1, 140.6, 483.5, -179, 281475109153590)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "WHY DOES HE SMELL LIKE THIS. IM GONNA PUKE")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("isd_jeodu:spawnState") == 3) then
			spatialChat(pBoss,"ok, enough. ALL DIE NOW, including that smelly bastard, HE DIES FIRST!")
			writeData("isd_jeodu:spawnState", 4)
			local pAddSix = spawnMobile("space_tatooine", "blackguard_droid_add", 0, 43.0, 141.6, 479.1, 95, 281475109153590)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "++TARGET LOCKED++")
			local pAddSeven = spawnMobile("space_tatooine",  "blackguard_droid_add", 0, 43.8, 141.6, 486.5, 60, 281475109153590)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "++TARGET LOCKED++")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("isd_jeodu:spawnState") == 4) then
			spatialChat(pBoss, "You smelly bastard")
		end
	end
	return 0
end

function isd_jeodu:resetScreenplayStatus(pPlayer)
	writeData("isd_jeodu:spawnState", 1)
	return 0
end

-- End of jeodu fight





