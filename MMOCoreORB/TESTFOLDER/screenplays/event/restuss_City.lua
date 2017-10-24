restuss_CityScreenPlay = ScreenPlay:new {numberOfActs = 1, }

registerScreenPlay("restuss_CityScreenPlay" ,true)
spHelper = require("screenplayHelper")

function restuss_CityScreenPlay :start()
	if (isZoneEnabled("rori")) then
		self:spawnStructures()
	--	self:spawnMobile()
		self:spawnParticles()
	--	self:spawnTurrets()
	end
end

function restuss_CityScreenPlay:spawnParticles()
	spawnSceneObject("rori","object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", 5275.0, 120.0, 6068.0, 0, 0, 0, 0, 0)	
--	spawnSceneObject("rori","object/static/particle/particle_distant_ships_dogfight_t_vs_x.iff", -3140.0, 0.0, -2550, 0, 0, 0, 0, 0)	
end

function restuss_CityScreenPlay:spawnStructures()
-- Structures
--spawnSceneObject(<planet>, <objecttemplatefile>, x, z, y, <cell>, dw, dx, dy, dz> setting dw , dx , dy and dz http://www.onlineconversion.com/quaternions.htm 
-- Guardtowers
--spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", -2962.0, 0, -2100.0, 0, 0.707, 0, 0.707, 0)
--spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", -2990.0, 0, -2100.0, 0, 0.707, 0, 0.707, 0)
--spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", -3235.0, 0, -2100.0, 0, 0.707, 0, 0.707, 0) 
--spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", -3255.0, 0, -2100.0, 0, 0.707, 0, 0.707, 0) 

--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2047.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2047.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2047.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2063.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2063.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2063.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2095.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2095.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2095.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2079.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2079.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2079.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2111.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2111.0, 0, 0, 0, 0, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2111.0, 0, 0, 0, 0, 0) 

--spawnSceneObject("rori","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2047.0, 0, 0.707, 0, 0.707, 0) 
--spawnSceneObject("rori","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2063.0, 0, 0.707, 0, 0.707, 0) 
--spawnSceneObject("rori","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2079.0, 0, 0.707, 0, 0.707, 0) 
--spawnSceneObject("rori","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2095.0, 0, 0.707, 0, 0.707, 0)
--spawnSceneObject("rori","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2111.0, 0, 0.707, 0, 0.707, 0)

--spawnSceneObject("rori","object/static/structure/corellia/corl_stair_small_s01.iff", -3438.0, 7.0, -2121.0, 0, 0, 0, -1, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_stair_small_s01.iff", -3445.0, 7.0, -2121.0, 0, 0, 0, -1, 0) 
--spawnSceneObject("rori","object/static/structure/corellia/corl_stair_small_s01.iff", -3452.0, 7.0, -2121.0, 0, 0, 0, -1, 0) 

--FENCE ! spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", -3446.0, 11, -2060.0, 0, 0.707, 0, 0.707, 0) 

--[[spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3444.0, 12, -2065.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3452.0, 12, -2065.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3444.0, 12, -2070.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3452.0, 12, -2070.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3444.0, 12, -2075.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3452.0, 12, -2075.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3444.0, 12, -2080.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3452.0, 12, -2080.0, 0, 0.707, 0.707, 0, 0) 
]]--


--spawnSceneObject("rori","object/static/space/ship/nebulon_frigate.iff", -3335.0, 300, -2200.0, 0, 0.707, 0, 0.707, 0)

--bridge south
--spawnSceneObject("rori","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3224.0, 0.0, -2048.0, 0, 0.707, 0, 0.707, 0)


-- southwall
--spawnHorizontalSceneObjects("rori", -3000.5, -2100.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 15, 16)
--spawnSceneObject("rori","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3264.0, 4.7, -2100.0, 0, 0, 0, 0, 0)
--spawnVerticalSceneObjects("rori", -3272.0, -2045.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 4, 16)
--spawnHorizontalSceneObjects("rori", -3280, -2037.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 12, 16)
-- Eastwall
--spawnVerticalSceneObjects("rori", -3463.0, -2045.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 20, 16)
--spawnHorizontalSceneObjects("rori", -3439.0, -2357.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 2, 16)
spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", 5210.0, 79, 6067.0, 0, 1, 0, 0, 0) 
spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", 5350.0, 79, 6068.0, 0, 0, 0, 1, 0)
spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", 5210.0, 79, 6195.0, 0, 0.707, 0, 0.707, 0) 
spHelper.spawnVerticalSceneObjects("rori", -3406.0, -2364.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 5, 16)

walliff = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff"

spawnSceneObjectlineToDirection("rori", walliff, 5275.0, 79, 6068.0, "W", 4, 16)
spawnSceneObjectlineToDirection("rori", walliff, 5210.0, 79, 6067.0, "N", 4, 16)
spawnSceneObjectlineToDirection("rori", walliff, 5210.0, 79, 6131.0, "N", 4, 16)
spawnSceneObjectlineToDirection("rori", walliff, 5210.0, 79, 6195.0, "E", 4, 16)
spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", 5279.0, 79, 6195.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", 5283.0, 79, 6195.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", 5350.0, 79, 6195.0, 0, 0.707, 0, 0.707, 0)
spawnSceneObjectlineToDirection("rori", walliff, 5286.0, 79, 6195.0, "E", 4, 16)
spawnSceneObjectlineToDirection("rori", walliff, 5350.0, 79, 6195.0, "S", 4, 16)
spawnSceneObjectlineToDirection("rori", walliff, 5350.0, 79, 6131.0, "S", 4, 16)
spawnSceneObjectlineToDirection("rori", walliff, 5348.0, 79, 6068.0, "W", 4, 16)
--westwall
--spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", -2958.0, 13.5, -2277.0, 0, -0.707, 0, 0.707, 0)
--spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", -2958.0, 13.5, -2247.0, 0, -0.707, 0, -0.707, 0)
--spawnHorizontalSceneObjects("rori", -2931.0, -2245.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 2, 16)
--spawnHorizontalSceneObjects("rori", -2839.0, -2376.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 8, 16)
--spawnVerticalSceneObjects("rori", -2958.0, -2288.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 6, 16)
--spawnSceneObjectlineToDirection("rori", walliff, -2958.0, -2279.0, "SE", 11, 16)
--spawnVerticalSceneObjects("rori", -2958.0, -2108.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 9, 16)
--spawnSceneObjectlineToDirection("rori", walliff, -2831.0, -2376.0, "W", 2, 16)
--spawnSceneObjectlineToDirection("rori", walliff, -2831.0, -2376.0, "S", 2, 16)
--spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", -2831.0, 13.5, -2431.0, 0, -0.707, 0, 0.707, 0)
--spawnSceneObject("rori","object/building/military/military_outpost_guard_tower_1.iff", -2831.0, 13.5, -2407.0, 0, -0.707, 0, -0.707, 0)
-- Solarunit
--spawnSceneObject("rori","object/static/installation/mockup_power_generator_solar_style_1.iff", -3040.5, 5.0, -2120.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/structure/military/bunker_pillar_style_02.iff", -3040.5, 5.0, -2115.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/installation/mockup_power_generator_solar_style_1.iff", -3040.5, 5.0, -2110.0, 0, 0, 0, 0, 0)
-- Speederbikes
--spawnSceneObject("rori","object/static/vehicle/static_speeder_bike.iff", -2992.0, 5.8 , -2094.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/vehicle/static_speeder_bike.iff", -2988.0, 5.8 , -2094.0, 0, 0, 0, 0, 0)
-- Skiff Transport
--spawnSceneObject("rori","object/static/vehicle/static_swoop_bike.iff", -2936.5, 14.8 , -2256.8, 0,  -0.707, 0, 0.707, 0)
--spawnSceneObject("rori","object/resource_container/inorganic_minerals.iff", -2935.2, 15.9 , -2256.8, 0, 0, 0, 0, 0)
-- Imperial Banner
--spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff", -2962.0, 7.2 , -2096.3, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/structure/general/banner_imperial_style_01.iff", -3255.2, 4.0 , -2096.3, 0, 0, 0, 0, 0)
-- Ships
--spawnSceneObject("rori","object/static/vehicle/static_lambda_shuttle.iff", -3000.0, 7.3, -2140.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3014.0, 5.0, -2148.0, 0, 0.707, 0, -0.707, 0)
--spawnSceneObject("rori","object/static/vehicle/static_lambda_shuttle.iff", -3035.0, 6.7, -2140.0, 0, 0, 0, 0, 0)
-- Ambient
--spawnSceneObject("rori","object/tangible/crafting/station/public_space_station.iff", -2985.0, 7.4, -2130.0, 0,  0.707, 0, 0.707, 0)
--spawnSceneObject("rori","object/tangible/crafting/station/public_space_station.iff", -2985.0, 7.4, -2133.0, 0,  0.707, 0, 0.707, 0)
--spawnSceneObject("rori","object/static/structure/general/allum_mine_pipes_s01.iff", -2985.0, 8.1 , -2140.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/structure/general/allum_mine_pipes_s02.iff", -2985.6, 8.1 , -2150.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2985.6, 7.3 , -2127.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -3009.9, 5.5 , -2105.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/tangible/camp/camp_pavilion_s1.iff", -2982.0, 7.4 , -2130.0, 0, 0, 0, 0, 0)
--spawnSceneObject("rori","object/tangible/crafting/station/public_space_station.iff", -3385.0, 6.4, -2208.8, 0,  0.707, 0, 0.707, 0)

--local pTent = spawnSceneObject("rori","object/tangible/camp/camp_pavilion_s1.iff", -2982.0, 7.4 , -2130.0, 0, 0, 0, 0, 0)
--pTent:setClearFloraRadius(90)

--spawnSceneObject("rori","object/tangible/camp/camp_pavilion_s1.iff", -3012.0, 5.4 , -2110.0, 0, 0, 0, 0, 0)
--vehicles
--spawnSceneObject("rori","object/mobile/vehicle/speederbike_flash.iff", -2967.0, 7.6 , -2108.0, 0, 0, 0, 0, 0)
--test


end

--[[function restuss_CityScreenPlay:spawnMobile()

 --spawnMobile(planet, mobileTemplate, respawnTimer, x, z, y, heading, cellid)
spawnMobileAndIdle("rori", "crimson_at_st", 600, -2930.39, 13.12, -2285.70, 90, 0 )
spawnMobileAndIdle("rori", "crimson_at_st", 600, -3231.39, 2.4, -2075.70, 90, 0 )
-- LavaSkiff 
spawnMobile("rori", "crimson_stormtrooper", 600, -2935.7, 14.9, -2259.8, 90, 0)
spawnMobile("rori", "kobola_miner", 600, -2933.2, 5.9, -2260.3, 270, 0)
-- Scouts
spawnMobile("rori", "crimson_scout_trooper", 600, -2991.0, 5.9, -2093.3, 90, 0)
spawnMobile("rori", "crimson_scout_trooper", 600, -2989.6, 5.9, -2093.3, -90, 0)
-- droids
spawnMobile("rori", "imperial_probe_drone", 600, -3254.6, 3.8, -2092.7, 0, 0)
spawnMobile("rori", "imperial_probe_drone", 600, -2994.0, 5.9, -2094.3, 0, 0)
spawnMobile("rori", "crimson_droideka", 600, -2962.0, 5.9, -2094.3, 0, 0)
spawnMobile("rori", "crimson_droideka", 600, -2952.2, 5.9, -2255.3, 90, 0)
spawnMobile("rori", "crimson_droideka", 600, -3235.5, 3.6, -2094.0, 0, 0)
spawnMobile("rori", "cll8_binary_load_lifter", 600, -3010.0, 6.4, -2130.0, 110, 0)
spawnMobile("rori", "crimson_technician", 600, -2982.4, 7.6, -2129.2, 270, 0)
spawnMobile("rori", "crimson_droideka", 600, -2825.4, 10.8, -2411.2, 90, 0)
spawnMobileAndIdle("rori", "crimson_droideka", 180, -2977, 5.5, -2072.70, 90, 0 )

spawnMobileAndIdle("rori", "crimson_stormtrooper", 600, -3421.39, 3.1, -2370.70, 90, 0 )
spawnMobileAndIdle("rori", "crimson_stormtrooper", 600, -3242.39, 5.4, -2678.70, 90, 0 )
spawnMobileAndIdle("rori", "crimson_stormtrooper", 600, -2817.39, 9.25, -2430.70, 90, 0 )
spawnMobile("rori", "crimson_stormtrooper", 600, -3424.2, 3.6, -2358.0, 90, 0 )

--Townpersons
-- Questmobs
end

function restuss_CityScreenPlay:spawnTurrets()
	spawnImpTurret("rori","object/installation/faction_perk/turret/block_med.iff", -3270.0, 0.6, -2035, 0, 0, 0, 0, 0, 6)
	spawnImpTurret("rori","object/installation/faction_perk/turret/block_med.iff", -3468.0, 0.0, -2361, 0, 0, 0, -1, 0, 6)
	spawnImpTurret("rori","object/installation/faction_perk/turret/block_med.iff", -3228.0, 5.4, -2692.0, 0, 0, 0, -1, 0, 6)
	spawnImpTurret("rori","object/installation/faction_perk/turret/block_med.iff", -3250.0, 5.4, -2692.0, 0, 0, 0, -1, 0, 6)
	spawnImpTurret("rori","object/installation/faction_perk/turret/block_med.iff", -2920.0, 16.3, -2245.0, 0, 0.707, 0, 0.707, 0, 6)
end--]]


