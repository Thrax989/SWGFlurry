--------------------------------------
--   Creator : TOXIC
--   Date : 03/22/2019
--------------------------------------
local ObjectManager = require("managers.object.object_manager")

jedi3 = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "jedi3",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("jedi3", true)
  
function jedi3:start()
    	self:spawnActiveAreas()
end
  
function jedi3:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("corellia", "object/active_area.iff", 0, 0, 0, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(340)
	        createObserver(ENTEREDAREA, "jedi3", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "jedi3", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function jedi3:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
        local thisState = player:getScreenPlayState(jediQuest.questString)

        if ( thisState ~= 3 ) then
		if (player:isImperial() or player:isRebel() or player:isNeutral()) then
			player:sendSystemMessage("You must have the quest state to enter the zone!")
			player:teleport(5294, 78, 6112, 0)
		else
			player:sendSystemMessage("You have entered the Quest Zone")
		end
		return 0
	end)
end

function jedi3:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
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
