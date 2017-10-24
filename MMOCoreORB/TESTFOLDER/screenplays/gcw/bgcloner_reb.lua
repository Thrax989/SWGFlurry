local ObjectManager = require("managers.object.object_manager")

bgcloner_reb = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "bgcloner_reb",
  	states = {onleave = 1, overt = 2},
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("bgcloner_reb", true)
  
function bgcloner_reb:start()
    	self:spawnActiveAreas()
	
end


  
function bgcloner_reb:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("tatooine", "object/active_area.iff", 6385.4, 50, -395.7, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(18)
	        createObserver(ENTEREDAREA, "bgcloner_reb", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "bgcloner_reb", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
--checks if player enters the zone, and what to do with them.
function bgcloner_reb:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial()) then
			player:sendSystemMessage("You are being teleported to the correct area")
			player:teleport(6107.9, 50.0, -445.1, 0)
	
		end
		return 0
	end)
end
--Simply sends a system message
function bgcloner_reb:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial()) then
			player:sendSystemMessage("You are now on the correct side of the Battlefield")
		end
		return 0
	end)
end
