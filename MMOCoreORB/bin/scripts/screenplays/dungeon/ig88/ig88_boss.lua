--------------------------------------
--   Creator : TOXIC
--   Date : 12/11/2017          
--------------------------------------

ig88_boss = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "ig88_boss",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
---------------------------------------------
--   Register Screenplay to planet Dungeon 2
---------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("ig88_boss", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for IG-88")
--------------------------------------
--   Initialize screenplay           
--------------------------------------
function ig88_boss:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()	
		self:spawnActiveAreas()
 	end
end
--------------------------------------------------
--   spawn mouse droid when droid dies spawn boss
--------------------------------------------------
function ig88_boss:spawnMobiles()
	local pTrigger = spawnMobile("dungeon2", "mouse_droid", 86400, -0.0547165, 0.0315461, 10.281, 8, 14200863)--24 hour respawn to start the boss
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "ig88_boss", "notifyTriggerDead", pTrigger)
	end
	writeData("ig88_boss:spawnState",0)	
	return 0
end
--------------------------------------
--  active boss once mouse droid dies
--------------------------------------
function ig88_boss:notifyTriggerDead(pTrigger, pPlayer)
        local pBoss = spawnMobile("dungeon2", "ig_88", 0, -0.0547165, 0.0315461, 10.281, 8, 14200863)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("ig88_boss:spawnState", 1)
		writeData("ig88boss", oBoss:getObjectID())			
		spatialChat(pBoss, "Intruder Alert Activating Defense Systems")	
		createObserver(DAMAGERECEIVED,"ig88_boss","boss_damage", pBoss)
	end)
	return 0
end
--------------------------------------
--   Range and health checks for boss
--------------------------------------
function ig88_boss:boss_damage(pBoss, pPlayer, pAdd, pAddTwo, pAddThree, pAddFour, pAddFive, pAddSix, pAddSeven, pAddEight, pAddNine, pAddTen, pAddEleven, pAddTwelve, pAddThirteen, pAddFourteen, pAddFifteen, pAddSixteen, pAddSeventeen, pAddEighteen, player)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local heal = 500000
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -0.0547165
		local y1 = 10.281
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 10
		
		if distance > (maxDistance * maxDistance) then
			forcePeace(pBoss)
			CreatureObject(pBoss):healDamage(heal, 0)
			CreatureObject(pBoss):healDamage(heal, 3)
			CreatureObject(pBoss):healDamage(heal, 6)
                        CreatureObject(pBoss):playEffect("clienteffect/sm_spot_a_sucker.cef", "")
			spatialChat(pBoss, "Systems powering down you are out of combat range")
			CreatureObject(pPlayer):sendSystemMessage("You must be within 25m of the boss to fight, boss is now resetting")
		end
--------------------------------------
--   first wave 80% health check
--------------------------------------
		if (((bossHealth <= (bossMaxHealth *0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind *0.8))) and readData("ig88_boss:spawnState") == 1) then
                        CreatureObject(pBoss):playEffect("clienteffect/level_granted.cef", "")
			CreatureObject(pPlayer):sendSystemMessage("First Enemy Wave Starting!")
			spatialChat(pBoss, "Boss Current Health = 90%")
			writeData("ig88_boss:spawnState",2)
			local pAdd = spawnMobile("dungeon2", "droideka", 0, -3.27221, 0.0315459, -7.91982, 342, 14200863)
			ObjectManager.withCreatureObject(pAdd, function(firstTime)
			writeData("countadd", firstTime:getObjectID())
				firstTime:engageCombat(pPlayer)
                                CreatureObject(pAdd):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAdd, "target locked")
	
			local pAddTwo = spawnMobile("dungeon2", "droideka", 0, 16.7107, 0.0315455, -7.98008, 330, 14200863)
			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
			writeData("countadd2", secondTime:getObjectID())
				secondTime:engageCombat(pPlayer)
                                CreatureObject(pAddTwo):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddTwo, "target locked")
		
			local pAddThree = spawnMobile("dungeon2", "droideka", 0, -3.47903, 0.0315461, 34.4707, 213, 14200863)
			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
			writeData("countadd3", thirdTime:getObjectID())
				thirdTime:engageCombat(pPlayer)
                                CreatureObject(pAddThree):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)				
			spatialChat(pAddThree, "target locked")
		
			local pAddFour = spawnMobile("dungeon2", "droideka", 0, 16.603, 0.0315462, 34.806, 205, 14200863)
			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
			writeData("countadd4", fourthTime:getObjectID())
				fourthTime:engageCombat(pPlayer)
                                CreatureObject(pAddFour):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddFour, "target locked")				
		end	
--------------------------------------
--   second wave 70% health check
--------------------------------------
		if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("ig88_boss:spawnState") == 2) then
			CreatureObject(pPlayer):sendSystemMessage("Second Enemy Wave Starting!")
			spatialChat(pBoss,"Boss Current Health = 70%")
			writeData("ig88_boss:spawnState", 3)
			local pAddFive = spawnMobile("dungeon2", "droideka", 0, -3.27221, 0.0315459, -7.91982, 342, 14200863)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
			writeData("countadd5", fifthTime:getObjectID())
				fifthTime:engageCombat(pPlayer)
                                CreatureObject(pAddFive):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddFive, "target locked")
	
			local pAddSix = spawnMobile("dungeon2", "droideka", 0, 16.7107, 0.0315455, -7.98008, 330, 14200863)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
			writeData("countadd6", sixthTime:getObjectID())
				sixthTime:engageCombat(pPlayer)
                                CreatureObject(pAddSix):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddSix, "target locked")
		
			local pAddSeven = spawnMobile("dungeon2", "droideka", 0, -3.47903, 0.0315461, 34.4707, 213, 14200863)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
			writeData("countadd7", seventhTime:getObjectID())
				seventhTime:engageCombat(pPlayer)
                                CreatureObject(pAddSeven):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)				
			spatialChat(pAddSeven, "target locked")
		
			local pAddEight = spawnMobile("dungeon2",  "droideka", 0, 16.603, 0.0315462, 34.806, 205, 14200863)
			ObjectManager.withCreatureObject(pAddEight, function(eighthTime)
			writeData("countadd8", eighthTime:getObjectID())
				eighthTime:engageCombat(pPlayer)
                                CreatureObject(pAddEight):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddEight, "Target Lock")		
		end	
--------------------------------------
--   third wave 60% health check
--------------------------------------
		if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("ig88_boss:spawnState") == 3) then
			CreatureObject(pPlayer):sendSystemMessage("Third Enemy Wave Starting!")
			spatialChat(pBoss,"Boss Current Health = 60%")
			writeData("ig88_boss:spawnState", 4)
			local pAddNine = spawnMobile("dungeon2", "droideka", 0, -3.27221, 0.0315459, -7.91982, 342, 14200863)
			ObjectManager.withCreatureObject(pAddNine, function(ninthTime)
			writeData("countadd9", ninthTime:getObjectID())
				ninthTime:engageCombat(pPlayer)
                                CreatureObject(pAddNine):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddNine, "target locked")
	
			local pAddTen = spawnMobile("dungeon2", "droideka", 0, 16.7107, 0.0315455, -7.98008, 330, 14200863)
			ObjectManager.withCreatureObject(pAddTen, function(tenthTime)
			writeData("countadd10", tenthTime:getObjectID())
				tenthTime:engageCombat(pPlayer)
                                CreatureObject(pAddTen):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddTen, "target locked")
		
			local pAddEleven = spawnMobile("dungeon2", "droideka", 0, -3.47903, 0.0315461, 34.4707, 213, 14200863)
			ObjectManager.withCreatureObject(pAddEleven, function(eleventhTime)
			writeData("countadd11", eleventhTime:getObjectID())
				eleventhTime:engageCombat(pPlayer)
                                CreatureObject(pAddEleven):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)				
			spatialChat(pAddEleven, "target locked")
		
			local pAddTwelve = spawnMobile("dungeon2",  "droideka", 0, 16.603, 0.0315462, 34.806, 205, 14200863)
			ObjectManager.withCreatureObject(pAddTwelve, function(twelthTime)
			writeData("countadd12", twelthTime:getObjectID())
				twelthTime:engageCombat(pPlayer)
                                CreatureObject(pAddTwelve):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddTwelve, "Target Lock")		
		end	
--------------------------------------
--   fourth wave 50% health check
--------------------------------------
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("ig88_boss:spawnState") == 4) then
			CreatureObject(pPlayer):sendSystemMessage("Fourth Enemy Wave Starting!")
			spatialChat(pBoss,"Boss Current Health = 50%")
			writeData("ig88_boss:spawnState", 5)
			local pAddThirteen = spawnMobile("dungeon2", "droideka", 0, -3.27221, 0.0315459, -7.91982, 342, 14200863)
			ObjectManager.withCreatureObject(pAddThirteen, function(thirteenthTime)
			writeData("countadd13", thirteenthTime:getObjectID())
				thirteenthTime:engageCombat(pPlayer)
                                CreatureObject(pAddThirteen):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddThirteen, "target locked")
	
			local pAddFourteen = spawnMobile("dungeon2", "droideka", 0, 16.7107, 0.0315455, -7.98008, 330, 14200863)
			ObjectManager.withCreatureObject(pAddFourteen, function(fourteenthTime)
			writeData("countadd14", fourteenthTime:getObjectID())
				fourteenthTime:engageCombat(pPlayer)
                                CreatureObject(pAddFourteen):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddFourteen, "target locked")
		
			local pAddFifteen = spawnMobile("dungeon2", "droideka", 0, -3.47903, 0.0315461, 34.4707, 213, 14200863)
			ObjectManager.withCreatureObject(pAddFifteen, function(fifteenthTime)
			writeData("countadd15", fifteenthTime:getObjectID())
				fifteenthTime:engageCombat(pPlayer)
                                CreatureObject(pAddFifteen):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)				
			spatialChat(pAddFifteen, "target locked")
		
			local pAddSixteen = spawnMobile("dungeon2",  "droideka", 0, 16.603, 0.0315462, 34.806, 205, 14200863)
			ObjectManager.withCreatureObject(pAddSixteen, function(sixteenthTime)
			writeData("countadd16", sixteenthTime:getObjectID())
				sixteenthTime:engageCombat(pPlayer)
                                CreatureObject(pAddSixteen):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddSixteen, "Target Lock")		
		end	
--------------------------------------
--   fifth wave 40% health check
--------------------------------------
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("ig88_boss:spawnState") == 5) then
			CreatureObject(pPlayer):sendSystemMessage("Fifth Enemy Wave Starting!")
			spatialChat(pBoss,"Boss Current Health = 40%")
			writeData("ig88_boss:spawnState", 6)
			local pAddSeventeen = spawnMobile("dungeon2", "droideka", 0, -3.27221, 0.0315459, -7.91982, 342, 14200863)
			ObjectManager.withCreatureObject(pAddSeventeen, function(seventeenthTime)
			writeData("countadd17", seventeenthTime:getObjectID())
				seventeenthTime:engageCombat(pPlayer)
                                CreatureObject(pAddSeventeen):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddSeventeen, "Target Lock")
			local pAddEighteen = spawnMobile("dungeon2",  "droideka", 0, 16.7107, 0.0315455, -7.98008, 330, 14200863)
			ObjectManager.withCreatureObject(pAddEighteen, function(eighteenthTime)
			writeData("countadd18", eighteenthTime:getObjectID())
				eighteenthTime:engageCombat(pPlayer)
                                CreatureObject(pAddEighteen):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
			end)
			spatialChat(pAddEighteen, "Target Lock")
		end		
--------------------------------------------
--   10% health check near death
--------------------------------------------
		if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("ig88_boss:spawnState") == 6) then
			spatialChat(pBoss, "Arming self destruct sequence!.")
                        CreatureObject(pBoss):playEffect("clienteffect/level_granted.cef", "")
--------------------------------------------
--   5% health check near death
--------------------------------------------
		if (((bossHealth <= (bossMaxHealth * 0.05)) or (bossAction <= (bossMaxAction * 0.05)) or (bossMind <= (bossMaxMind * 0.05))) and readData("ig88_boss:spawnState") == 6) then
			spatialChat(pBoss, "hahahahah.")
                        CreatureObject(pBoss):playEffect("clienteffect/level_granted.cef", "")
--------------------------------------------
--   1% health check for death
--------------------------------------------
		if (((bossHealth <= (bossMaxHealth * 0.002)) or (bossAction <= (bossMaxAction * 0.002)) or (bossMind <= (bossMaxMind * 0.002))) and readData("ig88_boss:spawnState") == 6) then
			spatialChat(pBoss, "Self Destruct!.")
                        CreatureObject(pBoss):playEffect("clienteffect/level_granted.cef", "")
			CreatureObject(pBoss):broadcastToServer("\\#63C8F9 A Group Has Cleared The IG-88 Boss Dungeon! Next Boss Encounter will be Avalible in 24 hours!.")
				end
			end
		end
	end
	return 0
end
----------------------------------------------
--   Added Active Area Check for broadcasting
----------------------------------------------
function ig88_boss:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("dungeon2", "object/active_area.iff", 4000, 0, 6010, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(75)
	        createObserver(ENTEREDAREA, "ig88_boss", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "ig88_boss", "notifySpawnAreaLeave", pSpawnArea)
	    end
end

function ig88_boss:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isNeutral() or player:isRebel()) then
			player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has Entered The Ig-88 Boss Dungeon!")
			player:sendSystemMessage("You Have Entered The Ig-88 Boss Dungeon!")
		end
		return 0
	end)
end

function ig88_boss:notifySpawnAreaLeave(pActiveArea, pMovingObject, pBoss, pPlayer)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isNeutral() or player:isRebel()) then
			player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has left the Ig-88 Boss Dungeon!")
			player:sendSystemMessage("You Have Left The Ig-88 Boss Dungeon!")
		end
		return 0
	end)
end
