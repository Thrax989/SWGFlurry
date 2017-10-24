bslaver_compoundScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("bslaver_compoundScreenPlay" ,true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Slave Compound")

function bslaver_compoundScreenPlay :start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
	end
end


function bslaver_compoundScreenPlay:spawnMobiles()

-- We have brought Kashyyyk back, to the people of Star Wars Galaxies. Many thanks to our Development Team. 
-- (-Heat, Rose, Castiel, Traga, -Myikul, Katkazza, Zipstor, Charis and Prime.)
-- Long Live Bloodfin!!!
-- Six total NPC's and a bad ass mouf. 
-- ceremonial_guard
-- blackscale_slaver
-- blackscale_enforcer
-- enslaved_wookiee_defender
-- warden_tosk
-- cyssc
-- waypoint location -3337 200 5195, Kashyyyk.

-- [Dungeon Entrance Guards]
spawnMobile("kashyyyk", "ceremonial_guard", 200, -3338.8,200.0,5195.7,0,0)
spawnMobile("kashyyyk", "ceremonial_guard", 200, -3335.0,200.0,5195.7,0,0)

-- [Cell Identification Number 281475301215523 - lower walkway]
spawnMobile("kashyyyk", "ceremonial_guard", 1200, 27.2,-60.0,-1.7,90,281475301215523)
spawnMobile("kashyyyk", "ceremonial_guard", 1200, 27.2,-60.0,-4.3,90,281475301215523)
spawnMobile("kashyyyk", "ceremonial_guard", 1200, 27.2,-60.0,14.3,90,281475301215523)
spawnMobile("kashyyyk", "ceremonial_guard", 1200, 27.2,-60.0,11.7,90,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 37.2,-60.0,-3.1,90,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 55.2,-60.0,-3.4,90,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 68.5,-60.0,-2.8,70,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 66.4,-60.0,12.6,270,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 54.8,-60.0,12.6,270,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 36.5,-60.0,13.1,270,281475301215523)

-- [Cell Identification Number 281475301215523 - middle walkway]
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 35.8,-72.0,35.0,180,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 35.6,-72.0,-3.4,180,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 35.2,-72.0,-24.9,180,281475301215523)

-- [Cell Identification Number 281475301215523 - upper walkway]
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 83.6,-72.0,-24.3,0,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 83.7,-72.0,-2.9,0,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 83.8,-72.0,13.8,0,281475301215523)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 83.8,-72.0,35.0,0,281475301215523)

-- [Cell Identification Number 281475301215523 - top walkway]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 75, 29.8,-48.0,3.9,0,281475301215523)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 75, 61.6,-48.0,-24.7,270,281475301215523)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 75, 89.1,-48.0,8.1,0,281475301215523)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 75, 62.0,-48.0,34.9,270,281475301215523)



-- [Cell Identification Number 281475301215516]
spawnMobile("kashyyyk", "cyssc", 1200, 24.9,-60.0,3.3,225,281475301215516)
spawnMobile("kashyyyk", "ceremonial_guard", 1200, 22.3,-60.0,4.4,180,281475301215516)
spawnMobile("kashyyyk", "ceremonial_guard", 1200, 24.9,-60.0,1.6,270,281475301215516)

-- [Cell Identification Number 281475301215515]
spawnMobile("kashyyyk", "ceremonial_guard", 1200, 25.8,-60.0,14.3,270,281475301215515)
spawnMobile("kashyyyk", "ceremonial_guard", 1200, 25.8,-60.0,11.7,270,281475301215515)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 13.6,-64.0,13.1,270,281475301215515)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 4.7,-64.0,13.0,270,281475301215515)

-- [Cell Identification Number 281475301215514]
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -7.5,-64.0,39.2,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -7.5,-64.0,41.7,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -7.5,-64.0,43.9,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -7.5,-64.0,45.2,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -7.5,-64.0,47.7,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -7.5,-64.0,49.9,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -7.5,-64.0,51.2,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -7.5,-64.0,53.7,90,281475301215514)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, -18.8,-64.0,6.5,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -13.0,-64.0,40.5,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -13.0,-64.0,43.0,90,281475301215514)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -13.0,-64.0,47.9,90,281475301215514)

-- [Cell Identification Number 281475301215513]
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 2.1,-64.0,46.7,90,281475301215513)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 21.5,-72.0,46.7,90,281475301215513)

-- [Cell Identification Number 281475301215512]
spawnMobile("kashyyyk", "blackscale_slaver", 75, 35.4,-72.0,46.7,90,281475301215512)

-- Cell Identification Number 281475301215510]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 20.0,-72.0,-35.2,180,281475301215510)

-- [Cell Identification Number 281475301215509]
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 19.8,-74.0,-52.9,180,281475301215509)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, 31.4,-74.0,-63.1,90,281475301215509)

-- [Cell Identification Number 281475301215508]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 51.4,-74.0,-82.3,90,281475301215508)

-- [Cell Identification Number 281475301215507]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 51.4,-74.0,-82.3,90,281475301215507)

-- [Cell Identification Number 281475301215506]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 83.5,-74.0,-42.2,0,281475301215506)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 85.7,-74.0,-41.4,320,281475301215506)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 81.2,-74.0,-41.6,40,281475301215506)

-- [Cell Identification Number 281475301215505]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 83.5,-72.0,-30.9,0,281475301215505)

-- [Cell Identification Number 281475301215504]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 83.8,-72.0,48.8,0,281475301215504)

-- [Cell Identification Number 281475301215503]
spawnMobile("kashyyyk", "blackscale_slaver", 75, 86.2,-72.0,65.1,90,281475301215503)
spawnMobile("kashyyyk", "blackscale_slaver", 75, 98.7,-69.5,65.0,90,281475301215503)
spawnMobile("kashyyyk", "blackscale_slaver", 75, 109.6,-64.0,65.1,90,281475301215503)

-- [Cell Identification Number 281475301215502)]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 120.2,-64.0,56.5,210,281475301215502)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 121.6,-64.0,45.7,300,281475301215502)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 124.7,-64.0,52.0,262,281475301215502)

-- [Cell Identification Number 281475301215501]
spawnMobile("kashyyyk", "blackscale_slaver", 75, 107.4,-64.0,44.0,180,281475301215501)
spawnMobile("kashyyyk", "blackscale_slaver", 75, 107.6,-59.6,30.3,180,281475301215501)
spawnMobile("kashyyyk", "blackscale_slaver", 75, 107.7,-56.0,17.7,180,281475301215501)

-- [Cell Identification Number 281475301215499]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 123.5,-56.0,-6.0,180,281475301215499)

-- [Cell Identification Number 281475301215498]
spawnMobile("kashyyyk", "blackscale_slaver", 75, 119.2,-56.0,-19.0,270,281475301215498)
spawnMobile("kashyyyk", "blackscale_slaver", 75, 108.0,-53.3,-19.1,270,281475301215498)
spawnMobile("kashyyyk", "blackscale_slaver", 75, 96.3,-48.0,-19.1,270,281475301215498)

-- [Cell Identification Number 281475301215517]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 101.5,-48.0,29.7,270,281475301215517)

-- [Cell Identification Number 281475301215518]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 83.6,-48.0,48.8,180,281475301215518)

-- [Cell Identification Number 281475301215519]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 35.7,-48.0,47.3,180,281475301215519)

-- [Cell Identification Number 281475301215495]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, -32.6,-28.0,-19.6,0,281475301215495)

-- [Cell Identification Number 281475301215489]
spawnMobile("kashyyyk", "blackscale_slaver", 75, -3.4,0.3,-1.5,0,281475301215489)

-- [Cell Identification Number 281475301215492]
spawnMobile("kashyyyk", "blackscale_slaver", 75, 3.5,0.0,1.7,180,281475301215492)
spawnMobile("kashyyyk", "blackscale_slaver", 75, 3.7,-12.0,19.3,180,281475301215492)

-- [Cell Identification Number 281475301215493]
spawnMobile("kashyyyk", "blackscale_slaver", 75, -6.3,-12.0,29.0,90,281475301215493)
spawnMobile("kashyyyk", "blackscale_slaver", 75, -17.1,-17.4,29.1,90,281475301215493)
spawnMobile("kashyyyk", "blackscale_slaver", 75, -29.3,-20.0,29.2,90,281475301215493)
-- [Cell Identification Number 281475301215494]
spawnMobile("kashyyyk", "blackscale_slaver", 75, -32.3,-20.0,19.2,0,281475301215494)
spawnMobile("kashyyyk", "blackscale_slaver", 75, -32.6,-28.0,-0.5,0,281475301215494)

-- [Cell Identification Number 281475301215496]
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -23.0,-28.0,-6.8,270,281475301215496)
spawnMobile("kashyyyk", "blackscale_enforcer", 75, -1.9,-36.0,-7.0,270,281475301215496)

-- [Cell Identification Number 281475301215497]
spawnMobile("kashyyyk", "blackscale_slaver", 75, 3.2,-36.0,1.8,180,281475301215497)
spawnMobile("kashyyyk", "blackscale_slaver", 75, 3.6,-44.0,20.3,180,281475301215497)
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 12.8,-44.0,29.0,270,281475301215497)

-- [Cell Identification Number 281475301215520]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 19.7,-48.0,-19.2,90,281475301215520)

-- [Cell Identification Number 281475301215521]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 35.5,-48.0,-35.7,0,281475301215521)

-- [Cell Identification Number 281475301215522]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 83.4,-48.0,-36.1,0,281475301215522)

-- [Cell Identification Number 281475301215518]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 83.4,-48.0,47.8,180,281475301215518)

-- [Cell Identification Number 281475301215519]
spawnMobile("kashyyyk", "enslaved_wookiee_defender", 1200, 35.3,-48.0,46.9,180,281475301215519)

-- [Cell Identification Number 281475301215524]
-- spawnMobile("kashyyyk", "warden_tosk", 1200, 66.7,-60.0,5.3,180,281475301215524)

	local pTrigger = spawnMobile("kashyyyk", "blackscale_enforcer", 3600, 66.7,-60.0,5.3,180,281475301215524)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "bslaver_compoundScreenPlay", "notifyTriggerDead", pTrigger)
	end
	writeData("bslaver_compoundScreenPlay:spawnState",0)	
end

function bslaver_compoundScreenPlay:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("kashyyyk", "warden_tosk", 0, 66.7,-60.0,5.3,180,281475301215524) print("spawned Slaver Boss")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("bslaver_compoundScreenPlay:spawnState", 1)
		writeData("bslaver_compoundScreenPlay", oBoss:getObjectID())			
		spatialChat(pBoss, "Entering this facility without authorization means death... so prepare to die scum")	
		createObserver(DAMAGERECEIVED,"bslaver_compoundScreenPlay","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "bslaver_compoundScreenPlay", "notifyBossDead", pBoss)
		createEvent(1800000, "bslaver_compoundScreenPlay", "despawnBoss", pBoss)		
	end)
	return 0
end

function bslaver_compoundScreenPlay:notifyBossDead(pBoss, pPlayer)
	writeData("bslaver_compoundScreenPlay:spawnState", 0)
	return 0
end

function bslaver_compoundScreenPlay:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("bslaver_compoundScreenPlay"),true)
	writeData("bslaver_compoundScreenPlay:spawnState", 0)
	return 0
end

function bslaver_compoundScreenPlay:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 66.7
		local y1 = 5.3
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 8
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "They always run away")
			boss:healDamage(pBoss, 0, 2000000)
			boss:healDamage(pBoss, 3, 2000000)
			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "bslaver_compoundScreenPlay", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("bslaver_compoundScreenPlay:spawnState") == 1) then
			spatialChat(pBoss, "Sounding alarm, calling in backup troops")
			writeData("bslaver_compoundScreenPlay:spawnState",2)
			local pAdd = spawnMobile("kashyyyk", "enslaved_wookiee_defender", 0, 65.2,-60.0,8.7,180,281475301215524)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "")
	
			local pAddTwo = spawnMobile("kashyyyk", "enslaved_wookiee_defender", 0, 64.8,-60.0,1.9,180,281475301215524)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "AooWreeoowwww")
		
			local pAddThree = spawnMobile("kashyyyk", "enslaved_wookiee_defender", 0, 69.7,-60.0,1.7,180,281475301215524)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "RooooWWRRRrr")
		
			local pAddFour = spawnMobile("kashyyyk", "enslaved_wookiee_defender", 0, 71.1,-60.0,7.1,180,281475301215524)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("bslaver_compoundScreenPlay:spawnState") == 2) then
			spatialChat(pBoss,"AHHH  You havent beaten me yet")
			writeData("bslaver_compoundScreenPlay:spawnState", 3)
			local pAddFive = spawnMobile("kashyyyk", "enslaved_wookiee_defender", 0, 65.2,-60.0,8.7,180,281475301215524)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "AooWrepppeoowwwwng")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("bslaver_compoundScreenPlay:spawnState") == 3) then
			spatialChat(pBoss,"IMPOSSIBLE! HELP ME")
			writeData("bslaver_compoundScreenPlay:spawnState", 4)
			local pAddSix = spawnMobile("kashyyyk", "enslaved_wookiee_defender", 0, 64.8,-60.0,1.9,180,281475301215524)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "roooAooWreeoowwwwte")
			local pAddSeven = spawnMobile("kashyyyk",  "enslaved_wookiee_defender", 0, 69.7,-60.0,1.7,180,281475301215524)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "AooWreeoowwwwt")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("bslaver_compoundScreenPlay:spawnState") == 4) then
			spatialChat(pBoss, "help")
		end
	end
	return 0
end

function bslaver_compoundScreenPlay:resetScreenplayStatus(pPlayer)
	writeData("bslaver_compoundScreenPlay:spawnState", 1)
	return 0	
end

-- End of fight
