local ObjectManager = require("managers.object.object_manager")

jakku_pvp = ScreenPlay:new {
  numberOfActs = 1,
  questString = "jakku_pvp",
  states = {onleave = 1, overt = 2},
  questdata = Object:new {
    activePlayerName = "initial",
  }
--  tickTime = 5 * (60 * 1000), -- Pulse xp every 5 minutes
--  tickXpAmount = 20, -- Amount of xp to pulse
--  xpTimeRequirement = 30 * 60, -- Must earn xp in the active area at least every 30 mins to be eligible for tick  
}
  
registerScreenPlay("jakku_pvp", true)
  
function jakku_pvp:start()
      self:spawnActiveAreas()
--      self:spawnSceneObjects()
      self:spawnMobiles()
end

function jakku_pvp:spawnMobiles()
 --   spawnMobile("jakku", "dark_jedi_sentinel",1, 4325,7,-5097,0,0)
end
  
function jakku_pvp:spawnActiveAreas()
  local pSpawnArea = spawnSceneObject("jakku", "object/active_area.iff", -5945, 20, 5774, 0, 0, 0, 0, 0)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(512)
          createObserver(ENTEREDAREA, "jakku_pvp", "notifySpawnAreaEnter", pSpawnArea)
          createObserver(EXITEDAREA, "jakku_pvp", "notifySpawnAreaLeave", pSpawnArea)
      end
end
 
--checks if player enters the zone, and what to do with them.
function jakku_pvp:notifySpawnAreaEnter(pActiveArea, pMovingObject)
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end

	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end 

		if (player:isImperial() or player:isRebel()) then
			createEvent(1, "jakku_pvp", "handlePvpZone", pMovingObject)
			player:sendSystemMessage("You have entered the Battle of Jakku!")
		else
			player:sendSystemMessage("You must be Rebel or Imperial to enter the PvP zone!")
			player:teleport(-5906, 47, 5245, 0)
		end
		return 0
	end)
end

--checks if player leaves the zone, and what to do with them.
function jakku_pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end

    writeData(player:getObjectID() .. ":jakku_withinActiveArea", 0);
    
--    dropObserver(XPAWARDED, "jakku_pvp", "xpAwardedEventHandler", player)
--    dropObserver(LOGGEDOUT, "jakku_pvp", "loggedOutEventHandler", player) 
        
 -- Could separate out by faction and deliver alternate exit points.  
    if (player:isInCombat()) then
      player:sendSystemMessage("You have deserted in the heat of battle. For this you will be sent to the Arena of Atonement.")
      player:teleport(-5961, 17, 5659, 0)
    else
      player:sendSystemMessage("You are now leaving the battle area!")
    end           
    return 0
  end)
end

--Handles the setting of factional status
function jakku_pvp:handlePvpZone(pPlayer)
  ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
    deleteData(player:getObjectID() .. ":changingFactionStatus")
    if (playerObject:isCovert() or playerObject:isOnLeave()) then
      playerObject:setFactionStatus(2)
    end
    
--    writeData(player:getObjectID() .. ":jakku_withinActiveArea", 1)

    -- TODO: This is exploitable right now.  Technically you can step in and out of the 
    -- active area and reset your timer in order to keep getting xp.  This will be 
    -- addressed in the next update of this screenplay.
--    writeData(player:getObjectID() .. ":jakku_lastXpEarnedTime", getTimestamp())
    
--    createObserver(XPAWARDED, "jakku_pvp", "xpAwardedEventHandler", pPlayer)
--    createObserver(LOGGEDOUT, "jakku_pvp", "loggedOutEventHandler", pPlayer)
   
--    if not (readData(player:getObjectID() .. ":jakku_xpTickEventScheduled") == 1) then
--      writeData(player:getObjectID() .. ":jakku_xpTickEventScheduled", 1)
--      createEvent(self.tickTime, "jakku_pvp", "handleXpTick", pPlayer)
--    end
  end)
end

--[[Handles the ticking of xp while within the area
function jakku_pvp:handleXpTick(pPlayer)
  ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
    local curTime = getTimestamp()
    local lastTime = readData(player:getObjectID() .. ":jakku_lastXpEarnedTime");
    local timeDiff = curTime - lastTime
  
    writeData(player:getObjectID() .. ":jakku_xpTickEventScheduled", 0)
  
    if (readData(player:getObjectID() .. ":jakku_withinActiveArea") == 1) then
      if ((timeDiff <= self.xpTimeRequirement) and playerObject:isOnline()) then
        dropObserver(XPAWARDED, "jakku_pvp", "xpAwardedEventHandler", pPlayer)
        playerObject:addExperience("gcw_skill_xp", self.tickXpAmount, true)
        createObserver(XPAWARDED, "jakku_pvp", "xpAwardedEventHandler", pPlayer)
      end
      
      createEvent(self.tickTime, "jakku_pvp", "handleXpTick", pPlayer)
      writeData(player:getObjectID() .. ":jakku_xpTickEventScheduled", 1)
    end
  end)
end
  
-- Event handler for the XPAWARDED event.
-- @param pObject pointer to the creature object of the player who was awarded xp
-- @param pCreatureObject pointer to the creature object of the player who was awarded xp
-- @param xpAmount the amount of xp earned
-- @return 0 to keep the observer active.
function jakku_pvp:xpAwardedEventHandler(pObject, pCreatureObject, xpAmount)
  if (pCreatureObject == nil) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pCreatureObject, function(player)
    if (readData(player:getObjectID() .. ":jakku_withinActiveArea") == 0) then
      return 1
    end
    
    writeData(player:getObjectID() .. ":jakku_lastXpEarnedTime", getTimestamp());
    
    return 0
  end)
end--]]

function jakku_pvp:loggedOutEventHandler(pCreatureObject)
  if (pCreatureObject == nil) then
    return 1
  end
  
  return ObjectManager.withCreatureObject(pCreatureObject, function(player)
    if (readData(player:getObjectID() .. ":jakku_withinActiveArea") == 1) then
      player:teleport(-5906, 47, 5245, 0)
    end
      
    return 1
  end)
end
