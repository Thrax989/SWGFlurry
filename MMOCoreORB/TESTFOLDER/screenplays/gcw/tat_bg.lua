local ObjectManager = require("managers.object.object_manager")

tat_bg = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "tat_bg",
  	states = {onleave = 1, overt = 2},
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("tat_bg", true)
  
function tat_bg:start()
    	self:spawnActiveAreas()
end
  
function tat_bg:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("tatooine", "object/active_area.iff", 6246.6, 1.0, -386.2, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(128)
	        createObserver(ENTEREDAREA, "tat_bg", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "tat_bg", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
--checks if player enters the zone, and what to do with them.
function tat_bg:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			createEvent(1, "tat_bg", "handlePvpZone", pMovingObject)
			player:sendSystemMessage("You have entered the Battleground!")
		else
			player:sendSystemMessage("You must be Rebel or Imperial to enter this Battleground!")
			player:teleport(6186, 27.7, -539.0, 0)
		end
		return 0
	end)
end

--Handles the setting of factional status
function tat_bg:handlePvpZone(pPlayer)
	ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
		deleteData(player:getObjectID() .. ":changingFactionStatus")
		if (playerObject:isCovert() or playerObject:isOnLeave()) then
			playerObject:setFactionStatus(2)
		end
	end)

end

--Simply sends a system message
function tat_bg:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			player:sendSystemMessage("You have left the Battleground!")
		end
		return 0
	end)
end
