echo_base_droid = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("echo_base_droid", true)
local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function echo_base_droid:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()		
 	end
end

function echo_base_droid:spawnMobiles()
	local pTrigger = spawnMobile("hoth", "droid_place", 3800, -295.8,-23.3,499.5,124,281475060608872) --3800
	if (pTrigger ~= nil ) then	
		createObserver(OBJECTDESTRUCTION, "echo_base_droid", "notifyTriggerDead", pTrigger)
	end
	--initialize Sp State
	writeData("echo_base_droid:spawnState",0)
         return 0
end

function echo_base_droid:notifyTriggerDead(pTrigger, pPlayer)
--local player = LuaCreatureObject(pKiller)
	local pBoss = spawnMobile("hoth", "echo_base_droid_boss", 0, -295.8,-23.3,499.5,124,281475060608872)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("echo_base_droid:spawnState", 1)
		writeData("droidboss", oBoss:getObjectID())			
		spatialChat(pBoss, "defense systems active")	
		createObserver(DAMAGERECEIVED,"echo_base_droid","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "echo_base_droid", "notifyDroidDead", pBoss)
		createEvent(1800000, "echo_base_droid", "despawnBoss", pBoss)		
	end)
	return 0
end

function echo_base_droid:notifyDroidDead(pBoss, pPlayer)
	writeData("echo_base_droid:spawnState", 0)
	return 0
end

function echo_base_droid:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("droidboss"),true)
	writeData("echo_base_droid:spawnState", 0)
	return 0
end

function echo_base_droid:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -295.8
		local y1 = 499.5
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 70
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "defense perimeter clear - system reset")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "echo_base_droid", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("echo_base_droid:spawnState") == 1) then
			spatialChat(pBoss, "activate secondary defense protocall")
			writeData("echo_base_droid:spawnState",2)
			local pAdd = spawnMobile("hoth", "echo_base_droid_add", 0,-248.0,-23.2,498.3,124,281475060608872)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "locked on target")
	
			local pAddTwo = spawnMobile("hoth", "echo_base_droid_add", 0,-295.8,-23.3,499.5,124,281475060608872)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "locked on target")
		
			local pAddThree = spawnMobile("hoth", "echo_base_droid_add", 0,-295.8,-23.3,499.5,124,281475060608872)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "locked on target")
		
			local pAddFour = spawnMobile("hoth", "echo_base_droid_add", 0,-250.0,-23.4,476.1,124,281475060608872)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "locked on target")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("echo_base_droid:spawnState") == 2) then
			spatialChat(pBoss,"warning - structure failure detected")
			writeData("echo_base_droid:spawnState", 3)
			local pAddFive = spawnMobile("hoth", "echo_base_droid_add",0, -248.0,-23.2,498.3,124,281475060608872)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "locked on target")
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("echo_base_droid:spawnState") == 3) then
			spatialChat(pBoss,"activate auxillary defenses")
			writeData("echo_base_droid:spawnState", 4)
			local pAddSix = spawnMobile("hoth", "echo_base_droid_add", 0,-295.8,-23.3,499.5,124,281475060608872)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "locked on target")
			local pAddSeven = spawnMobile("hoth",  "echo_base_droid_add", 0, -250.0,-23.4,476.1,124,281475060608872)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "locked on target")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("echo_base_droid:spawnState") == 4) then
			spatialChat(pBoss, "defense system failing - self destruct active")
		end
	end
	return 0
end

function echo_base_droid:resetScreenplayStatus(pPlayer)
	writeData("echo_base_droid:spawnState", 1)
	return 0	
end





