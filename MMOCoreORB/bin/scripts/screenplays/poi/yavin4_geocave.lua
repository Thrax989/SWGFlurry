--*--Created on: 3/23/2017--*--
--*--Author: TOXIC--*--
local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for GEO")

yavin4geocaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("yavin4geocaveScreenPlay", true)--print("registered GEO")

function yavin4geocaveScreenPlay:start()
	if isZoneEnabled("yavin4") then
	print("Yavin4 Enabled: Spawning GEO")
		self:spawnMobiles()
	end
end

function yavin4geocaveScreenPlay:spawnMobiles()

end
