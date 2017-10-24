space_dathomirScreenPlay = ScreenPlay:new {
numberOfActs = 1,
}
	registerScreenPlay("space_dathomirScreenPlay", true)
	function space_dathomirScreenPlay:start()
	if (isZoneEnabled("space_dathomir")) then
	self:spawnSpaceStations()
	end
end

function space_dathomirScreenPlay:spawnSpaceStations()
-- Spacestation
  local zoneName = "space_dathomir";
  local spaceStationIff = "object/ship/spacestation_neutral.iff";
--Dathomir
  local stationObject = spawnSceneObject(zoneName, spaceStationIff, 6519.0, -5373.0, -2600.0, 0, 1, 0, 0, 0)

end
