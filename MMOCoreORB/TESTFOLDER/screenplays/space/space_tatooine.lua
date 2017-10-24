space_tatooineScreenPlay = ScreenPlay:new {
numberOfActs = 1,
}
	registerScreenPlay("space_tatooineScreenPlay" ,true)
	function space_tatooineScreenPlay:start()
	if (isZoneEnabled("space_tatooine")) then
	self:spawnSpaceStations()
	end
end

function space_tatooineScreenPlay:spawnSpaceStations()
-- Spacestation
  local zoneName = "space_tatooine";
  local spaceStationIff = "object/ship/spacestation_neutral.iff";
-- tatooine
  local stationObject = spawnSceneObject(zoneName, spaceStationIff, 6519.0, -5373.0, -2600.0, 0, 1, 0, 0, 0)

  local spaceIsdIff = "object/ship/star_destroyer.iff";
  local bridgeIsdIff = "object/tangible/ship/attachment/bridge/star_destroyer_bridge.iff";  
  local hangarIsdIff = "object/tangible/ship/attachment/hangar/star_destroyer_hangar.iff";
  local tower1IsdIff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_1.iff";
  local tower2IsdIff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_2.iff";  
  
  local spaceIsdIff = spawnSceneObject(zoneName, spaceIsdIff, -6523, -6374, -6387, 0, 1, 0, 0, 0 )
  local tower1IsdIff = spawnSceneObject(zoneName, tower1IsdIff, -6374, -5855, -6000, 0, 1, 0, 0, 0 ) 
  local tower2IsdIff = spawnSceneObject(zoneName, tower2IsdIff, -6670, -5855, -6000, 0, 1, 0, 0, 0 ) 
  local bridgeIsdIff = spawnSceneObject(zoneName, bridgeIsdIff, -6523, -5887.5, -5948.5, 0, 1, 0, 0, 0 ) 
  local hangarIsdIff = spawnSceneObject(zoneName, hangarIsdIff, -6522, -6334, -7163, 0, 1, 0, 0, 0 )  

end
