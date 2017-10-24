space_dantooineScreenPlay = ScreenPlay:new {
numberOfActs = 1, 
}
  registerScreenPlay("space_dantooineScreenPlay", true)
  function space_dantooineScreenPlay:start()
  if (isZoneEnabled("space_dantooine")) then
  self:spawnSpaceStations()
  end
end

function space_dantooineScreenPlay:spawnSpaceStations()
-- Spacestation
  local zoneName = "space_dantooine";
  local spaceStationIff = "object/ship/spacestation_neutral.iff";
-- Dantooine
  local stationObject = spawnSceneObject(zoneName, spaceStationIff, 6519.0, -5373.0, -2600.0, 0, 1, 0, 0, 0)

end
