--------------------------------------
--   Creator : TOXIC
--   Date : 07/29/2020
--------------------------------------
local ObjectManager = require("managers.object.object_manager")

pvp = ScreenPlay:new {
	numberOfActs = 1,
  	questString = "pvp",
  	questdata = Object:new {
    	activePlayerName = "initial",
    	}
}
  
registerScreenPlay("pvp", true)
  
function pvp:start()
    	self:spawnActiveAreas()
end

function pvp:spawnActiveAreas()
	local pSpawnArea = spawnSceneObject("rori", "object/active_area.iff", 5297.32, 78.565, 6115.49, 0, 0, 0, 0, 0)
    
	if (pSpawnArea ~= nil) then
		local activeArea = LuaActiveArea(pSpawnArea)
	        activeArea:setCellObjectID(0)
	        activeArea:setRadius(33)
	        createObserver(ENTEREDAREA, "pvp", "notifySpawnArea", pSpawnArea)
	        createObserver(EXITEDAREA, "pvp", "notifySpawnAreaLeave", pSpawnArea)
	    end
end
 
function pvp:notifySpawnArea(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end
		
		if (player:isImperial() or player:isNeutral() or player:isRebel()) then
			player:sendSystemMessage("You have entered the pvp safe zone.")
			player:playEffect("clienteffect/sm_end_of_the_line.cef", "")
			player:playEffect("clienteffect/player_clone_compile.cef", "")
			player:setFactionStatus(0)
			end
		return 0
	end)
end

function pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
	
	if (not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end
	
	return ObjectManager.withCreatureObject(pMovingObject, function(player)
		if (player:isAiAgent()) then
			return 0
		end

		if (player:hasSkill("combat_jedi_novice") or player:hasSkill("combat_jedi_master")) then
			player:sendSystemMessage("Gray Jedi Cannot PvP Here!")
			player:teleport(5293, 78, 6115, 0)
			return 0
		end

		if (player:isImperial() or player:isNeutral() or player:isRebel()) then
			player:sendSystemMessage("You entered the pvp zone!")
			player:setFactionStatus(2)
			player:playEffect("clienteffect/sm_end_of_the_line.cef", "")
			player:playEffect("clienteffect/player_clone_compile.cef", "")
		end
		return 0
	end)
end
