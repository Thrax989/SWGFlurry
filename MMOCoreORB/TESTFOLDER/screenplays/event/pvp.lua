local ObjectManager = require("managers.object.object_manager")

pvp = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "pvp",
  	states = {onleave = 1, overt = 2},
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("pvp", true)
  
function pvp:start()
    	self:spawnActiveAreas()
end
  
function pvp:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("rori", "object/active_area.iff", 5318, 80, 5680, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(365)
	        createObserver(ENTEREDAREA, "pvp", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "pvp", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
--checks if player enters the zone, and what to do with them.
function pvp:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end

--[[	if LuaCreatureObject(pMovingObject):hasSkill("admin_base") then 
		return 0 
	end

	if LuaSceneObject(pMovingObject):isOwned() then
		local player = LuaCreatureObject(pMovingObject):getOwner()
		LuaCreatureObject(player):sendSystemMessage("You may not be mounted while entering the PvP zone!")
		LuaCreatureObject(player):teleport(5281, 80.5, 6187, 0)
		LuaCreatureObject(pMovingObject):teleport(5281, 80.5, 6187, 0)
		print("owned object found",pMovingObject)
		return 0
	else
		print("player found",pMovingObject)
	end--]] 
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end 

		if (player:isImperial() or player:isRebel()) then
			createEvent(1, "pvp", "handlePvpZone", pMovingObject)
			player:sendSystemMessage("You have entered the Restuss PvP zone!")

		else
			player:sendSystemMessage("You must be Rebel or Imperial to enter the PvP zone!")
			player:teleport(5298, 78, 6115, 0)
		end
		return 0
	end)
end

--Handles the setting of factional status
function pvp:handlePvpZone(pPlayer)
	ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
		deleteData(player:getObjectID() .. ":changingFactionStatus")
		if (playerObject:isCovert() or playerObject:isOnLeave()) then
			playerObject:setFactionStatus(2)
		end
	end)
	
end

--Simply sends a system message
function pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			player:sendSystemMessage("You have left the Restuss PvP zone!")
		end
		return 0
	end)
end
