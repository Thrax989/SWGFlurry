--This is to be used for static spawns that are NOT part of caves, cities, dungeons, poi's, or other large screenplays.
SpaceCorelliaStaticSpawnsScreenPlay = ScreenPlay:new 
{
  numberOfActs = 1,

  screenplayName = "SpaceCorelliaStaticSpawnsScreenPlay",
}

registerScreenPlay("SpaceCorelliaStaticSpawnsScreenPlay", true)

function SpaceCorelliaStaticSpawnsScreenPlay:start()
  if (isZoneEnabled("space_corellia")) then
    self:spawnMobiles()
  end
end


function SpaceCorelliaStaticSpawnsScreenPlay:spawnMobiles()
  local zoneName = "space_corellia";
  local spaceStationIff = "object/ship/spacestation_neutral.iff";
  local novaStation1Iff = "object/static/space/spacestation/mining_outpost_01.iff";  
  local novaStation2Iff = "object/static/space/spacestation/corsec_outpost_01.iff";  
  local novaStation3Iff = "object/static/space/spacestation/tradefed_outpost_01.iff";
  local novaStation4Iff = "object/static/space/spacestation/tradefed_outpost_01.iff";  
  local novaStation5Iff = "object/static/space/spacestation/tradefed_outpost_01.iff";  
  local spaceCorvetteIff = "object/static/space/ship/corellian_corvette.iff";  
  local spaceIsdIff = "object/ship/star_destroyer.iff";
  local bridgeIsdIff = "object/tangible/ship/attachment/bridge/star_destroyer_bridge.iff";  
  local hangarIsdIff = "object/tangible/ship/attachment/hangar/star_destroyer_hangar.iff";
  local tower1IsdIff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_1.iff";
  local tower2IsdIff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_2.iff";  
  local spaceIsd2Iff = "object/ship/star_destroyer.iff";  
  

--[[  local spaceIsdIff = spawnSceneObject(zoneName, spaceIsdIff, -473, 300, -4725, 0, 1, 0, 0, 0 )
  local tower1IsdIff = spawnSceneObject(zoneName, tower1IsdIff, -620, 809, -4338, 0, 1, 0, 0, 0 ) 
  local tower2IsdIff = spawnSceneObject(zoneName, tower2IsdIff, -328, 809, -4338, 0, 1, 0, 0, 0 ) 
  local bridgeIsdIff = spawnSceneObject(zoneName, bridgeIsdIff, -473, 754.5, -4395.5, 0, 1, 0, 0, 0 ) 
  local hangarIsdIff = spawnSceneObject(zoneName, hangarIsdIff, -471, 343, -5514, 0, 1, 0, 0, 0 )  --]]

  local spaceCorvetteIff = spawnSceneObject(zoneName, spaceCorvetteIff, 7000, -7000, 7026, 0, 1, 0, 0, 0 )  

  local spaceIsdIff = spawnSceneObject(zoneName, spaceIsdIff, 4972, 5055, 5509, 0, 1, 0, 0, 0 )
  local tower1IsdIff = spawnSceneObject(zoneName, tower1IsdIff, 4823, 5574, 5896, 0, 1, 0, 0, 0 ) 
  local tower2IsdIff = spawnSceneObject(zoneName, tower2IsdIff, 5119, 5574, 5896, 0, 1, 0, 0, 0 ) 
  local bridgeIsdIff = spawnSceneObject(zoneName, bridgeIsdIff, 4972, 5509.5, 5839.4, 0, 1, 0, 0, 0 ) 
  local hangarIsdIff = spawnSceneObject(zoneName, hangarIsdIff, 4971, 5098, 4720, 0, 1, 0, 0, 0 )

  local stationObject = spawnSceneObject(zoneName, spaceStationIff, 6519.0, -5373.0, -2600.0, 0, 1, 0, 0, 0)

  local stationObject = spawnSceneObject(zoneName, spaceStationIff, -6348.0, -5274.0, -3956.0, 0, 1, 0, 0, 0)  

  local novaStation1Iff = spawnSceneObject(zoneName, novaStation1Iff, -2186, 5766, 5352, 0, math.rad(55)) 
  local novaStation2Iff = spawnSceneObject(zoneName, novaStation2Iff, -2186, 5786, 5352, 0, 1, 0, 0, 0 )
  local novaStation3Iff = spawnSceneObject(zoneName, novaStation3Iff, -2186, 5728, 5352, 0, math.rad(55))
  local novaStation4Iff = spawnSceneObject(zoneName, novaStation4Iff, -2186, 5666, 5352, 0, math.rad(7))
  local novaStation5Iff = spawnSceneObject(zoneName, novaStation5Iff, -2186, 5611, 5352, 0, math.rad(55))

  
 

--  local zoneName = "corellia";
--  local spaceIsdIff = "object/ship/star_destroyer.iff";
--  local bridgeIsdIff = "object/tangible/ship/attachment/bridge/star_destroyer_bridge.iff";  
--  local hangarIsdIff = "object/tangible/ship/attachment/hangar/star_destroyer_hangar.iff";
--  local tower1IsdIff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_1.iff";
--  local tower2IsdIff = "object/tangible/ship/attachment/shield/star_destroyer_shieldtower_2.iff";  
  
--  local spaceIsdIff = spawnSceneObject(zoneName, spaceIsdIff, -473, 300, -4725, 0, 1, 0, 0, 0 )
--  local tower1IsdIff = spawnSceneObject(zoneName, tower1IsdIff, -620, 809, -4338, 0, 1, 0, 0, 0 ) 
--  local tower2IsdIff = spawnSceneObject(zoneName, tower2IsdIff, -328, 809, -4338, 0, 1, 0, 0, 0 ) 
--  local bridgeIsdIff = spawnSceneObject(zoneName, bridgeIsdIff, -473, 754.5, -4395.5, 0, 1, 0, 0, 0 ) 
--  local hangarIsdIff = spawnSceneObject(zoneName, hangarIsdIff, -471, 343, -5514, 0, 1, 0, 0, 0 )  

  
  
  -- spawnMobile("corellia", "scientist", 1, -1425.6, 85.2822, 1979.5, 139, 0) 
  -- spawnSceneObject("corellia", "object/tangible/camp/camp_stool_tall.iff", -1420.0, 85.2822, 1976.9, 0, 1, 0, 0, 0 )
  
  
end
