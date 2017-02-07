local ObjectManager = require("managers.object.object_manager")

pvp1 = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "pvp1",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("pvp1", true)
  
function pvp1:start()
    	self:spawnActiveAreas()
end

function pvp1:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("kaas", "object/active_area.iff", -5070, 80, -2279, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(5)
	        createObserver(ENTEREDAREA, "pvp1", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "pvp1", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function pvp1:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isNeutral() or player:isRebel()) then
			player:sendSystemMessage("Teleporting you to saftey!")
			player:teleport(-5109, 81, -2118, 0)
		else
			player:sendSystemMessage("Teleporting you to saftey!")
		end
		return 0
	end)
end

function pvp1:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isNeutral() or player:isRebel()) then
			player:sendSystemMessage("You are safe for now!")
		end
		return 0
	end)
end
