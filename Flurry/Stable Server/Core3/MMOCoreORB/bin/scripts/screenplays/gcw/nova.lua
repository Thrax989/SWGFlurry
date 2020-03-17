local ObjectManager = require("managers.object.object_manager")

nova = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "nova",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("nova", true)
  
function nova:start()
    	self:spawnActiveAreas()
end
  
function nova:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("dungeon2", "object/active_area.iff", 3959, 0, 2029, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(12)
	        createObserver(ENTEREDAREA, "nova", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "nova", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function nova:notifySpawnArea(pActiveArea, pMovingObject)
local player = LuaCreatureObject(pPlayer)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isNeutral() or player:isRebel()) then
			--player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has entered the nova Boss Teleport Zone!")
			player:sendSystemMessage("You have entered the Nova Boss Teleport Area.")
			player:playEffect("clienteffect/sm_end_of_the_line.cef", "")
			player:playEffect("clienteffect/player_clone_compile.cef", "")
			end
		return 0
	end)
end

function nova:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isNeutral() or player:isRebel()) then
			--player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has left the Nova Boss Teleport Zone!")
			player:sendSystemMessage("You have left the Nova Boss Teleport Area.")
			end
		return 0
	end)
end
