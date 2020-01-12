--------------------------------------
--   Creator : TOXIC
--   Date : 03/25/2019
--------------------------------------
local ObjectManager = require("managers.object.object_manager")

jedi1 = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "jedi1",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("jedi1", true)
  
function jedi1:start()
    	self:spawnActiveAreas()
end
  
function jedi1:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("dathomir", "object/active_area.iff", 5306, 0, -4145, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(10)
	        createObserver(ENTEREDAREA, "jedi1", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "jedi1", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function jedi1:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
        local jediLives = player:getScreenPlayState(jediQuest.questString)

        if ( jediLives >= 1 ) then
		if (player:isImperial() or player:isRebel() or player:isNeutral()) then
			player:sendSystemMessage("You have entered the Gray jedi Training area.")
		else
			player:sendSystemMessage("You must be a gray jedi to enter this area.")
			player:teleport(0, 0, 0, 0)
		end
		return 0
	end)
end

function jedi1:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
 
		if (player:isImperial() or player:isRebel() or player:isNeutral()) then
			player:sendSystemMessage("You have left the Training area!")
		end
		return 0
	end)
end
