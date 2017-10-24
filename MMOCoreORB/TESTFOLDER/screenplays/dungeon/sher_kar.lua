sher_karScreenPlay = ScreenPlay:new {numberOfActs = 1, }
 
  
spHelper = require("screenplayHelper")
registerScreenPlay("sher_karScreenPlay" ,true)
local ObjectManager = require("managers.object.object_manager")  
 
 
 
function sher_karScreenPlay :start()
    if (isZoneEnabled("mustafar")) then
        self:spawnMobiles()
 
    end
 
end
 
 
function sher_karScreenPlay:spawnMobiles()

-- [left side]
 
spawnMobile("mustafar", "sher_kar_praetorian", 100, -105.1, -16.5, -50.3, 178, 281475788742312)
spawnMobile("mustafar", "sher_kar_karling", 100, -89.9, -18.1, -127.5, 179, 281475788742312)
 
-- [right side]
 
spawnMobile("mustafar", "sher_kar_karling", 100, -162.7, -17.7, -59.1, 148, 281475788742312)
spawnMobile("mustafar", "sher_kar_praetorian", 100, -127.1, -17.4, -113.7, 167, 281475788742312)
 
    local pTrigger = spawnMobile("mustafar", "sher_kar_praetorian", 3000, -93.1, -7.3, -182.3, -27, 281475788742312)
    if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "sher_karScreenPlay", "notifyTriggerDead", pTrigger)
    end
    writeData("sher_karScreenPlay:spawnState",0)
	return 0 
end
 
function sher_karScreenPlay:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("mustafar", "sher_kar_boss", 0, -93.1, -7.3, -182.3, -27, 281475788742312) print("spawned Sher'Kar Boss")
        ObjectManager.withCreatureObject(pBoss, function(oBoss)
        writeData("sher_karScreenPlay:spawnState", 1)
        writeData("sher_karScreenPlay", oBoss:getObjectID())
        spatialChat(pBoss, "Oh Look Dinner This Shall Be Fun")
        createObserver(DAMAGERECEIVED,"sher_karScreenPlay","boss_damage", pBoss)
        createObserver(OBJECTDESTRUCTION, "sher_karScreenPlay", "notifyBossDead", pBoss)
        createEvent(1800000, "sher_karScreenPlay", "despawnBoss", pBoss)
     end)
     return 0
end
  
function sher_karScreenPlay:notifyBossDead(pBoss, pPlayer)
    writeData("sher_karScreenPlay:spawnState", 0)
    createEvent(8000, "sher_karScreenPlay", "despawnAdd", pAdd)
    return 0
end
 
function sher_karScreenPlay:despawnBoss(pBoss, pPlayer)
    forcePeace(pBoss)
    spHelper.destroy(readData("sher_karScreenPlay"),true)
    writeData("sher_karScreenPlay:spawnState", 0)
    createEvent(6000, "sher_karScreenPlay", "despawnAdd", pAdd)
    return 0
end

function sher_karScreenPlay:despawnAdd(pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, player)
	forcePeace(pAdd)
	forcePeace(pAddTwo)
	forcePeace(pAddThree)
	forcePeace(pAddFour)
	forcePeace(pAddFive)
	spHelper.destroy(readData("countadd"),true)
	spHelper.destroy(readData("countadd2"),true)
	spHelper.destroy(readData("countadd3"),true)
	spHelper.destroy(readData("countadd4"),true)
	spHelper.destroy(readData("countadd5"),true)
	return 0
end
 
function sher_karScreenPlay:boss_damage(pBoss, pPlayer)
    local player = LuaCreatureObject(pPlayer)
    local boss = LuaCreatureObject(pBoss)
 
    if (boss ~= nil) then
         local bossHealth = boss:getHAM(0)
         local bossAction = boss:getHAM(3)
         local bossMind = boss:getHAM(6)
         local bossMaxHealth = boss:getMaxHAM(0)
         local bossMaxAction = boss:getMaxHAM(3)
         local bossMaxMind = boss:getMaxHAM(6)
  
         local x1 = -93.1
         local y1 = -182.3
         local x2 = boss:getPositionX()
         local y2 = boss:getPositionY()
 
         local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
         local maxDistance = 90
  
        if distance > (maxDistance * maxDistance) then
             spatialChat(pBoss, "Come back when your ready to fight, not flee")
--             boss:healDamage(pBoss, 0, 2000000)
--             boss:healDamage(pBoss, 3, 2000000)
--             boss:healDamage(pBoss, 6, 2000000)
 --          boss:setOptionsBitmask(264)
             forcePeace(pBoss)
             forcePeace(pBoss)
             forcePeace(pBoss)
             createEvent(3500, "sher_karScreenPlay", "resetScreenplayStatus", pPlayer)
 --          boss:setOptionsBitmask(128)
 
         end
 
		if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("sher_karScreenPlay:spawnState") == 1) then
		        spatialChat(pBoss, "Come on you can do better then that")
			writeData("sher_karScreenPlay:spawnState",2)
			local pAdd = spawnMobile("mustafar", "sher_kar_praetorian", 0, -113.0, -10.2, -172.8, 111, 281475788742312)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("countadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
			end)
		        spatialChat(pAdd, "Psst over here sweetie")
	
			local pAddTwo = spawnMobile("mustafar", "sher_kar_praetorian", 0, -79.8, -5.8, -189.4, -57, 281475788742312)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("countadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "you forget about me?")
		
			local pAddThree = spawnMobile("mustafar", "sher_kar_karling", 0, -113, -10.2, -172.8, 111, 281475788742312)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("countadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
			end)				
			spatialChat(pAddThree, "yawn")
		end

		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("sher_karScreenPlay:spawnState") == 2) then
 		        spatialChat(pBoss,"Come feast my babies, come feast")		
			writeData("sher_karScreenPlay:spawnState", 3)
			local pAddFour = spawnMobile("mustafar", "sher_kar_praetorian", 0, -98.1, -5.6, -195.4, 2, 281475788742312)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("countadd4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFour, "skreeech")				
	

			local pAddFive = spawnMobile("mustafar",  "sher_kar_praetorian", 0, -103.4, -9.9, -195.4, 2, 281475788742312)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("countadd5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddFive, "oh YUMMY") 
		end

		if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("sher_karScreenPlay:spawnState") == 3) then
			spatialChat(pBoss, "You wont get so lucky next time.")
		end
	end
	return 0
end

function sher_karScreenPlay:resetScreenplayStatus(pPlayer)
    writeData("sher_karScreenPlay:spawnState", 1)
    return 0
end


