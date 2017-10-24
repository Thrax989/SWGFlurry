space_endorScreenPlay = ScreenPlay:new {
numberOfActs = 1, 
}
	registerScreenPlay("space_endorScreenPlay", true)
	function space_endorScreenPlay:start()
	if (isZoneEnabled("space_endor")) then
	self:spawnSpaceStations()
	end
end

function space_endorScreenPlay:spawnSpaceStations()
-- Spacestation
  local zoneName = "space_endor";
  local spaceStationIff = "object/ship/spacestation_neutral.iff";
-- endor
  local stationObject = spawnSceneObject(zoneName, spaceStationIff, 6519.0, -5373.0, -2600.0, 0, 1, 0, 0, 0)

end
