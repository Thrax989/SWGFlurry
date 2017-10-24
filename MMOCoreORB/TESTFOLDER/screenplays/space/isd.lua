isdScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "isdScreenPlay",
}
spHelper = require("screenplayHelper")
registerScreenPlay("isdScreenPlay", true)
local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for ISD")



function isdScreenPlay:start()
  if (isZoneEnabled("space_tatooine")) then
    self:spawnMobiles()
  end
end

function isdScreenPlay:spawnMobiles()
	local pCollector = spawnMobile("space_tatooine", "eg6_port", 120, 24.7, 173.8, 64.9, -140, 281475109153579)--Spawn him with a -> to pCollector (he is pCollector)
	local collector = LuaCreatureObject(pCollector)--Setting him to collector (he is collector)
	collector:setOptionsBitmask(264)--Set his options to be convo
	collector:setCustomObjectName("\\#FF0000Transport to Tatooine")	
	createObserver(OBJECTRADIALUSED, "isdScreenPlay", "teleportOut", pCollector)--creating an observer, type,which screenplay, stringToRead, pointer
	if (pCollecter~= nil) then -- if he is false, then return  false`
		return
	end
  
  --Hallway 1
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 59.2, 173.8, 31.5, -90, 281475109153568)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 69.2, 173.8, 30.1, -90, 281475109153568)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 69.1, 173.8, 33.0, -90, 281475109153568)
  
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 65.9, 173.8, 18.2, 0, 281475109153568)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 68.2, 173.8, 18.4, 0, 281475109153568)
  
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 67.1, 173.8, 46.9, -179, 281475109153568)

-- Hallway 2
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 66.8, 172.5, 235.8, -179, 281475109153555)
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 61.3, 172.7, 235.7, 90, 281475109153555)
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 72.5, 173.0, 233.9, -90, 281475109153555)
  
-- Main Level Engineering Crawlspace
  spawnMobile("space_tatooine", "blackguard_crew", 300, 59.4, 173.8, 93.7, -135, 281475109153565)
  spawnMobile("space_tatooine", "blackguard_crew", 300, 61.1, 173.8, 104.4, 30, 281475109153565)
  spawnMobile("space_tatooine", "blackguard_crew", 300, 71.2, 173.8, 105.2, 46, 281475109153565)

-- Hallway 3
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 78.7, 173.8, 88.0, 179, 281475109153558)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 81.8, 173.8, 88.0, 179, 281475109153558)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 78.2, 173.8, 72.2, 179, 281475109153558)

  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 89.4, 173.8, 94.5, -90,281475109153561)

  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 80.8, 173.8, 104.9, -179, 281475109153558)
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 78.7, 173.8, 104.9, -179, 281475109153558)
  
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 79.8, 173.8, 114.6, 179, 281475109153558)

  spawnMobile("space_tatooine", "blackguard_trooper", 300, 78.5, 173.8, 127.6, 179, 281475109153558)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 81.5, 173.8, 127.6, 179, 281475109153558)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 80.2, 173.8, 131.2, 179, 281475109153558)
  
-- Hallway 4
  spawnMobile("space_tatooine", "blackguard_commando", 300, 63.4, 173.8, 117.4, 179, 281475109153564)
  spawnMobile("space_tatooine", "blackguard_commando", 300, 66.5, 173.8, 116.8, 179, 281475109153564)
  spawnMobile("space_tatooine", "blackguard_commando", 300, 52.1, 173.8, 122.7, 179, 281475109153564)
  spawnMobile("space_tatooine", "blackguard_commando", 300, 53.3, 173.8, 128.2, 179, 281475109153564)
  spawnMobile("space_tatooine", "blackguard_commando", 300, 54.2, 173.8, 137.2, 179, 281475109153563)

-- Gunnery Control
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 71.5, 173.8, 174.9, -90, 281475109153556)
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 58.2, 173.8, 174.9, 90, 281475109153556)
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 64.8, 173.8, 180.6, -179, 281475109153556)
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 68.6, 173.8, 203.9, -90, 281475109153556)
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 61.3, 173.8, 203.9, 90, 281475109153556)

  spawnMobile("space_tatooine", "blackguard_trooper", 300, 51.3, 173.8, 198.7, 90, 281475109153556)
  
-- Launch Control  
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 29.4, 192.3, 205.3, 90, 281475109153557)
  spawnMobile("space_tatooine", "imperial_pilot", 300, 6.4, 192.8, 197.2, 179, 281475109153557)
  spawnMobile("space_tatooine", "black_sun_pirate", 300, -0.1, 192.8, 196.7, 179, 281475109153557)
  spawnMobile("space_tatooine", "black_sun_pirate", 300, -9.9, 192.3, 204.2, -90, 281475109153557)

-- Hallway 5
  spawnMobile("space_tatooine", "blackguard_commando", 300, 54.1, 173.8, 82.6, 157, 281475109153566)
  
  -- Hangar level Security station
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 87.3, 172.5, 302.2, 0, 281475109153545)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 83.1, 171.8, 357.8, 179, 281475109153546)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 87.4, 171.8, 359.0, 179, 281475109153546)
  
  -- Engineering Level
  spawnMobile("space_tatooine", "black_sun_pirate", 300, 17.1, 140.8, 364.8, 90, 281475109153584)
  spawnMobile("space_tatooine", "black_sun_pirate", 300, 22.1, 140.8, 365.0, -90, 281475109153584)

  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 20.2, 140.6, 379.3, 179, 281475109153585)
  
  spawnMobile("space_tatooine", "black_sun_pirate", 300, 42.3, 140.6, 409.1, 0, 281475109153587)
  spawnMobile("space_tatooine", "black_sun_pirate", 300, 41.4, 140.6, 421.7, 179, 281475109153587)
  spawnMobile("space_tatooine", "black_sun_pirate", 300, 41.8, 140.6, 439.1, 179, 281475109153587)

  spawnMobile("space_tatooine", "blackguard_crew", 300, 33.9, 141.1, 433.9, 179, 281475109153588)
  spawnMobile("space_tatooine", "blackguard_crew", 300, 28.5, 141.1, 433.6, 179, 281475109153588)
  spawnMobile("space_tatooine", "blackguard_crew", 300, 27.9, 140.6, 439.7, 0, 281475109153588)
  
  spawnMobile("space_tatooine", "blackguard_crew", 300, 18.6, 140.6, 448.8, -90, 281475109153589)
  spawnMobile("space_tatooine", "black_sun_pirate", 300, 15.9, 140.6, 445.0, -179, 281475109153589)

  spawnMobile("space_tatooine", "blackguard_crew", 300, 43.0, 141.6, 479.1, 95, 281475109153590)
  spawnMobile("space_tatooine", "blackguard_crew", 300, 43.8, 141.6, 486.5, 60, 281475109153590)
  spawnMobile("space_tatooine", "black_sun_pirate", 300, 36.1, 140.6, 483.5, -179, 281475109153590)
--  spawnMobile("space_tatooine", "black_sun_pirate", 300, 17.1, 140.6, 485.8, -179, 281475109153590)
--  spawnMobile("space_tatooine", "jeodu_dequc", 3600, -8.1, 140.6, 484.3, 90, 281475109153590)

  spawnMobile("space_tatooine", "black_sun_pirate", 300, 26.5, 140.6, 498.3, -179, 281475109153590)
  
   
  -- Engine room: Commented because the room appears to be bugged, all NPCs spawn glitched in a corner. 
--  spawnMobile("space_tatooine", "black_sun_pirate", 300, -2.8, 140.6, 526.5, -1, 281475109153601)
--  spawnMobile("space_tatooine", "black_sun_pirate", 300, -12.0, 122.3, 579.0, 158, 281475109153601)
--  spawnMobile("space_tatooine", "black_sun_pirate", 300, -4.2, 122.3, 580.0, -158, 281475109153601)
--  spawnMobile("space_tatooine", "black_sun_pirate", 300, -8.8, 152.3, 528.0, -90, 281475109153601)
--  spawnMobile("space_tatooine", "black_sun_pirate", 300, -8.4, 156.3, 548.6, -179, 281475109153601)


-- Prat approach
--  spawnMobile("space_tatooine", "watch_captain_prat", 3600, -55.6, 172.1, 332.5, 0, 281475109153549)
--  spawnMobile("space_tatooine", "blackguard_interrogator_droid", 300, -54.4, 172.1, 332.5, 0, 281475109153549)
  spawnMobile("space_tatooine", "blackguard_interrogator_droid", 300, -57.4, 172.1, 332.5, 0, 281475109153549)

  spawnMobile("space_tatooine", "blackguard_commando", 300, -55.7, 172.1, 349.8, 16, 281475109153549)
  spawnMobile("space_tatooine", "blackguard_commando", 300, -53.0, 172.1, 349.3, 16, 281475109153549)

  spawnMobile("space_tatooine", "blackguard_commando", 300, -48.8, 171.6, 361.5, 44, 281475109153549)
  spawnMobile("space_tatooine", "blackguard_commando", 300, -47.5, 171.6, 360.0, 44, 281475109153549)
  
  spawnMobile("space_tatooine", "blackguard_commando", 300, -39.7, 171.1, 367.5, 59, 281475109153549)
  spawnMobile("space_tatooine", "blackguard_commando", 300, -39.2, 171.1, 365.4, 68, 281475109153549)

  spawnMobile("space_tatooine", "blackguard_commando", 300, -20.6, 172.9, 370.2, 90, 281475109153549)
  spawnMobile("space_tatooine", "blackguard_commando", 300, -20.6, 172.9, 367.8, 90, 281475109153549)
  
  -- Kenkirk Approach
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 17.9, 170.6, 391.7, 179, 281475109153548)
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 21.5, 170.6, 391.7, 179, 281475109153548)

  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 18.6, 170.6, 407.3, 179, 281475109153548)
--  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 21.5, 170.6, 407.3, 179, 281475109153548)

--  spawnMobile("space_tatooine", "commander_kenkirk", 3600, 19.9, 170.6, 420.0, 179, 281475109153548)

-- Command Deck
  spawnMobile("space_tatooine", "blackguard_elite_trooper", 300, 20.1, 453.6, 412.7, 0,281475109153592)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 4.5, 453.6, 410.6, 90, 281475109153592)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 4.5, 453.6, 413.1, 90, 281475109153592)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 0.0, 453.6, 401.9, 0, 281475109153592)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 0.2, 453.6, 390.7, 0, 281475109153593)

  spawnMobile("space_tatooine", "blackguard_trooper", 300, 5.9, 453.6, 368.4, -90, 281475109153594)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 1.6, 453.6, 363.9, 0, 281475109153594)

  spawnMobile("space_tatooine", "blackguard_trooper", 300, -3.8, 453.6, 355.4, 179, 281475109153595)
  
  spawnMobile("space_tatooine", "imperial_captain", 300, -21.5, 453.6, 357.5, -90, 281475109153595)
  spawnMobile("space_tatooine", "imperial_noncom", 300, -11.5, 453.6, 360.4, 90, 281475109153595)
  spawnMobile("space_tatooine", "imperial_noncom", 300, -11.8, 453.6, 354.9, 90, 281475109153595)
  spawnMobile("space_tatooine", "imperial_major", 300, 9.3, 453.6, 355.8, 0, 281475109153596)

  spawnMobile("space_tatooine", "blackguard_trooper", 300, -0.1, 453.6, 340.5, 0, 281475109153596)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, 1.7, 453.6, 342.4, 0, 281475109153596)
  spawnMobile("space_tatooine", "blackguard_trooper", 300, -2.4, 453.6, 342.5, 0, 281475109153596)

  spawnMobile("space_tatooine", "imperial_noncom", 300, -5.4, 451.4, 326.6, -148, 281475109153596)
  spawnMobile("space_tatooine", "imperial_noncom", 300, -3.5, 451.4, 329.5, 0, 281475109153596)

  spawnMobile("space_tatooine", "imperial_noncom", 300, 3.9, 451.4, 328.8, -169, 281475109153596)
  spawnMobile("space_tatooine", "imperial_noncom", 300, 5.8, 451.4, 326.3, 129, 281475109153596)

--  spawnMobile("space_tatooine", "grandadmiral_sait", 3600, -0.1, 453.6, 325.3, 179, 281475109153596)


	local pTrigger = spawnMobile("space_tatooine", "blackguard_mouse_droid", 3600, -0.2, 173.8, 27.0, 0, 281475109153579)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "isdScreenPlay", "notifyTriggerDead", pTrigger)
	end
	writeData("isdScreenPlay:spawnState",0)	
end

function isdScreenPlay:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("space_tatooine", "krix_swiftshadow", 0, -0.2, 173.8, 27.0, 0, 281475109153579) print("spawned Krix")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("isdScreenPlay:spawnState", 1)
		writeData("isdboss", oBoss:getObjectID())			
		spatialChat(pBoss, "You dare board this Star Destroyer without authorization? You all shall perish for your mis step!")	
		createObserver(DAMAGERECEIVED,"isdScreenPlay","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "isdScreenPlay", "notifyBossDead", pBoss)
		createEvent(1800000, "isdScreenPlay", "despawnBoss", pBoss)		
	end)

	return 0
end

function isdScreenPlay:notifyBossDead(pBoss, pPlayer)
	writeData("isdScreenPlay:spawnState", 0)
	return 0
end

function isdScreenPlay:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("isdboss"),true)
	writeData("isdScreenPlay:spawnState", 0)
	return 0
end

function isdScreenPlay:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	forcePeace(pAddSix)
	forcePeace(pAddSeven)
	forcePeace(pAddEight)
	spHelper.destroy(readData("krixadd"),true)
	spHelper.destroy(readData("krixadd2"),true)
	spHelper.destroy(readData("krixadd3"),true)
	spHelper.destroy(readData("krixadd4"),true)
	spHelper.destroy(readData("krixadd5"),true)
	spHelper.destroy(readData("krixadd6"),true)
	spHelper.destroy(readData("krixadd7"),true)
	spHelper.destroy(readData("krixadd8"),true)
	return 0
end

function isdScreenPlay:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -0.2
		local y1 = 27.0
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 35
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Run back to the Empire and tell them this ship is OURS!")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "isdScreenPlay", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("isdScreenPlay:spawnState") == 1) then
			spatialChat(pBoss, "Troopers! Repel the boarders!")
			writeData("isdScreenPlay:spawnState",2)
			local pAdd = spawnMobile("space_tatooine", "blackguard_commando", 0, 30.1, 173.8, 40.6, -90, 281475109153579)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("krixadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "target acquired")
	
			local pAddTwo = spawnMobile("space_tatooine", "blackguard_commando", 0, 30.1, 173.8, 36.4, -90, 281475109153579)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("krixadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "target acquired")
		
			local pAddThree = spawnMobile("space_tatooine", "blackguard_commando", 0, -30.7, 173.8, 44.5, 90, 281475109153579)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("krixadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "target acquired")
		
			local pAddFour = spawnMobile("space_tatooine", "blackguard_commando", 0, -9.9, 173.8, 6.5, 0, 281475109153579)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("krixadd4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "target acquired")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("isdScreenPlay:spawnState") == 2) then
			spatialChat(pBoss,"++COMLINK++ Come to me and attack invaders")
			writeData("isdScreenPlay:spawnState", 3)
			local pAddFive = spawnMobile("space_tatooine", "blackguard_droid_add",0,  -0.2, 173.8, 32.9, 45, 281475109153579)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("krixadd5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "+TARGET LOCK+")
			local pAddSix = spawnMobile("space_tatooine", "blackguard_droid_add",0,  1.6, 173.8, 31.9, -45, 281475109153579)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("krixadd6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "+TARGET LOCK+")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("isdScreenPlay:spawnState") == 3) then
			spatialChat(pBoss,"++COMLINK++ Activate reserves now!")
			writeData("isdScreenPlay:spawnState", 4)
			local pAddSeven = spawnMobile("space_tatooine", "blackguard_atst", 0, -3.6, 173.8, 33.9, 45, 281475109153579)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("krixadd7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSeven, "Opening fire Sir")
			local pAddEight = spawnMobile("space_tatooine",  "blackguard_atst", 0, 3.6, 173.8, 31.9, -45, 281475109153579)
			ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
			writeData("krixadd8", eighthTime:getObjectID())
				eighthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddEight, "Firing on all targets")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("isdScreenPlay:spawnState") == 4) then
			spatialChat(pBoss, "You may have won this battle, but you have yet to face the Grand Admiral. All of your fates are sealed!")
		end
	end

	return 0
end

function isdScreenPlay:resetScreenplayStatus(pPlayer)
	writeData("isdScreenPlay:spawnState", 1)
	return 0	
end

-- End of Krix Swiftshadow Fight
function isdScreenPlay:teleportOut(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("tatooine", 3486.8, 5.0, -4851.4, 0)
	return 0
end
