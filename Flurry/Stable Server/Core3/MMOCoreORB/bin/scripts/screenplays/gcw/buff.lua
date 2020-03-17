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
	        activeArea:setRadius(25)
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
			--player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has entered the buff Zone!")
			player:sendSystemMessage("You have entered the buff zone!")
			player:removeAllStructureSkillMod()
			player:addStructureSkillMod("private_buff_mind", 125)
			player:addStructureSkillMod("private_med_battle_fatigue", 15)
			player:addStructureSkillMod("private_med_wound_mind", 15)
			player:addStructureSkillMod("private_medical_rating", 125)
			player:addStructureSkillMod("private_med_wound_mind", 20)
			player:addStructureSkillMod("private_buff_mind", 125)
			player:addStructureSkillMod("private_med_battle_fatigue", 5)
			player:addStructureSkillMod("private_med_wound_health", 125)
			player:addStructureSkillMod("private_med_wound_action", 125)
			player:addStructureSkillMod("private_safe_logout", 1)

		else
			player:sendSystemMessage("You must be out of combat to enter the buff zone!")
			player:teleport(3469, 5, -4883, 0)
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
			player:sendSystemMessage("You have left the buff zone!")
			player:removeAllStructureSkillMod()
		end
		return 0
	end)
end