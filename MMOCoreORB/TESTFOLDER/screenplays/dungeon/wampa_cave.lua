wampa_cave = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("wampa_cave", true)
local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function wampa_cave:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
 	end
end

function wampa_cave:spawnMobiles()

	spawnMobile("hoth", "wampa_hoth",300,1.2,9.1,-8.1,63,34673004)
	spawnMobile("hoth", "wampa_hoth",300,0.6,9.5,-3.5,99,34673004)
	spawnMobile("hoth", "wampa_hoth",300,26.6,10.3,-13.3,-8,34673005)
	spawnMobile("hoth", "wampa_hoth",300,32.3,9.5,-8.1,-105,34673005)
	spawnMobile("hoth", "wampa_hoth",300,34.7,10.3,-14.4,-70,34673005)
	spawnMobile("hoth", "wampa_hoth",300,37.4,9.8,-8.2,-109,34673005)
	spawnMobile("hoth", "wampa_hoth",300,-55.9,-18,-33.9,95,34673008)
	spawnMobile("hoth", "wampa_hoth",300,-55.6,-18,-43.2,72,34673008)
	spawnMobile("hoth", "wampa_hoth",300,-38.7,-18,-47.5,-75,34673008)
	spawnMobile("hoth", "wampa_hoth",300,-66.7,-19,-41.2,-77,34673011)
	spawnMobile("hoth", "wampa_hoth",300,-70.5,-18.9,-34.5,-161,34673011)
	spawnMobile("hoth", "wampa_hoth",300,-83.9,-18.5,-42.3,85,34673011)
	spawnMobile("hoth", "wampa_hoth",300,-36,-22,-151.4,180,34673026)
	spawnMobile("hoth", "wampa_hoth",300,-26.8,-22.9,-158,-90,34673026)
	spawnMobile("hoth", "wampa_hoth",300,-19.4,-22.6,-151.7,-135,34673026)
	spawnMobile("hoth", "wampa_hoth",300,-62,-21.8,-109.6,0,34673015)
	spawnMobile("hoth", "wampa_hoth",300,-48,-21.8,-158,0,34673023)
	spawnMobile("hoth", "wampa_hoth",300,-48,-21.8,-143,0,34673023)
	spawnMobile("hoth", "wampa_hoth",300,-41,-21.8,-136,-90,34673024)
	spawnMobile("hoth", "wampa_hoth",300,-88.3,-21.8,-110.3,210,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-98,-21.9,-114.7,50,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-107.3,-22.2,-96.6,180,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-108,-21.8,-126,0,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-123,-22,-109.5,80,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-134.7,-20.9,-112.2,77,34673016)
	spawnMobile("hoth", "ice_worm",300,-34.2,-22,-128,-180,34673024)
	spawnMobile("hoth", "ice_worm",300,-3.8,-30.2,-92,-180,34673019)
	spawnMobile("hoth", "wampa_hoth",300,-16.8,-30.2,-115.1,22,34673019)
	spawnMobile("hoth", "ice_worm",300,-18,-18,-36,0,34673007)
	spawnMobile("hoth", "ice_worm",300,-62,-18,-59.5,-180,34673009)
	spawnMobile("hoth", "ice_worm",300,-90.5,-18,-76,0,34673012)
	spawnMobile("hoth", "ice_worm",300,-53.5,-18.2,-81.7,-90,34673014)
	spawnMobile("hoth", "ice_worm",300,-108,-34,-214,89,34673031)
	spawnMobile("hoth", "ice_worm",300,-61.5,-34,-252,-90,34673034)
	spawnMobile("hoth", "ice_worm",300,-116.5,-20,-38.4,88,34673013)
	spawnMobile("hoth", "ice_worm",300,9.5,-16.0,-27.9,89,34673047)
	spawnMobile("hoth", "ice_worm",300,10.8,-6.3,-7.8,-93,34673047)
	spawnMobile("hoth", "ice_worm",300,-104.2,-28.7,-193.4,0,34673030)
	spawnMobile("hoth", "ice_worm",300,-143.2,-34,-180.8,-139,34673038)
	spawnMobile("hoth", "ice_worm",300,-129.0,-34,-192.6,-32,34673038)
	spawnMobile("hoth", "ice_worm",300,-124.3,-34.0,-199.5,-60,34673038)
	spawnMobile("hoth", "ice_worm",300,-60.0,-34.0,-273.7,0,34673035)
	spawnMobile("hoth", "ice_worm",300,-63.9,-22.0,-143.0,-3,34673027)
	spawnMobile("hoth", "ice_worm",300,-129.8,-34.0,-267.9,87,34673039)
	spawnMobile("hoth", "ice_worm",300,26,-31.5,-78,170,34673021)
	spawnMobile("hoth", "ice_worm",300,36.5,-29.9,-82.7,-120,34673021)
	spawnMobile("hoth", "ice_worm",300,29.5,-30.1,-88,-45,34673021)
	spawnMobile("hoth", "ice_worm",300,-139.8,-34,-194.3,57,34673038)
	spawnMobile("hoth", "ice_worm",300,-64.9,-34,-266.5,-143,34673035)
	spawnMobile("hoth", "ice_worm",300,-66.5,-34,-282,-1,34673035)
	spawnMobile("hoth", "ice_worm",300,-87,-34.1,-386.5,210,34673042)
	spawnMobile("hoth", "wampa_hoth",300,-128.2,-34.4,-322.4,-30,34673040)
	spawnMobile("hoth", "wampa_hoth",300,-143.5,-33.5,-321.7,134,34673040)
	spawnMobile("hoth", "wampa_hoth",300,-131.1,-33.9,-339.0,145,34673040)
	spawnMobile("hoth", "wampa_hoth",300,-135.5,-33.8,-342.8,-1,34673040)
	spawnMobile("hoth", "wampa_hoth",300,-118.9,-34.0,-349.2,-98,34673041)
	spawnMobile("hoth", "wampa_hoth",300,-134.5,-34.0,-373.2,-2,34673041)
	spawnMobile("hoth", "ice_worm",300,-129.4,-33.6,-384.1,-2,34673041)
	spawnMobile("hoth", "ice_worm",300,-86.5,-33.9,-372.8,-91,34673042)
	spawnMobile("hoth", "ice_worm",300,-88.0,-34.6,-365.9,-102,34673042)
	spawnMobile("hoth", "ice_worm",300,-71.5,-34,-348.1,-95,34673042)
	spawnMobile("hoth", "ice_worm",300,-72.6,-33.8,-376.0,-168,34673042)
	spawnMobile("hoth", "ice_worm",300,-72.7,-34.2,-382.5,-179,34673042)
	spawnMobile("hoth", "ice_worm",300,-69.0,-34.0,-407.2,-7,34673043)
	spawnMobile("hoth", "ice_worm",300,-46.8,-34.0,-407.5,92,34673043)
	spawnMobile("hoth", "ice_worm",300,-28.5,-34.2,-408.4,-27,34673043)
	spawnMobile("hoth", "ice_worm",300,-11.9,-34.0,-412.5,179,34673044)
	spawnMobile("hoth", "wampa_hoth",300,4.1,-34.0,-402.4,171,34673045)
	spawnMobile("hoth", "ice_worm",300,16.5,-34.0,-368.3,161,34673045)
	spawnMobile("hoth", "ice_worm",300,24.0,-34.0,-397.1,117,34673045)
	spawnMobile("hoth", "ice_worm",300,22.9,-34.0,-370.1,11,34673045)
	spawnMobile("hoth", "wampa_hoth",300,24.8,-24.0,-333.8,87,34673045)
	spawnMobile("hoth", "wampa_hoth",300,13.3,-24.0,-341.6,89,34673045)
	spawnMobile("hoth", "wampa_hoth",300,13.4,-22.0,-337.3,-179,34673045)
	spawnMobile("hoth", "ice_worm",300,48.0,-34.0,-334.4,0,34673046)
	spawnMobile("hoth", "wampa_hoth",300,91.2,-33.9,-347.9,5,34673046)
	spawnMobile("hoth", "ice_worm",300,98.0,-34.1,-334.4,-53,34673046)
	spawnMobile("hoth", "ice_worm",300,120.2,-33.9,-330.6,-33,34673046)
	spawnMobile("hoth", "wampa_hoth",300,85.0,-33.8,-309.1,143,34673046)
	spawnMobile("hoth", "wampa_hoth",300,74.7,-34.1,-329.0,-90,34673046)
	
	--Instant Respawn on live, and this was highly requested to be returned to the geo cave!
	spawnMobile("hoth", "wampa_hoth",300,-74.9,-22,-153.7,-119,34673028)
	spawnMobile("hoth", "wampa_hoth",300,-74.3,-22,-162.3,-40,34673028)
	spawnMobile("hoth", "wampa_hoth",300,-82.3,-22,-161.7,74,34673028)
	spawnMobile("hoth", "wampa_hoth",300,-82.2,-22,-155.1,106,34673028)
	--Instant Respawn on live, and this was highly requested to be returned to the geo cave!

	--Custom Stuff Below Here!--wampa_hoth
	spawnMobile("hoth", "wampa_hoth",300,-136.281,-21.9195,-107.037,100,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-134.739,-21.9293,-98.6984,-180,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-127.746,-21.5192,-99.6317,-180,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-109.496,-21.9789,-102.542,152,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-110.414,-21.9385,-119.157,12,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-98.5207,-22.112,-106.8,114,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-87.3095,-22.0783,-114.962,54,34673016)
	spawnMobile("hoth", "wampa_hoth",300,-15.5608,-29.9814,-109.619,104,34673019)
	spawnMobile("hoth", "wampa_hoth",300,-9.03449,-30.2318,-110.233,-10,34673019)
	spawnMobile("hoth", "wampa_hoth",300,-3.14966,-29.8641,-110.242,-92,34673019)
	spawnMobile("hoth", "ice_worm",300, 34.5883, -29.739, -87.0682, -49, 34673021)
	spawnMobile("hoth", "ice_worm",300, 34.053, -31.4091, -78.1577, -151, 34673021)
	spawnMobile("hoth", "ice_worm",300, 17.559, -30.2715, -70.4098, 104, 34673021)
	spawnMobile("hoth", "ice_worm",300, 22.2525, -30.8983, -68.4103, 166, 34673021)
	spawnMobile("hoth", "ice_worm",300, 24.1396, -31.4499, -86.7594, -5, 34673021)
	spawnMobile("hoth", "ice_worm",300, 97.541, -33.6629, -315.264, -138, 34673046)
	spawnMobile("hoth", "ice_worm",300, 105.561, -33.8948, -327.069, -111, 34673046)
	spawnMobile("hoth", "ice_worm",300, 92.8565, -34.3936, -320.798, -146, 34673046)
	spawnMobile("hoth", "ice_worm",300, 68.3836, -33.8069, -333.971, -4, 34673046)
	spawnMobile("hoth", "ice_worm",300, 67.7088, -34.1103, -324.325, 178, 34673046)
	spawnMobile("hoth", "ice_worm",300, -14.1654, -33.7943, -419.905, -88, 34673044)
	spawnMobile("hoth", "ice_worm",300, -136.393, -33.7989, -282.031, 88, 34673039)
	spawnMobile("hoth", "wampa_hoth",300, -77.6631, -18.581, -31.3627, 143, 34673011)
	spawnMobile("hoth", "wampa_hoth",300, -68.0155, -19.1212, -37.35, -128, 34673011)
	spawnMobile("hoth", "wampa_hoth",300, -77.6182, -18.6051, -40.3633, -178, 34673011)
	spawnMobile("hoth", "wampa_hoth",300, -76.7914, -18.4807, -43.8397, -36, 34673011)
	spawnMobile("hoth", "wampa_hoth",300, -83.529, -18.508, -40.4251, 101, 34673011)
	spawnMobile("hoth", "wampa_hoth",300, -74.2385, -18.3719, -49.4647, -174, 34673011)
	spawnMobile("hoth", "wampa_hoth",300, -77.3553, -18.1229, -49.4936, 168, 34673011)
	spawnMobile("hoth", "ice_worm",300, -72.0886, -34, -276.774, 179, 34673035)
	spawnMobile("hoth", "ice_worm",300, -60.1653, -34, -276.636, 177, 34673035)
	spawnMobile("hoth", "ice_worm",300, -57.2151, -34, -264.249, -109, 34673035)
	spawnMobile("hoth", "ice_worm",300, -71.5566, -34, -264.136, 90, 34673035)
	spawnMobile("hoth", "ice_worm",300, -55.6416, -34, -283.675, -31, 34673035)
	-->>Super Enhanced Kwi?<<<
	spawnMobile("hoth", "ice_worm",300, -52.1084, -33.5828, -373.367, -87, 34673042)
	spawnMobile("hoth", "ice_worm",300, -51.5294, -33.9669, -365.18, -103, 34673042)
	spawnMobile("hoth", "ice_worm",300, -57.7441, -33.6945, -360.386, -134, 34673042)
	spawnMobile("hoth", "ice_worm",300, -76.2812, -34.1583, -363.449, -147, 34673042)
	spawnMobile("hoth", "ice_worm",30, 6.3, -34.0, -346.7, 46, 34673045)
	spawnMobile("hoth", "ice_worm",30, 6.3, -34.0, -346.7, 26, 34673045)
	spawnMobile("hoth", "ice_worm",30, 3.3, -34.0, -346.7, 56, 34673045)
	spawnMobile("hoth", "ice_worm",30, 5.3, -34.0, -346.7, 86, 34673045)
	spawnMobile("hoth", "ice_worm",300, 13.6352, -34, -382.97, 177, 34673045)
	spawnMobile("hoth", "ice_worm",300, 23.1283, -34, -381.871, -171, 34673045)
	spawnMobile("hoth", "ice_worm",300, 9.96341, -34, -404.494, -141, 34673045)
	spawnMobile("hoth", "ice_worm",300, 36.0805, -34, -341.97, -132, 34673045)
	spawnMobile("hoth", "ice_worm",300, 32.9608, -34, -339.919, -132, 34673045)
	spawnMobile("hoth", "ice_worm",300, 31.0486, -34, -338.153, -132, 34673045)
	spawnMobile("hoth", "ice_worm",300, 29.1903, -34, -334.87, -128, 34673045)
	spawnMobile("hoth", "ice_worm",300, -75.7891, -33.7396, -406.2, 35, 34673043)
	spawnMobile("hoth", "ice_worm",300, -56.1903, -33.8068, -413.044, -23, 34673043)
	spawnMobile("hoth", "ice_worm",300, -42.6794, -34.017, -412.7, -4, 34673043)
	spawnMobile("hoth", "ice_worm",300, -25.8643, -34.2448, -412.436, -8, 34673043)

	local pTrigger = spawnMobile("hoth", "punkajo", 1800, 101.1, -34.3, -321.6, -136,34673046) --3800
	if (pTrigger ~= nil ) then	
		createObserver(OBJECTDESTRUCTION, "wampa_cave", "notifyTriggerDead", pTrigger)
	end
	--initialize Sp State
	writeData("wampa_cave:spawnState",0)
end

function wampa_cave:notifyTriggerDead(pTrigger, pKiller)
	--local player = LuaCreatureObject(pKiller)
	local pBoss = spawnMobile("hoth", "unkajo", 0, 101.1,-34.3,-321.6,-136,34673046)
	if (pBoss ~= nil and readData("wampa_cave:spawnState") == 0) then
		writeData("wampa_cave:spawnState", 1)
		spatialChat(pBoss, "UNKAJO KILL ALL NOW")	
		createObserver(DAMAGERECEIVED,"wampa_cave","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "wampa_cave", "notifyBossDead", pBoss)
	end
	return 0
end

function wampa_cave:notifyBossDead(pBoss, pKiller)
	writeData("wampa_cave:spawnState", 0)
	return 0
end

function wampa_cave:boss_damage(pBoss, pPlayer)
	
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 101.1
		local y1 = -321.6
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 58
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "MAKE ME WORK FOR DINNER? RUN AWAY")

--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setPvpStatusBitmask(0)
			forcePeace(pBoss)
--			boss:setOptionsBitmask(128)D
			createEvent(3500, "wampa_cave", "resetScreenplayStatus", pPlayer)
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("wampa_cave:spawnState") == 1) then
			spatialChat(pBoss, "UNKAJO HUNGRY")
			writeData("wampa_cave:spawnState",2)
			local pJos = spawnMobile("hoth", "baby_wampa", 0,101.1,-34.3,-321.6,-136,34673046)
			ObjectManager.withCreatureObject(pJos, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pJos, "Waaaaaaaaoorroorr....rouaar?!")
	
			local pJosTwo = spawnMobile("hoth", "baby_wampa", 0,101.1,-34.3,-321.6,-136,34673046)
			ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosTwo, "aaaoorrrrrrrraaaoorr....rwoar?!")
		
			local pJosThree = spawnMobile("hoth", "baby_wampa", 0,101.1,-34.3,-321.6,-136,34673046)
			ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pJosThree, "aaaoorroorr....roar?!")
		
			local pJosFour = spawnMobile("hoth", "baby_wampa", 0,101.1,-34.3,-321.6,-136,34673046)
			ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosThree, "aaagoorrorrorr....arg ?!")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("wampa_cave:spawnState") == 2) then
			spatialChat(pBoss,"UNKAJO ANGRY")
			writeData("wampa_cave:spawnState", 3)
			local pJosFive = spawnMobile("hoth", "wampa_boar",0, 101.1,-34.3,-321.6,-136,34673046)
			ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosFive, "ARGHOARRRRRRRR")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("wampa_cave:spawnState") == 3) then
			spatialChat(pBoss,"UNKAJO EAT NOW KILL ALL")
			writeData("wampa_cave:spawnState", 4)
			local pJosSix = spawnMobile("hoth", "wampa_boar", 0, 101.1,-34.3,-321.6,-136,34673046)
			ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pJosSix, "aaaoorroorr....roar?!")
			local pJosSeven = spawnMobile("hoth",  "baby_wampa", 0, 122.0,-33.8,-317.6,-136,34673046)
			ObjectManager.withCreatureObject(pJosSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pJosSeven, "aaaoororroorr....rouuar?!")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("wampa_cave:spawnState") == 4) then
			spatialChat(pBoss, "UNKAJO NOT DIE")
		end
	end
	return 0
end

function wampa_cave:resetScreenplayStatus(pPlayer)


	if (pPlayer == nil) then
		return
		
	end
	
	local creature = LuaCreatureObject(pPlayer)
	
	if (creature:isGrouped()) then
		size = creature:getGroupSize()
		
		for i = 0, size - 1, 1 do
			pMember = creature:getGroupMember(i)
			if pMember ~= nil then
				local groupMember = LuaCreatureObject(pMember)
			writeData("wampa_cave:spawnState", 1)
			end

				end 
	else
	local creature = LuaCreatureObject(pPlayer)
			writeData("wampa_cave:spawnState", 1)	
	end
	return 0
end

function wampa_cave:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return
	end
	
	local creature = LuaCreatureObject(pPlayer)
	creature:teleport( -6409.6, 57.1, 4070.3, 0)
	return 0
end


