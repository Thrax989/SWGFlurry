--------------------------------------
--   Creator : TOXIC
--   Date : 03/25/2019
--------------------------------------
local ObjectManager = require("managers.object.object_manager")

jedi12 = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "jedi12",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("jedi12", true)
  
function jedi12:start()
    	self:spawnActiveAreas()
end
  
function jedi12:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("corellia", "object/active_area.iff", 0, 0, 0, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(340)
	        createObserver(ENTEREDAREA, "jedi12", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "jedi12", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function jedi12:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
        local thisState = player:getScreenPlayState(jediQuest.questString)

        if ( thisState ~= 12 ) then
		if (player:isImperial() or player:isRebel() or player:isNeutral()) then
			player:sendSystemMessage("You must have the quest state to enter the zone!")
			player:teleport(0, 0, 0, 0)
		else
			player:sendSystemMessage("You have entered the Quest Zone")
		end
		return 0
	end)
end

function jedi12:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
 
		if (player:isImperial() or player:isRebel() or player:isNeutral()) then
			player:sendSystemMessage("You have left the Quest zone!")
		end
		return 0
	end)
end
