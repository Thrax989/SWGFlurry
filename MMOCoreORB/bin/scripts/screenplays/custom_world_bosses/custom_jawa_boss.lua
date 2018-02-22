local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

custom_jawa_boss_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "custom_jawa_boss_screenplay",

}

registerScreenPlay("custom_jawa_boss_screenplay", true)

function custom_jawa_boss_screenplay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function custom_jawa_boss_screenplay:spawnMobiles()
  	pNpc = spawnMobile("tatooine", "custom_jawa_boss", 6200, -6180, 7, 1956, 15, 0)
	
	pNpc = spawnMobile("tatooine", "custom_jawa_bodyguard", 2200, -6157, 6, 1959, 15, 0)
	
	pNpc = spawnMobile("tatooine", "custom_jawa_bodyguard", 2200, -6190, 10, 1925, 15, 0)
	
	pNpc = spawnMobile("tatooine", "custom_jawa_bodyguard", 2200, -6262, 12, 1914, 15, 0)
	
	pNpc = spawnMobile("tatooine", "custom_jawa_bodyguard", 2200, -6214, 10, 1990, 15, 0)
	
end
