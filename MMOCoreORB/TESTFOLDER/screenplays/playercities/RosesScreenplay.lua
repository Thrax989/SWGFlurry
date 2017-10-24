RosesScreenplay = ScreenPlay:new {numberOfActs = 1, }

spHelper = require("screenplayHelper")
registerScreenPlay("RosesScreenplay" ,true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Lake Rose Ewok Dungeon")

function RosesScreenplay :start()
	if (isZoneEnabled("naboo")) then
		self:spawnMobiles()
		self:spawnSceneObjects()                
		
	end
end

function RosesScreenplay:spawnSceneObjects()

--	spawnSceneObject("naboo","object/tangible/saga_system/rewards/jabba_fancyrug.iff", -4892.2, 6.0, 4093.7, -2, 0)

end

function RosesScreenplay:spawnMobiles()
	--have to minus 8 on all Z on all mobiles, first cells 892 done
        --Cell [7125560] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, -1.0,  -1.9,    3.9, 23, 281475177563892)
	spawnMobile("naboo", "ewok_digger", 300,  1.0, -9.0,   -9.2,-48, 281475177563892)
	spawnMobile("naboo", "ewok_digger", 300, -1.3, -9.4,   -9.2, 35, 281475177563892)

	--Cell [7125561] squill cave reference
	spawnMobile("naboo", "ewok_digger", 300, -18.2, -21.1, -14.7, -157, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -12.9, -19.3, -25.7, -12, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -28.7, -20.6, -29.1, -1, 281475177563893)
	spawnMobile("naboo", "ewok_guard", 300, -37.9, -22.9, -28.0, -67, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -42.3, -24.8, -26.5, 118, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -36.9, -23.5, -24.4, -136, 281475177563893)
	spawnMobile("naboo", "ewok_guard", 300, -47.8, -29.2, -6.3, 152, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -7.5, -22.3, -44.4, -166, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -4.9, -22.0, -47.6, -91, 34, 281475177563893)
	spawnMobile("naboo", "ewok_guard", 300, -7.8, -22.0, -51.0, -24, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -12.9, -22.2, -50.5, 49, 281475177563893)
	spawnMobile("naboo", "ewok_guard", 300, -34.0, -23.6, -14.6, 124, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -28.8, -22.5, -14.9, -108, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -4.9, -22.0, -47.2, -108, 281475177563893)
	spawnMobile("naboo", "ewok_digger", 300, -11.6, -23.7, -45.9, 141, 281475177563893)
	
	--Cell [7125564] squill cave reference
	spawnMobile("naboo", "ewok_digger", 300, -63.1, -38.8, -71.2, -91, 281475177563896)
	spawnMobile("naboo", "ewok_guard", 300, -62.9, -38.6, -74.6, -63, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -68.5, -38.8, -75.6, -30, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -75.2, -39.0, -74.7, -2, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -79.8, -38.3, -72.6, 11, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -83.3, -39.3, -67.2, 57, 281475177563896)
	spawnMobile("naboo", "ewok_guard", 300, -81.8, -38.5, -41.4, 159, 281475177563896)
	spawnMobile("naboo", "ewok_guard", 300, -77.7, -38.9, -47.7, -55, 281475177563896)
	
	spawnMobile("naboo", "ewok_digger", 300, -73.8, -21.9, -40.5, -90, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -75.4, -21.9, -43.3, -49, 281475177563896)
	spawnMobile("naboo", "ewok_guard", 300, -80.4, -23.0, -43.7, -11, 281475177563896)
	spawnMobile("naboo", "ewok_guard", 300, -82.9, -22.8, -38.7, 108, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -61.6, -22.2, -48.5, -125, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -62.3, -22.9, -58.1, -58, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -73.9, -23.8, -63.2, -86, 281475177563896)
	spawnMobile("naboo", "ewok_guard", 300, -73.0, -23.5, -71.4, -74, 281475177563896)
	spawnMobile("naboo", "ewok_digger", 300, -65.6, -22.5, -75.4, 47, 281475177563896)
	spawnMobile("naboo", "ewok_guard", 300, -62.0, -22.0, -74.4, -29, 281475177563896)

        --Cell [7125565] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, -135.0,  -41.7, -60.2,    128, 281475177563897)
	spawnMobile("naboo", "ewok_digger", 300, -132.6,  -41.9, -59.7,   -168, 281475177563897)
	spawnMobile("naboo", "ewok_digger", 300, -130.6,  -41.6, -62.0,    -87, 281475177563897)
	spawnMobile("naboo", "ewok_guard", 300, -133.3,  -41.5, -63.8,     -6, 281475177563897)
	spawnMobile("naboo", "ewok_digger", 300, -108.7,  -44.4, -57.9,   -144, 281475177563897)
	spawnMobile("naboo", "ewok_guard", 300,  -89.9,  -41.6, -60.9,     84, 281475177563897)
	spawnMobile("naboo", "ewok_digger", 300, -100.6,  -43.6, -64.8,    -34, 281475177563897)
	spawnMobile("naboo", "ewok_guard", 300,  -95.4,  -42.6, -54.7,   -141, 281475177563897)

        --Cell [7125568] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, -114.2, -61.8, -116.7, 32, 281475177563900)
	spawnMobile("naboo", "ewok_digger", 300, -113.6, -61.7, -112.4, 159, 281475177563900)
	spawnMobile("naboo", "ewok_digger", 300, -110.7, -61.6, -107.9, 163, 281475177563900)
	spawnMobile("naboo", "ewok_guard", 300, -103.6, -61.6, 103.4, 66, 281475177563900)
	spawnMobile("naboo", "ewok_digger", 300, -97.4, -62.4, -103.4, -85, 281475177563900)
	spawnMobile("naboo", "ewok_digger", 300, -89.3, -63.6, -106.5, 174, 281475177563900)
	spawnMobile("naboo", "ewok_digger", 300, -89.0, -63.6, -111.2, -5, 281475177563900)
	spawnMobile("naboo", "ewok_guard", 300, -81.2, -64.1, -107.0, 61, 281475177563900)
	spawnMobile("naboo", "ewok_guard", 300, -78.7, -63.3, -103.4, 133, 281475177563900)
	spawnMobile("naboo", "ewok_digger", 300, -74.5, -63.0, -108.0, -78, 281475177563900)

        --Cell [7125569] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, -164.9, -41.6, -63.4, 146, 281475177563901)
	spawnMobile("naboo", "ewok_digger", 300, -161.6, -41.6, -64.5, -108, 281475177563901)
	spawnMobile("naboo", "ewok_guard", 300, -160.1, -41.6, -71.3, -171, 281475177563901)
	spawnMobile("naboo", "ewok_protector", 300, -163.1, -42.0, -73.5, 107, 281475177563901)
	spawnMobile("naboo", "ewok_digger", 300, -162.3, -41.9, -76.7, 39, 281475177563901)
	spawnMobile("naboo", "ewok_protector", 300, -163.3, -41.8, -80.8, 36, 281475177563901)
	spawnMobile("naboo", "ewok_digger", 300, -159.8, -42.0, -80.6, 29, 281475177563901)
	spawnMobile("naboo", "ewok_protector", 300, -163.8, -41.4, -86.8, 32, 281475177563901)
	spawnMobile("naboo", "ewok_guard", 300, -161.8, -41.7, -83.5, -152, 281475177563901)

        --Cell [7125570] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, -121.0, -45.9, -81.2, -121, 281475177563902)
	spawnMobile("naboo", "ewok_protector", 300, -123.9, -45.8, -81.3, -106, 281475177563902)
	spawnMobile("naboo", "ewok_digger", 300, -128.7, -45.7, -90.7, -1, 281475177563902)
	spawnMobile("naboo", "ewok_protector", 300, -142.0, -45.8, -78.8, 135, 281475177563902)
	spawnMobile("naboo", "ewok_guard", 300, -146.2, -45.8, -82.9, 64, 281475177563902)
	spawnMobile("naboo", "ewok_protector", 300, -145.9, -45.8, -89.8, 53, 281475177563902)
	spawnMobile("naboo", "ewok_protector", 300, -133.5, -45.8, -78.4, 117, 281475177563902)

        --Cell [7125571] squill cave reference
	spawnMobile("naboo", "ewok_digger", 300,  -176.7, -45.8, -122.5, 54, 281475177563903)
	spawnMobile("naboo", "ewok_guard", 300,  -167.5, -46.9, -123.2, 9, 281475177563903)
	spawnMobile("naboo", "ewok_digger", 300,  -177.1, -44.7, -109.3, 118, 281475177563903)

        --Cell [7125575] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, -122.5, -49.5, -24.2, 130, 281475177563907)
	spawnMobile("naboo", "ewok_digger", 300, -123.3, -49.6, -29.4, 64, 281475177563907)
	spawnMobile("naboo", "ewok_protector", 300, -114.6, -50.0, -34.7, 51, 281475177563907)
	spawnMobile("naboo", "ewok_guard", 300, -111.9, -49.6, -34.8, -63, 281475177563907)
	spawnMobile("naboo", "ewok_digger", 300, -112.9, -50.1, -32.5, -159, 281475177563907)
	spawnMobile("naboo", "ewok_guard", 300, -112.7, -49.6, -25.0, 129, 281475177563907)
	spawnMobile("naboo", "ewok_digger", 300, -106.8, -49.5, -24.9, -98, 281475177563907)
	spawnMobile("naboo", "ewok_protector", 300, -106.6, -50.1, -28.7, -54, 281475177563907)
	spawnMobile("naboo", "ewok_guard", 300, -101.6, -50.5, -37.1, -27, 281475177563907)

        --Cell [7125578] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, 18.3, -13.2, -16.8, -175, 281475177563910)
	spawnMobile("naboo", "ewok_digger", 300, 15.7, -20.0, -41.1, 20, 281475177563910)
	spawnMobile("naboo", "ewok_digger", 300, 18.5, -19.7, -39.4, -86, 281475177563910)
	spawnMobile("naboo", "ewok_digger", 300, 18.5, -25.1, -54.9, -15, 281475177563910)

	--Cell [7125579] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, 15.7, -27.4, -69.0, 136, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, 18.7, -27.3, -68.4, -156, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, 18.5, -27.2, -76.5, -70, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, 14.7, -27.4, -76.8, 55, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, 17.2, -27.2, -82.1, 1, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, -10.6, -26.5, -81.7, 95, 281475177563911)
	spawnMobile("naboo", "ewok_guard", 300, -5.3, -27.1, -82.5, -82, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, -6.8, -27.1, -69.0, -64, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, -6.4, -27.1, -64.6, -125, 281475177563911)
	spawnMobile("naboo", "ewok_guard", 300, -10.7, -26.7, -62.6, 152, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, -16.3, -27.0, -76.4, 41, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, 7.4, -27.6, -83.4, 24, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, 2.2, -27.6, -82.9, 55, 281475177563911)
	spawnMobile("naboo", "ewok_digger", 300, -12.0, -26.9, -78.5, 114, 281475177563911)
	
	--Cell [7125581] squill cave reference 
	spawnMobile("naboo", "ewok_guard", 300, -18.3, -35.9, -107.5, 48, 281475177563913)
	spawnMobile("naboo", "ewok_digger", 300, -15.0,-35.5, -107.7, 3, 281475177563913)
	spawnMobile("naboo", "ewok_digger", 300, -13.3, -35.5, -106.8, -45, 281475177563913)
	spawnMobile("naboo", "ewok_guard", 300, -11.9, -35.8, -101.6, -117, 281475177563913)
	spawnMobile("naboo", "ewok_digger", 300, -17.3, -36.2, -101.8, 152, 281475177563913)
	spawnMobile("naboo", "ewok_guard", 300, -32.9, -36.4, -98.8, 43, 281475177563913)
	spawnMobile("naboo", "ewok_digger", 300, -36.0, -36.0, -93.4, 90, 281475177563913)
	spawnMobile("naboo", "ewok_digger", 300, -37.0, -36.0, -115.0, -58, 281475177563913)
	spawnMobile("naboo", "ewok_guard", 300, -41.0, -36.5, -114.7, -10, 281475177563913)
	spawnMobile("naboo", "ewok_digger", 300, -56.7, -42.8, -96.4, 139, 281475177563913)
	spawnMobile("naboo", "ewok_digger", 300, -52.5, -40.8, -95.4, -141, 281475177563913)
	spawnMobile("naboo", "ewok_guard", 300, -53.5, -41.6, -99.6, -47, 281475177563913)
	spawnMobile("naboo", "ewok_digger", 300, -53.4, -41.4, -114.6, -27, 281475177563913)
	
	--Cell [7125585] squill cave reference
	spawnMobile("naboo", "ewok_guard", 300, -17.1, -59.7, -115.7, 45, 281475177563917)
	spawnMobile("naboo", "ewok_digger", 300, -16.1, -59.6, -102.7, -130, 281475177563917)
	spawnMobile("naboo", "ewok_guard", 300, 1.1, -63.4, -114.5, 57, 281475177563917)
	spawnMobile("naboo", "ewok_digger", 300, 6.8, -71.8, -114.7, -19, 281475177563917)
	spawnMobile("naboo", "ewok_digger", 300, 10.4, -64.1, -108.7, -111, 281475177563917)
	spawnMobile("naboo", "ewok_guard", 300, 4.4, -63.5, -106.9, 147, 281475177563917)
	spawnMobile("naboo", "ewok_digger", 300, 9.1, -62.1, -99.6, -94, 281475177563917)
	spawnMobile("naboo", "ewok_guard", 300, -1.6, -60.2, -91.1, 118, 281475177563917)
	spawnMobile("naboo", "ewok_digger", 300, 9.8, -58.8, -79.8, -154, 281475177563917)
	spawnMobile("naboo", "ewok_guard", 300, 8.5, -59.2, -82.7, 25, 281475177563917)

        --Cell [7125587] squill cave reference 
	spawnMobile("naboo", "ewok_guard", 300, -42.8, -58.2, -153.7, -139, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -41.9, -58.1, -157.9, -100, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -45.7, -58.8, -158.0, 47, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -41.4, -58.0, -168.5, -103, 281475177563919)
	spawnMobile("naboo", "ewok_guard", 300, -44.0, -57.7, -186.4, -62, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -49.5, -58.1, -189.1, -12, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -55.3, -57.7, -187.0, 25, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -57.6, -58.0, -181.7, 81, 281475177563919)
	spawnMobile("naboo", "ewok_guard", 300, -54.0, -58.8, -175.4, 128, 281475177563919) 
	spawnMobile("naboo", "ewok_guard", 300, -68.3, -58.3, -165.7, 20, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -61.2, -57.8, -165.7, -24, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -80.2, -57.0, -160.7, -43, 281475177563919)
	spawnMobile("naboo", "ewok_guard", 300, -87.8, -58.2, -160.6, 51, 281475177563919)  
	spawnMobile("naboo", "ewok_digger", 300, -87.4, -57.1, -199.0, 44, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -87.1, -57.5, -191.8, 98, 281475177563919)
	spawnMobile("naboo", "ewok_guard", 300, -78.8, -58.0, -196.7, -103, 281475177563919)
	spawnMobile("naboo", "ewok_guard", 300, -84.4, -58.4, -176.7, 132, 281475177563919)
	spawnMobile("naboo", "ewok_digger", 300, -73.9, -57.6, -174.3, -162, 281475177563919)
	spawnMobile("naboo", "ewok_guard", 300, -80.7, -58.3, -185.9, -27, 281475177563919)
	
	--Cell [7125588] squill cave reference
--[[	spawnMobile("naboo", "ewok_protector", 300, -57.7, -58.6, -207.2, 10, 281475177563920)
	spawnMobile("naboo", "ewok_protector", 300, -50.5, -58.6, -214.0, -94, 281475177563920)
	spawnMobile("naboo", "ewok_protector", 300, -60.2, -57.5, -223.7, 110, 281475177563920)
	spawnMobile("naboo", "ewok_protector", 300, -51.0, -57.0, -229.2, -81, 281475177563920)
	spawnMobile("naboo", "ewok_protector", 300, -68.4, -56.6, -231.2, 113, 281475177563920)
	spawnMobile("naboo", "ewok_protector", 300, -66.4, -57.9, -239.1, 67, 281475177563920)
	spawnMobile("naboo", "ewok_banshee", 300, -55.4, -58.0, -238.9, -37, 281475177563920)
	spawnMobile("naboo", "ewok_protector", 300, -55.2, -57.7, -232.7, -122, 281475177563920)--]]





	local pTrigger = spawnMobile("naboo", "ewok_protector", 3600, -60.2, -57.5, -223.7, 110, 281475177563920)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "RosesScreenplay", "notifyTriggerDead", pTrigger)
	end
	writeData("RosesScreenplay:spawnState",0)	
end

function RosesScreenplay:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("naboo", "ewok_banshee", 0, -55.4, -58.0, -238.9, -37, 281475177563920) print("spawned Da BANSHEEEEE")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("RosesScreenplay:spawnState", 1)
		writeData("banshee", oBoss:getObjectID())			
		spatialChat(pBoss, "You come down here and invade our sacred chambers??? Now you will pay for your lack of vision with your lives.")	
		createObserver(DAMAGERECEIVED,"RosesScreenplay","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "RosesScreenplay", "notifyBossDead", pBoss)
		createEvent(1800000, "RosesScreenplay", "despawnBoss", pBoss)		
	end)
	return 0
end

function RosesScreenplay:notifyBossDead(pBoss, pPlayer)
	writeData("RosesScreenplay:spawnState", 0)
	return 0
end

function RosesScreenplay:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("banshee"),true)
	writeData("RosesScreenplay:spawnState", 0)
	return 0
end

function RosesScreenplay:boss_damage(pBoss, pPlayer)


	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -55.4
		local y1 = -238.9
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 90
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Your retreat was expected")
			boss:healDamage(pBoss, 0, 2000000)
			boss:healDamage(pBoss, 3, 2000000)
			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "RosesScreenplay", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("RosesScreenplay:spawnState") == 1) then
			spatialChat(pBoss, "You all will die here amongst the bones of our sacred dead! PROTECTORS!")
			writeData("RosesScreenplay:spawnState",2)
			local pAdd = spawnMobile("naboo", "ewok_protector", 0, -51.0, -57.0, -229.2, -81, 281475177563920)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "Akeeata teera ruha E s'eesht etke!!")
	
			local pAddTwo = spawnMobile("naboo", "ewok_protector", 0, -57.7, -58.6, -207.2, 10, 281475177563920)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "Che womok!!")
		
			local pAddThree = spawnMobile("naboo", "ewok_protector", 0, -50.5, -58.6, -214.0, -94, 281475177563920)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
--			spatialChat(pAddThree, "++TARGET LOCKED++")
		
			local pAddFour = spawnMobile("naboo", "ewok_protector", 0, -66.4, -57.9, -239.1, 67, 281475177563920)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
--			spatialChat(pAddThree, "++TARGET LOCKED++")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("RosesScreenplay:spawnState") == 2) then
			spatialChat(pBoss,"E s'eesht etke jeerota gungan na-chin, noot!")
			writeData("RosesScreenplay:spawnState", 3)
			local pAddFive = spawnMobile("naboo", "jaajaabinks", 0, -66.4, -57.9, -239.1, 67, 281475177563920)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "Mesa Hair !  Mesa Hair hep maken messen all-n youse!!")
		end
		if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("RosesScreenplay:spawnState") == 3) then
			spatialChat(pBoss,"This cannot happen! Lord Sideous!")
			writeData("RosesScreenplay:spawnState", 4)
			local pAddSix = spawnMobile("naboo", "darth_vader_pve", 0, -68.4, -56.6, -231.2, 113, 281475177563920)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "My Master has sent me to watch you die Creature, and to kill these others so as to kill this tale here in this cave. Stormtrooper, open fire.")
			local pAddSeven = spawnMobile("naboo",  "stormtrooper_pve", 0, -66.4, -57.9, -239.1, 67, 281475177563920)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "Right away Lord Vader")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.01)) or (bossAction <= (bossMaxAction * 0.01)) or (bossMind <= (bossMaxMind * 0.01))) and readData("RosesScreenplay:spawnState") == 4) then
	--		spatialChat(pBoss, "How is this possible... it cant be real, my credits, my crew ....")
		end
	end
	return 0
end

function RosesScreenplay:resetScreenplayStatus(pPlayer)
	writeData("RosesScreenplay:spawnState", 1)	
end
        --Theed Starport 
       
--	spawnSceneObject("naboo","object/tangible/saga_system/rewards/jabba_fancyrug.iff", -4892.2, 6.0, 4093.7, -2, 0)
		

	  

