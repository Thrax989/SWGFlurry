space_naboo = ScreenPlay:new {
numberOfActs = 1, 
}
	registerScreenPlay("space_naboo", true)
	function space_naboo:start()
	if (isZoneEnabled("space_naboo")) then
	self:spawnSpaceStations()
	end
end

function space_naboo:spawnSpaceStations()
-- Spacestation
  local zoneName = "space_naboo";
  local spaceStationIff = "object/ship/spacestation_neutral.iff";
-- naboo
  local stationObject = spawnSceneObject(zoneName, spaceStationIff, 6519.0, -5373.0, -2600.0, 0, 1, 0, 0, 0)
-- rori
  local stationObject = spawnSceneObject(zoneName,spaceStationIff, 6226.0, -4450, 484.0, 0, 0, 0, 0, 0)

end
