local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

custom_krayt_boss_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "custom_krayt_boss_screenplay",

}

registerScreenPlay("custom_krayt_boss_screenplay", true)

function custom_krayt_boss_screenplay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function custom_krayt_boss_screenplay:spawnMobiles()
  	pNpc = spawnMobile("tatooine", "krayt_queen", 6200, 7396, 7, 4478, 15, 0)
	
end
