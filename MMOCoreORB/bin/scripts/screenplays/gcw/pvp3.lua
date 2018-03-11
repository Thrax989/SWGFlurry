--------------------------------------
--   Creator : TOXIC
--   Date : 03/10/2018
--------------------------------------
local ObjectManager = require("managers.object.object_manager")

pvp3 = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "pvp3",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("pvp3", true)
  
function pvp3:start()
    	self:spawnActiveAreas()
end
  
function pvp3:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("rori", "object/active_area.iff", 5283, 80, 5744, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(340)
	        createObserver(ENTEREDAREA, "pvp3", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "pvp3", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function pvp3:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			--player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has entered the Rori Pvp Zone!")
			player:sendSystemMessage("You have entered the Rori Pvp zone!")
			player:setFactionStatus(2)
		else
			player:sendSystemMessage("You must be Rebel or Imperial to enter the Pvp zone!")
			player:teleport(5294, 78, 6112, 0)
		end
		return 0
	end)
end

function pvp3:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel()) then
			--player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has left the Rori Pvp Zone!")
			player:sendSystemMessage("You have left the Rori Pvp zone!")
		end
		return 0
	end)
end