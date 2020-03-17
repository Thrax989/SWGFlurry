--------------------------------------
--   Creator : TOXIC
--   Date : 03/25/2019
--------------------------------------
local ObjectManager = require("managers.object.object_manager")

jedi5 = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "jedi5",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("jedi5", true)
  
function jedi5:start()
    	self:spawnActiveAreas()
end
  
function jedi5:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("corellia", "object/active_area.iff", 0, 0, 0, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(340)
	        createObserver(ENTEREDAREA, "jedi5", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "jedi5", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function jedi5:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
        local thisState = player:getScreenPlayState(jediQuest.questString)

        if ( thisState ~= 5 ) then
		if (player:isImperial() or player:isRebel() or player:isNeutral()) then
			player:sendSystemMessage("You must have the quest state to enter the zone!")
			player:teleport(0, 0, 0, 0)
		else
			player:sendSystemMessage("You have entered the Quest Zone")
		end
		return 0
	end)
end

function jedi5:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
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
