space_lokScreenPlay = ScreenPlay:new {
numberOfActs = 1, 
}
	registerScreenPlay("space_lokScreenPlay", true)
	function space_lokScreenPlay:start()
	if (isZoneEnabled("space_lok")) then
            self:spawnMobiles()
	end
end

function space_lokScreenPlay:spawnMobiles()
-- Spacestation
  local zoneName = "space_lok";
  local spaceStationIff = "object/ship/spacestation_neutral.iff";
  local spaceIsdIff = "object/ship/star_destroyer.iff";
  local bridgeIsdIff = "object/tangible/ship/attachment/bridge/star_destroyer_bridge.iff";  
  local hangarIsdIff = "object/tangible/ship/attachment/hangar/star_destroyer_hangar.iff";
  local tower1IsdIff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_1.iff";
  local tower2IsdIff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_2.iff";  
  local spaceIsd2Iff = "object/ship/star_destroyer.iff";
  local bridgeIsd2Iff = "object/tangible/ship/attachment/bridge/star_destroyer_bridge.iff";  
  local hangarIsd2Iff = "object/tangible/ship/attachment/hangar/star_destroyer_hangar.iff";
  local tower1Isd2Iff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_1.iff";
  local tower2Isd2Iff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_2.iff";  
  local spaceIsd3Iff = "object/ship/star_destroyer.iff";
  local bridgeIsd3Iff = "object/tangible/ship/attachment/bridge/star_destroyer_bridge.iff";  
  local hangarIsd3Iff = "object/tangible/ship/attachment/hangar/star_destroyer_hangar.iff";
  local tower1Isd3Iff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_1.iff";
  local tower2Isd3Iff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_2.iff";  
  local platform1Iff = "object/static/space/spacestation/tradefed_destroyed_hulk.iff";
  local platform2Iff = "object/static/space/spacestation/tradefed_destroyed_hulk.iff";
  local platform3Iff = "object/static/space/spacestation/tradefed_destroyed_hulk.iff";
  local platform4Iff = "object/static/space/spacestation/tradefed_destroyed_hulk.iff";
  local platform5Iff = "object/static/space/spacestation/pirate_outpost_asteroid.iff";
  local platform6Iff = "object/static/space/spacestation/pirate_outpost_asteroid.iff";
  local platform7Iff = "object/static/space/spacestation/pirate_outpost_asteroid.iff";
  local platform8Iff = "object/static/space/spacestation/pirate_outpost_asteroid.iff";
  local platform9Iff = "object/static/space/spacestation/mining_outpost_01.iff";
--  local platform10Iff = "object/static/space/spacestation/tradefed_destroyed_hulk.iff";
--  local platform11Iff = "object/static/space/spacestation/tradefed_destroyed_hulk.iff";
--  local platform12Iff = "object/static/space/spacestation/tradefed_destroyed_hulk.iff";

--  local avatarStationIff = "object/static/space/spacestation/tradefed_outpost_01.iff";
 
-- lok
  local stationObject = spawnSceneObject(zoneName, spaceStationIff, 6519.0, -5373.0, -2600.0, 0, 1, 0, 0, 0)

  local platform1Iff = spawnSceneObject(zoneName, platform1Iff, -973.0, 60.0, 1141.0, 0, math.rad(0)) 
  local platform2Iff = spawnSceneObject(zoneName, platform2Iff, -973.0, 60.0, 1491.0, 0, math.rad(179)) 
  local platform3Iff = spawnSceneObject(zoneName, platform3Iff, -770.0, 60.0, 1291.0, 0, math.rad(-90)) 
  local platform4Iff = spawnSceneObject(zoneName, platform4Iff, -1141.0, 60.0, 1291.0, 0, math.rad(90))
  local platform5Iff = spawnSceneObject(zoneName, platform5Iff, -973.0, -80.0, 1000.0, 0, 0.5, 0.5, 0.5, 0.5) 
  local platform6Iff = spawnSceneObject(zoneName, platform6Iff, -973.0, -80.0, 1591.0, 0, 0.5, 0.5, 0.5, 0.5) 
  local platform7Iff = spawnSceneObject(zoneName, platform7Iff, -670.0, -80.0, 1291.0, 0, 0.0, 0.70, 0.70, 0.0) 
  local platform8Iff = spawnSceneObject(zoneName, platform8Iff, -1241.0, -80.0, 1291.0, 0, 0.70, 0.0, 0.0, 0.70)
  local platform9Iff = spawnSceneObject(zoneName, platform9Iff, -960.0, -150.0, 1333.0, 0, 0, 0, 0, 0)


  local spaceIsdIff = spawnSceneObject(zoneName, spaceIsdIff, 2972, 5055, 5509, 0, 1, 0, 0, 0 )
  local tower1IsdIff = spawnSceneObject(zoneName, tower1IsdIff, 2823, 5574, 5896, 0, 1, 0, 0, 0 ) 
  local tower2IsdIff = spawnSceneObject(zoneName, tower2IsdIff, 3119, 5574, 5896, 0, 1, 0, 0, 0 ) 
  local bridgeIsdIff = spawnSceneObject(zoneName, bridgeIsdIff, 2972, 5509.5, 5839.4, 0, 1, 0, 0, 0 ) 
  local hangarIsdIff = spawnSceneObject(zoneName, hangarIsdIff, 2971, 5098, 4720, 0, 1, 0, 0, 0 )

  local spaceIsd2Iff = spawnSceneObject(zoneName, spaceIsd2Iff, 1972, 5055, 3509, 0, 1, 0, 0, 0 )
  local tower1Isd2Iff = spawnSceneObject(zoneName, tower1Isd2Iff, 1823, 5574, 3896, 0, 1, 0, 0, 0 ) 
  local tower2Isd2Iff = spawnSceneObject(zoneName, tower2Isd2Iff, 2119, 5574, 3896, 0, 1, 0, 0, 0 ) 
  local bridgeIsd2Iff = spawnSceneObject(zoneName, bridgeIsd2Iff, 1972, 5509.5, 3839.4, 0, 1, 0, 0, 0 ) 
  local hangarIsd2Iff = spawnSceneObject(zoneName, hangarIsd2Iff, 1971, 5098, 2720, 0, 1, 0, 0, 0 )

  local spaceIsd3Iff = spawnSceneObject(zoneName, spaceIsd3Iff, 972, 5055, 5509, 0, 1, 0, 0, 0 )
  local tower1Isd3Iff = spawnSceneObject(zoneName, tower1Isd3Iff, 823, 5574, 5896, 0, 1, 0, 0, 0 ) 
  local tower2Isd3Iff = spawnSceneObject(zoneName, tower2Isd3Iff, 1119, 5574, 5896, 0, 1, 0, 0, 0 ) 
  local bridgeIsd3Iff = spawnSceneObject(zoneName, bridgeIsd3Iff, 972, 5509.5, 5839.4, 0, 1, 0, 0, 0 ) 
  local hangarIsd3Iff = spawnSceneObject(zoneName, hangarIsd3Iff, 971, 5098, 4720, 0, 1, 0, 0, 0 )

end
