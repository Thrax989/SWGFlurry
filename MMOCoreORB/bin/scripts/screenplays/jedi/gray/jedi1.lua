--------------------------------------
--   Creator : TOXIC
--   Date : 01/12/2020
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
	local pSpawnArea = spawnSceneObject("dungeon2", "object/active_area.iff", 5952, 10, -34, 0, 0, 0, 0, 0)
    
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
		
		if (player:hasSkill("combat_jedi_novice")) then
			player:sendSystemMessage("You have entered the training area!")
		else
			player:sendSystemMessage("You must be a gray jedi to enter the training area!")
			player:teleport(-33.6957, 0.77033, 24.5291, 14200816)
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
		
		if (player:hasSkill("combat_jedi_novice")) then
			player:sendSystemMessage("You have left training area!")
		end
		return 0
	end)
end
