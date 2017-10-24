crimson_night_prototype_power_station = ScreenPlay:new {numberOfActs = 1, }

registerScreenPlay("crimson_night_prototype_power_station" ,true)

function crimson_night_prototype_power_station :start()
	if (isZoneEnabled("talus")) then
		self:spawnStructures()
		end
end

function crimson_night_prototype_power_station:spawnStructures()
-- Structures
--spawnSceneObject("talus","object/installation/battlefield/destructible/imperial_gate_house.iff", -2940.0, 14.3, -2220.0, 0, -0.707, 0, -0.707, 0)

end
