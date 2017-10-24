acklay_boss = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("acklay_boss", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for ACKLAY")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function acklay_boss:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()		
 	end
end

function acklay_boss:spawnMobiles()
	local pTrigger = spawnMobile("yavin4", "acklay_trigger", 3600, 101.1,-34.3,-321.6,-136,1627823)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "acklay_boss", "notifyTriggerDead", pTrigger)
	end
	writeData("acklay_boss:spawnState",0)	
	return 0
	
end

function acklay_boss:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("yavin4", "acklay", 0, 101.1,-34.3,-321.6,-136,1627823) print("spawned Acklay")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("acklay_boss:spawnState", 1)
		writeData("acklayboss", oBoss:getObjectID())			
--		spatialChat(pBoss, "")	
		createObserver(DAMAGERECEIVED,"acklay_boss","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "acklay_boss", "notifyBossDead", pBoss)
		createEvent(1800000, "acklay_boss", "despawnBoss", pBoss)		
	end)
	return 0
end

function acklay_boss:notifyBossDead(pBoss, pPlayer)
	createEvent(60000, "acklay_boss", "removeFromGeo", pPlayer, "")
	writeData("acklay_boss:spawnState", 0)
	return 0
end



function acklay_boss:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("acklayboss"),true)
	writeData("acklay_boss:spawnState", 0)
	return 0
end

function acklay_boss:boss_damage(pBoss, pPlayer)


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
		local y1 = -321.3
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 25
		
		if distance > (maxDistance * maxDistance) then
	--		spatialChat(pBoss, "")
			boss:healDamage(pBoss, 0, 2000000)
			boss:healDamage(pBoss, 3, 2000000)
			boss:healDamage(pBoss, 6, 2000000)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "acklay_boss", "resetScreenplayStatus", pPlayer)
		
		end


		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("acklay_boss:spawnState") == 1) then
	--		spatialChat(pBoss, "")
			writeData("acklay_boss:spawnState",2)
			local pAdd = spawnMobile("yavin4", "enhanced_kliknik", 0, 104.1,-34.3,-324.6,-136,1627823)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAdd, "")
	
			local pAddTwo = spawnMobile("yavin4", "enhanced_kliknik", 0, 105.1,-34.3,-323.6,-136,1627823)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddTwo, "")
		
			local pAddThree = spawnMobile("yavin4", "enhanced_kliknik", 0, 107.1,-34.3,-327.6,-136,1627823)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
	--		spatialChat(pAddThree, "")
		
			local pAddFour = spawnMobile("yavin4", "enhanced_kliknik", 0, 109.1,-34.3,-329.6,-136,1627823)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddThree, "")
				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("acklay_boss:spawnState") == 2) then
	--		spatialChat(pBoss,"")
			writeData("acklay_boss:spawnState", 3)
			local pAddFive = spawnMobile("yavin4", "enhanced_kliknik", 0, 103.1,-34.3,-321.6,-136,1627823)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddFive, "")

		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("acklay_boss:spawnState") == 3) then
	--		spatialChat(pBoss,"")
			writeData("acklay_boss:spawnState", 4)
			local pAddSix = spawnMobile("yavin4", "enhanced_kliknik", 0, 102.1,-34.3,-325.6,-136,1627823)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
	--		spatialChat(pAddSix, "")
			local pAddSeven = spawnMobile("yavin4",  "enhanced_kliknik", 0, 106.1,-34.3,-321.6,-136,1627823)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
	--		spatialChat(pAddSeven, "")

		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("acklay_boss:spawnState") == 4) then
	--		spatialChat(pBoss, "")
		end
	end
	return 0
end

function acklay_boss:removeFromGeo(pPlayer)
	if (pPlayer == nil) then
		return 0
	end

	local playerID = SceneObject(pPlayer):getObjectID()

	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil then
				if CreatureObject(pMember):getParentID() > 1627805 then
					createEvent(5000, "acklay_boss", "teleportPlayer", pMember, "")
				end
			end
		end
	else
		createEvent(5000, "acklay_boss", "teleportPlayer", pPlayer, "")
	end
	return 0
end

function acklay_boss:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return 0
	end

	local creatureID = SceneObject(pPlayer):getObjectID()
	local parentID = SceneObject(pPlayer):getParentID()
	if (readData(creatureID .. ":teleportedFromGeo") == 1) then
		return 0
	end

	writeData(creatureID .. ":teleportedFromGeo", 1)
	CreatureObject(pPlayer):teleport(-6515.4, 85.6, -426.8, 0)
	return 0
end

function acklay_boss:resetScreenplayStatus(pPlayer)
	writeData("acklay_boss:spawnState", 1)
	return 0
end




