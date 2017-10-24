space_yavin4ScreenPlay = ScreenPlay:new {
numberOfActs = 1,
}
registerScreenPlay("space_yavin4ScreenPlay", true)
function space_yavin4ScreenPlay:start()
	if (isZoneEnabled("space_yavin4")) then
	self:spawnSpaceStations()
	end
end
function space_yavin4ScreenPlay:spawnSpaceStations()
-- Spacestation
  local zoneName = "space_yavin4";
  local spaceStationIff = "object/ship/spacestation_neutral.iff";
-- yavin4
  local stationObject = spawnSceneObject(zoneName, spaceStationIff, 6519.0, -5373.0, -2600.0, 0, 1, 0, 0, 0)
end
