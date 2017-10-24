axkva_min_instance = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("axkva_min_instance", true)
local ObjectManager = require("managers.object.object_manager")  print("Object manager loaded for Axkva Min")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function axkva_min_instance:start()
	if (isZoneEnabled("dathomir")) then
		self:spawnMobiles()		
 	end
end

function axkva_min_instance:spawnMobiles()
	local pTrigger = spawnMobile("dathomir", "nightsister_nandina", 3600, -68.2, 13.6, 16.0, 113, 281475714342454)
	spawnMobile("dathomir", "nightsister_gorvo_rancor", 3600, -62.3, 13.8, 30.1, 139, 281475714342454)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "axkva_min_instance", "notifyTriggerDead", pTrigger)
	end
	writeData("axkva_min_instance:spawnState",0)	
	return 0
end
	

function axkva_min_instance:notifyTriggerDead(pTrigger, pPlayer)
        local pWarden = spawnMobile("dathomir", "warden", 0, -62.3, 13.8, 30.1, 139, 281475714342454) print("Killed Nandina--Warden spawn Axkva Min encounter")
	ObjectManager.withCreatureObject(pWarden, function(oBoss)
		writeData("warden", oBoss:getObjectID())			
		spatialChat(pWarden, "You think you can come into my prison? Your lack of respect disgusts me. You will face my prisoners young fools.")	
		createEvent(80000, "axkva_min_instance", "spawnBoss1", pBoss1)
	end)
	return 0

end

function axkva_min_instance:spawnBoss1(pBoss1, pPlayer)
        local pBoss1 = spawnMobile("dathomir", "nightsister_lelli_hi", 0, -82.9, 17.8, 19.1, 101, 281475714342454) print("spawned Lelli")
	ObjectManager.withCreatureObject(pBoss1, function(oBoss)
		writeData("axkvaboss1", oBoss:getObjectID())			
		spatialChat(pBoss1, "Free to kill")	
		createObserver(OBJECTDESTRUCTION, "axkva_min_instance", "notifyBoss1Dead", pBoss1)
		createEvent(1800000, "axkva_min_instance", "despawnBoss1", pBoss1)		
	end)
	return 0
end

function axkva_min_instance:notifyBoss1Dead(pBoss1, pPlayer)
	writeData("axkva_min_instance:spawnState", 1)
	createEvent(8000, "axkva_min_instance", "spawnBoss2", pBoss2)
	return 0
end

function axkva_min_instance:despawnBoss1(pBoss1, pPlayer)
	forcePeace(pBoss1)
	spHelper.destroy(readData("axkvaboss1"),true)
	writeData("axkva_min_instance:spawnState", 0)
	createEvent(6000, "axkva_min_instance", "despawnAdd", pAdd)
	return 0
end

function axkva_min_instance:spawnBoss2(pBoss2, pPlayer)
        local pBoss2 = spawnMobile("dathomir", "nightsister_kimaru", 0, -80.0, 17.8, 31.4, 101, 281475714342454) print("Startup Axkva Min encounter")
	ObjectManager.withCreatureObject(pBoss2, function(oBoss)
		writeData("axkvaboss2", oBoss:getObjectID())			
		spatialChat(pBoss2, "Death is but a touch away")	
		createObserver(OBJECTDESTRUCTION, "axkva_min_instance", "notifyBoss2Dead", pBoss2)
		createEvent(1800000, "axkva_min_instance", "despawnBoss2", pBoss2)		
	end)
	return 0
end

function axkva_min_instance:notifyBoss2Dead(pBoss2, pPlayer)
	writeData("axkva_min_instance:spawnState", 2)
	createEvent(8000, "axkva_min_instance", "spawnBoss3", pBoss3)
	spatialChat(pWarden, "Young fools. Now your deaths will be quick. You are released Suin Chalo") 
	return 0

end

function axkva_min_instance:despawnBoss2(pBoss2, pPlayer)
	forcePeace(pBoss2)
	spHelper.destroy(readData("axkvaboss2"),true)
	writeData("axkva_min_instance:spawnState", 0)
	createEvent(6000, "axkva_min_instance", "despawnAdd", pAdd)
	return 0
end

function axkva_min_instance:spawnBoss3(pBoss3, pPlayer)
        local pBoss3 = spawnMobile("dathomir", "nightsister_suin_chalo", 0, -80.6, 17.8, 29.0, 100, 281475714342454) print("Startup Axkva Min encounter")
	ObjectManager.withCreatureObject(pBoss3, function(oBoss)
		writeData("axkvaboss3", oBoss:getObjectID())			
		spatialChat(pBoss3, "My sisters failed, I will not")	
		createObserver(DAMAGERECEIVED,"axkva_min_instance","boss_damage", pBoss3)
		createObserver(OBJECTDESTRUCTION, "axkva_min_instance", "notifyBoss3Dead", pBoss3)
		createEvent(1800000, "axkva_min_instance", "despawnBoss3", pBoss3)		
	end)
	return 0
end

function axkva_min_instance:notifyBoss3Dead(pBoss3, pPlayer)
	writeData("axkva_min_instance:spawnState", 4)
	createEvent(8000, "axkva_min_instance", "spawnBoss4", pBoss4)
	return 0

end

function axkva_min_instance:despawnBoss3(pBoss3, pPlayer)
	forcePeace(pBoss3)
	spHelper.destroy(readData("axkvaboss3"),true)
	writeData("axkva_min_instance:spawnState", 0)
	createEvent(6000, "axkva_min_instance", "despawnAdd", pAdd)
	return 0
end



function axkva_min_instance:spawnBoss4(pBoss4, pPlayer)
        local pBoss4 = spawnMobile("dathomir", "axkva_min_heroic", 0, -84.2, 17.9, 16.8, 97, 281475714342454) print("Startup Axkva Min encounter")
	ObjectManager.withCreatureObject(pBoss4, function(oBoss)
		writeData("axkvaboss4", oBoss:getObjectID())			
		spatialChat(pBoss4, "Warden you control me no longer, after I turn these weaklings to dust, I will have my revenge on you")	
		createObserver(OBJECTDESTRUCTION, "axkva_min_instance", "notifyBoss4Dead", pBoss4)
		createEvent(1800000, "axkva_min_instance", "despawnBoss4", pBoss4)		
	end)
	return 0
end

function axkva_min_instance:notifyBoss4Dead(pBoss4, pPlayer)
	spHelper.destroy(readData("warden"),true)
	createEvent(60000, "axkva_min_instance", "despawnAdd", pAdd)
	writeData("axkva_min_instance:spawnState", 0)
	createEvent(120000, "axkva_min_instance", "removeFromLair", pPlayer, "")


	return 0
end

function axkva_min_instance:despawnBoss4(pBoss4, pPlayer)
	forcePeace(pBoss4)
	spHelper.destroy(readData("axkvaboss4"),true)
	writeData("axkva_min_instance:spawnState", 0)
	createEvent(6000, "axkva_min_instance", "despawnAdd", pAdd)
	return 0
end
 
function axkva_min_instance:despawnAdd(pAdd, pAddTwo, pAddThree, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	spHelper.destroy(readData("countadd"),true)
	spHelper.destroy(readData("countadd2"),true)
	spHelper.destroy(readData("countadd3"),true)


	return 0
end

function axkva_min_instance:boss_damage(pBoss3, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss3)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -80.6
		local y1 = 29.0
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 75
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "There is no place to run")
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
		end

		if (((bossHealth <= (bossMaxHealth *0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind *0.5))) and readData("axkva_min_instance:spawnState") == 2) then
			spatialChat(pBoss3, "My minions will purify you")
			writeData("axkva_min_instance:spawnState",3)
			local pAdd = spawnMobile("dathomir", "nightsister_ekomal", 0, -49.1, 8.1, -7.7, -30, 281475714342454)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("countadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "Your souls will be consumed")
	
			local pAddTwo = spawnMobile("dathomir", "nightsister_oxvul", 0, -65.4, 14.5, 39.3, 162, 281475714342454)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("countadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "this one is almost mine")
		
			local pAddThree = spawnMobile("dathomir", "nightsister_doum", 0, -44.0, 8.0, 16.6, -74, 281475714342454)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("countadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "gurp gurp gurp")
		
		end	
	
	end
	return 0
end
function axkva_min_instance:removeFromLair(pPlayer)
	if (pPlayer == nil) then
		return 0
	end

	local playerID = SceneObject(pPlayer):getObjectID()

	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil then
				if CreatureObject(pMember):getParentID() > 1 then
					createEvent(5000, "axkva_min_instance", "teleportPlayer", pMember, "")
				end
			end
		end
	else
		createEvent(5000, "axkva_min_instance", "teleportPlayer", pPlayer, "")
	end
	return 0
end

function axkva_min_instance:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return 0
	end

	local creatureID = SceneObject(pPlayer):getObjectID()
	local parentID = SceneObject(pPlayer):getParentID()
	if (readData(creatureID .. ":teleportedFromLair") == 1) then
		return 0
	end

	writeData(creatureID .. ":teleportedFromLair", 1)
	CreatureObject(pPlayer):teleport(-3959.0, 124.0, -55.0, 0)
	return 0
end

function axkva_min_instance:resetScreenplayStatus(pPlayer)
	writeData("axkva_min_instance:spawnState", 1)
	return 0	
end




