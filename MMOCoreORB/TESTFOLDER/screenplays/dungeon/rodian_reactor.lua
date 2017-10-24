rodian_reactorScreenPlay = ScreenPlay:new {numberOfActs = 1, }


spHelper = require("screenplayHelper")
registerScreenPlay("rodian_reactorScreenPlay" ,true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for rodian Power Plant")

function rodian_reactorScreenPlay :start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
	end
end


function rodian_reactorScreenPlay:spawnMobiles()
-- [Hallway - 281475301254561]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -13.2, -7.0, -14.3, 90, 281475301254561)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -13.3, -7.0, -9.8, 90, 281475301254561)
-- [T Intersect - 281475301254562]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.1, -7.0, -6.9, 180,281475301254562)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.1, -7.0, -16.8, 0,281475301254562)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -23.3, -7.0, -11.9, 90,281475301254562)
-- [Corner Hall1 - 281475301254563]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -17.1, -7.0, -0.1, 270,281475301254563)
-- [Corner Hall4 - 281475301254573]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 22.2, -7.0, -0.1, -50,281475301254573)
-- [Room1L1 - 281475301254568]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 22.1, -7.0, 15.9, 180,281475301254568)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 26.0, -7.0, 12.2, 270,281475301254568)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 26.0, -7.0, 20.2, 270,281475301254568)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 18.0, -7.0, 20.1, 90,281475301254568)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 18.0, -7.0, 12.0, 90,281475301254568)
-- [T Intersect2 - 281475301254574]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.1, -7.0, -34.3, 0,281475301254574)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -17.3, -7.0, -33.2, 270,281475301254574)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -26.9, -7.0, -33.2, 90,281475301254574)
-- [Room2L1 - 281475301254575]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -41.9, -7.0, -29.1, 90,281475301254575)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -37.9, -7.0, -29.0, 90,281475301254575)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -34.1, -7.0, -29.2, 90,281475301254575)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -34.0, -7.0, -33.0, 90,281475301254575)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -37.9, -7.0, -33.0, 90,281475301254575)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -42.3, -7.0, -33.0, 90,281475301254575)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -42.1, -7.0, -36.8, 90,281475301254575)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -38.2, -7.0, -36.8, 90,281475301254575)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -33.9, -7.0, -36.8, 90,281475301254575)
-- [CornerHall2 - 281475301254564]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.1, -7.0, -33.1, -50,281475301254564)
-- [CornerHall3 - 281475301254567]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.1, -7.0, -20.8, 135,281475301254567)
-- [RampTower - 281475301254572]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 13.3, -7.0, -28.1, -40,281475301254572)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 9.6, -31.0, -28.0, 43, 281475301254572)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 34.8, -42.0, -20.5, 180, 281475301254572)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 37.8, -42.0, -25.4, 270, 281475301254572)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 35.1, -42.0, -28.4, 0, 281475301254572)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 9.3, -55.0, -27.8, 90, 281475301254572)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 10.8, -55.0, -18.5, 180, 281475301254572)
--[4Way2 - 281475301254579]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -3.9, -31.0, -21.0, 90, 281475301254579)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 0.1, -31.0, -23.9, 0, 281475301254579)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 0.1, -31.0, -17.5, 180, 281475301254579)
--[Room1L2 - 281475301254576]
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -6.0, -31.0, -30.9, 90, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -5.6, -31.0, -39.4, 90, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -6.3, -31.0, -51.5, 90, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 6.4, -31.0, -51.5, 270, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 6.6, -31.0, -39.8, 270, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 6.7, -31.0, -30.7, 270, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.1, -31.0, -32.4, 0, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.0, -31.0, -39.6, 0, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.1, -31.0, -53.1, 0, 281475301254576)
--spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 0.0, -31.0, -51.2, 0, 281475301254576)
--[T Intersect3 - 281475301254580]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -16.0, -31.0, -16.1, 180, 281475301254580)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -16.1, -31.0, -26.2, 0, 281475301254580)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -17.2, -31.0, -21.0, 90, 281475301254580)
--[CornerHall5 - 281475301254577]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -11.4, -31.0, -37.1, 270, 281475301254577)
--[Hall5 - 281475301254582]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -15.9, -31.0, 6.3, 180, 281475301254582)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -16.0, -31.0, 9.1, 180, 281475301254582)
--[Room3L2 - 281475301254584]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -16.0, -31.0, 26.3, 180, 281475301254584)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -10.1, -31.0, 21.1, 90, 281475301254584)
--[4Way Intersect1 - 281475301254578]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.1, -31.0, 17.0, 0, 281475301254578)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 3.8, -31.0, 21.2, 270, 281475301254578)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.1, -31.0, 25.0, 180, 281475301254578)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -4.1, -31.0, 21.1, 90, 281475301254578)
--[Room2L2 - 281475301254583]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 11.9, -31.0, 17.0, 0, 281475301254583)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 16.2, -31.0, 17.1, 0, 281475301254583)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 20.4, -31.0, 17.1, 0, 281475301254583)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 20.4, -31.0, 21.0, 270, 281475301254583)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 15.8, -31.0, 20.9, 270, 281475301254583)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 11.7, -31.0, 20.9, 270, 281475301254583)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 11.8, -31.0, 25.0, 180, 281475301254583)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 16.3, -31.0, 25.2, 180, 281475301254583)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 20.2, -31.0, 25.3, 180, 281475301254583)
--[CornerHall6 - 281475301254587]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -3.7, -31.0, 40.8, 97, 281475301254587)
--[Room4L2 - 281475301254585]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -12.1, -31.0, 41.1, 90, 281475301254585)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -15.7, -31.0, 41.1, 90, 281475301254585)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -20.1, -31.0, 41.0, 90, 281475301254585)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -20.0, -31.0, 44.9, 180, 281475301254585)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -16.4, -31.0, 44.9, 180, 281475301254585)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -11.7, -31.0, 44.9, 180, 281475301254585)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -12.2, -31.0, 37.0, 0, 281475301254585)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -16.3, -31.0, 37.0, 0, 281475301254585)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -20.2, -31.0, 37.1, 0, 281475301254585)
--[T Intersect3 - 281475301254592]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.1, -55.0, -22.3, 0, 281475301254592)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.1, -55.0, -16.6, 180, 281475301254592)
--[ShortHall1 - 281475301254595]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -10.2, -55.0, -21.0, 90, 281475301254595)
--[CornerHall8 - 281475304254589]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -17.9, -55.0, -0.2, 270, 281475301254589)
--[T Intersect4 - 281475301254593]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -0.0, -55.0, 22.3, 180, 281475301254593)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -4.6, -55.0, 21.2, 90, 281475301254593)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 5.1, -55.0, 21.0, 270, 281475301254593)
--[Room2L3 - 281475301254594]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 17.9, -55.0, 17.1, 0, 281475301254594)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 22.1, -55.0, 17.1, 0, 281475301254594)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 26.0, -55.0, 17.2, 0, 281475301254594)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 26.1, -55.0, 24.9, 180, 281475301254594)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 22.2, -55.0, 24.9, 180, 281475301254594)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 18.0, -55.0, 25.1, 180, 281475301254594)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 26.1, -55.0, 21.1, 270, 281475301254594)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 21.7, -55.0, 21.1, 270, 281475301254594)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 18.1, -55.0, 21.1, 270, 281475301254594)
--[CornerHall7 - 281475301254588]
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, 18.0, -55.0, 0.1, 90, 281475301254588)

--Outside Dungeon]
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)
spawnMobile("kashyyyk", "kash_rodian_hunter", 60, math.random(25) + -4587.6, 8.0, math.random(25) + 4340.6, math.random(360), 0)

--[[RoomL3 - 281475301254591
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -26.2, -55.0, -16.8, 90, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -26.0, -55.0, -21.1, 90, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -26.1, -55.0, -25.2, 90, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -26.2, -55.0, -29.3, 90, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -26.0, -55.0, -33.2, 90, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -25.9, -55.0, -36.9, 90, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -26.0, -55.0, -41.2, 90, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -18.0, -55.0, -41.2, 270, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -18.0, -55.0, -37.1, 270, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -18.1, -55.0, -33.2, 270, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -18.2, -55.0, -29.1, 270, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -18.1, -55.0, -25.4, 270, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -18.1, -55.0, -21.3, 270, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -18.1, -55.0, -17.3, 270, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.2, -55.0, -41.1, 0, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.3, -55.0, -37.5, 0, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.3, -55.0, -33.6, 0, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.4, -55.0, -29.6, 0, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.4, -55.0, -25.5, 0, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.4, -55.0, -21.1, 0, 281475301254591)
spawnMobile("kashyyyk", "kash_rodian_hunter", 100, -22.5, -55.0, -17.4, 0, 281475301254591)--]]




	local pTrigger = spawnMobile("kashyyyk", "kash_rodian_hunter", 3600, -22.2, -55.0, -41.1, 0, 281475301254591)
	if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "rodian_reactorScreenPlay", "notifyTriggerDead", pTrigger)
	end
	writeData("rodian_reactorScreenPlay:spawnState",0)
end

function rodian_reactorScreenPlay:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("kashyyyk", "rodian_boss", 0, -22.2, -55.0, -41.1, 0, 281475301254591) print("spawned Rodian Boss")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("rodian_reactorScreenPlay:spawnState", 1)
		writeData("rodian_reactorScreenPlay", oBoss:getObjectID())
		spatialChat(pBoss, "What the hell, who are you to interfere with our affairs? More drowning hearts the walking carpets convinced to help them...I'll get a nice price for all of you on the market")
		createObserver(DAMAGERECEIVED,"rodian_reactorScreenPlay","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "rodian_reactorScreenPlay", "notifyBossDead", pBoss)
		createEvent(1800000, "rodian_reactorScreenPlay", "despawnBoss", pBoss)
	end)
	return 0
end

function rodian_reactorScreenPlay:notifyBossDead(pBoss, pPlayer)
	writeData("rodian_reactorScreenPlay:spawnState", 0)
	return 0
end

function rodian_reactorScreenPlay:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("rodian_reactorScreenPlay"),true)
	writeData("rodian_reactorScreenPlay:spawnState", 0)
	return 0
end

function rodian_reactorScreenPlay:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -22.2
		local y1 = -41.1
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY()

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 30

		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Good, run away like a coward")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)
			createEvent(3500, "rodian_reactorScreenPlay", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)
			rodian_reactorScreenPlay:despawnBoss(pBoss)
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("rodian_reactorScreenPlay:spawnState") == 1) then
			spatialChat(pBoss, "You all shall fetch a high price indeed")
			writeData("rodian_reactorScreenPlay:spawnState",2)
			local pAdd = spawnMobile("kashyyyk", "kash_rodian_hunter", 0, -26.1, -55.0, -25.2, 90, 281475301254591)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "I got him")

			local pAddTwo = spawnMobile("kashyyyk", "kash_rodian_hunter", 0, -25.9, -55.0, -36.9, 90, 281475301254591)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "no I got him")

			local pAddThree = spawnMobile("kashyyyk", "kash_rodian_hunter", 0, -18.0, -55.0, -41.2, 270, 281475301254591)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "shut it and capture them you idiots")

			local pAddFour = spawnMobile("kashyyyk", "kash_rodian_hunter", 0, -26.2, -55.0, -16.8, 90, 281475301254591)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "Yes sir")
		end

		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("rodian_reactorScreenPlay:spawnState") == 2) then
			spatialChat(pBoss,"Dont damage them too badly, we need to sell them!!")
			writeData("rodian_reactorScreenPlay:spawnState", 3)
			local pAddFive = spawnMobile("kashyyyk", "kash_rodian_hunter", 0, -22.5, -55.0, -17.4, 0, 281475301254591)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "Yes sir, Ive got a capture team coming")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("rodian_reactorScreenPlay:spawnState") == 3) then
			spatialChat(pBoss,"++COM LINK++ wheres my capture team??!")
			writeData("rodian_reactorScreenPlay:spawnState", 4)
			local pAddSix = spawnMobile("kashyyyk", "kash_rodian_hunter", 0, -22.4, -55.0, -21.1, 0, 281475301254591)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSix, "reporting in, opening fire")
			local pAddSeven = spawnMobile("kashyyyk",  "kash_rodian_hunter", 0, -18.1, -55.0, -17.3, 270, 281475301254591)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "wooohoooo nailed it")
		end

		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("rodian_reactorScreenPlay:spawnState") == 4) then
			spatialChat(pBoss, "help")
		end
	end
	return 0
end

function rodian_reactorScreenPlay:resetScreenplayStatus(pPlayer)
	writeData("rodian_reactorScreenPlay:spawnState", 1)
	return 0
end

-- End of fight
