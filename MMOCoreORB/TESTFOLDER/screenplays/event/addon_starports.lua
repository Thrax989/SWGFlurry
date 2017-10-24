require('utils.player_switch_zone')

addon_starports = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("addon_starports", true)

local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function addon_starports:start()
	if (not isZoneEnabled("corellia"))  or (not isZoneEnabled("naboo"))  or (not isZoneEnabled("rivertest")) or (not isZoneEnabled("endor")) then
		return 0
	end
	
	self:spawnSceneObjects()
	self:spawnMobiles()
end

function addon_starports:spawnMobiles()



--[[
	spawnMobile("rivertest","rebel_recruiter", 120, 45.2, 0.1, -4.6, -10, 281475199510306)
	spawnMobile("rivertest","imperial_recruiter", 120, 43.4, 0.1, -4.6, -20, 281475199510306)
	spawnMobile("rivertest","rebel_recruiter", 120, -4.1, 26.4, 11.0, -10, 281475199510869)
	spawnMobile("rivertest","imperial_recruiter", 120, -3.8, 26.7, 13.1, -10, 281475199510869)
]]
end

function addon_starports:createObserver(pCollector, CustomName, ObserverName)
	local object = SceneObject(pCollector)
	object:setCustomObjectName(CustomName)
	createObserver(OBJECTRADIALUSED, "addon_starports", ObserverName, pCollector)
	return 0
end

function addon_starports:spawnSceneObjects()

	local pCollector = spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_command_console.iff", -1452.3, 15, -5668.9,  0, 0, 0, 0, 0)
	self:createObserver(pCollector, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")	
		
	

	pCollector = spawnSceneObject("naboo", "object/tangible/furniture/all/frn_all_command_console.iff", -2963.6, -191.6, 6044.3, 0, 0, 0, 1, 0)
	self:createObserver(pCollector, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")

--	pCollector = spawnSceneObject("rivertest", "object/tangible/furniture/all/frn_all_command_console.iff", -189.0, 1.5, 536.8, 0, 0, 0, 1, 0)
--	self:createObserver(pCollector, "\\#ee3377Travel to Coronet Corellia Hub", "teleportMB")

--	local pCollector = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -146.0, 28.0, -4706.0, 0, 0, 0, 0, 0)
--	self:createObserver(pCollector, "\\#ee3377Travel to Bloodfin Anniversary Bash", "teleportRIVER"

	--Naboo to River
--	local pCollector3 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4874.7, 6.0, 4141.0, 0, 0, 0, 1, 0)
--	self:createObserver(pCollector3, "\\#ee3377Travel to Bloodfin Anniversary Bash", "teleportRIVER")

--	local pCollector12 = spawnSceneObject("talus", "object/tangible/furniture/all/frn_all_command_console.iff", -3435.0, 55.3, 3370.0, 0, 0, 0, 1, 0)
--	self:createObserver(pCollector12)

--	local pCollector14 = spawnSceneObject("dantooine", "object/tangible/furniture/all/frn_all_command_console.iff", -7135.2, 0.3, -6084.7, 0, 0, 0, 1, 0)
--	self:createObserver(pCollector14)

--	local pCollector16 = spawnSceneObject("corellia", "object/tangible/furniture/all/frn_all_command_console.iff", -464.9, 22.2, -1678.8, 0, 0, 0, 1, 0)
--	self:createObserver(pCollector16)

end










function addon_starports:teleportMB(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "corellia", -148.3, 28, -4721.5, 85)
	return 0
end
--[[
function addon_starports:teleportRIVER(pCollector, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "rivertest", -205.2, 1.3, 537.9, 0)
	return 0
end
]]



