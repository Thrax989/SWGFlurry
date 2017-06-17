local ObjectManager = require("managers.object.object_manager")

buff = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "buff",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("buff", true)
  
function buff:start()
    	self:spawnActiveAreas()
end
  
function buff:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("tatooine", "object/active_area.iff", 3441, 4, -4825, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(50)
	        createObserver(ENTEREDAREA, "buff", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "buff", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function buff:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isInCombat() ~= true) then
			player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has entered the buff Zone!")
			player:sendSystemMessage("You have entered the buff zone!")
			player:addSkillMod(0x10001,"private_medical_rating",125,true)
			player:addSkillMod(0x10001,"private_buff_mind",125,true)
			player:addSkillMod(0x10001,"private_med_battle_fatigue",125,true)

		else
			player:sendSystemMessage("You must be out of combat to enter the buff zone!")
			player:teleport(1, 1, 1, 0)
		end
		return 0
	end)
end

function buff:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isRebel() or player:isNeutral()) then
			player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has left the buff Zone!")
			player:sendSystemMessage("You have left the buff zone!")
			player:removeSkillMod(0x10001,"private_medical_rating",125,true)
			player:removeSkillMod(0x10001,"private_buff_mind",125,true)
			player:removeSkillMod(0x10001,"private_med_battle_fatigue",125,true)
		end
		return 0
	end)
end
