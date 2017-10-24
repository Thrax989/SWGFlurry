CrimsonNight_CityScreenPlay = ScreenPlay:new {numberOfActs = 1, }

registerScreenPlay("CrimsonNight_CityScreenPlay" ,true)
myHelper = require("screenplayHelper")

function CrimsonNight_CityScreenPlay :start()
	if (isZoneEnabled("talus")) then
		self:spawnStructures()
		self:spawnMobile()
		self:spawnParticles()
		self:spawnTurrets()
	end
end

function CrimsonNight_CityScreenPlay:spawnParticles()
	spawnSceneObject("talus","object/static/particle/particle_distant_ships_dogfight_ti_vs_aw.iff", -3100.0, 0.0, -2200, 0, 0, 0, 0, 0)	
	spawnSceneObject("talus","object/static/particle/particle_distant_ships_dogfight_t_vs_x.iff", -3140.0, 0.0, -2550, 0, 0, 0, 0, 0)	
end

function CrimsonNight_CityScreenPlay:spawnStructures()
-- Structures
--spawnSceneObject(<planet>, <objecttemplatefile>, x, z, y, <cell>, dw, dx, dy, dz> setting dw , dx , dy and dz http://www.onlineconversion.com/quaternions.htm 
-- Guardtowers
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -2962.0, 0, -2100.0, 0, 0.707, 0, 0.707, 0)
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -2990.0, 0, -2100.0, 0, 0.707, 0, 0.707, 0)
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -3235.0, 0, -2100.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -3255.0, 0, -2100.0, 0, 0.707, 0, 0.707, 0) 

spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2047.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2047.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2047.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2063.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2063.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2063.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2095.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2095.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2095.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2079.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2079.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2079.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3452.0, 10.5, -2111.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3445.0, 10.5, -2111.0, 0, 0, 0, 0, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3438.0, 10.5, -2111.0, 0, 0, 0, 0, 0) 

spawnSceneObject("talus","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2047.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2063.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2079.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2095.0, 0, 0.707, 0, 0.707, 0)
spawnSceneObject("talus","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3434.0, 8.5, -2111.0, 0, 0.707, 0, 0.707, 0)

spawnSceneObject("talus","object/static/structure/corellia/corl_stair_small_s01.iff", -3438.0, 7.0, -2121.0, 0, 0, 0, -1, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_stair_small_s01.iff", -3445.0, 7.0, -2121.0, 0, 0, 0, -1, 0) 
spawnSceneObject("talus","object/static/structure/corellia/corl_stair_small_s01.iff", -3452.0, 7.0, -2121.0, 0, 0, 0, -1, 0) 

--FENCE ! spawnSceneObjectAutoZ("talus","object/static/structure/corellia/corl_imprv_wall_4x16_s03.iff", -3446.0, 11, -2060.0, 0, 0.707, 0, 0.707, 0) 

--[[spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3444.0, 12, -2065.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3452.0, 12, -2065.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3444.0, 12, -2070.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3452.0, 12, -2070.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3444.0, 12, -2075.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3452.0, 12, -2075.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3444.0, 12, -2080.0, 0, 0.707, 0.707, 0, 0) 
spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3452.0, 12, -2080.0, 0, 0.707, 0.707, 0, 0) 
]]--


spawnSceneObject("talus","object/static/space/ship/nebulon_frigate.iff", -3335.0, 300, -2200.0, 0, 0.707, 0, 0.707, 0)

--bridge south
--spawnSceneObject("talus","object/static/structure/corellia/corl_imprv_bridge_sm_s02.iff", -3224.0, 0.0, -2048.0, 0, 0.707, 0, 0.707, 0)


-- southwall
myHelper.spawnHorizontalSceneObjects("talus", -3000.5, -2100.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 15, 16)
spawnSceneObject("talus","object/static/structure/military/military_wall_med_imperial_16_style_01.iff", -3264.0, 4.7, -2100.0, 0, 0, 0, 0, 0)
myHelper.spawnVerticalSceneObjects("talus", -3272.0, -2045.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 4, 16)
myHelper.spawnHorizontalSceneObjects("talus", -3280, -2037.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 12, 16)
-- Eastwall
myHelper.spawnVerticalSceneObjects("talus", -3463.0, -2045.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 20, 16)
myHelper.spawnHorizontalSceneObjects("talus", -3439.0, -2357.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 2, 16)
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -3428.0, 0, -2357.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -3410.0, 0, -2357.0, 0, 0.707, 0, 0.707, 0) 
myHelper.spawnVerticalSceneObjects("talus", -3406.0, -2364.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 5, 16)
spawnSceneObjectlineToDirection("talus", walliff, -3406.0, -2436.0, "SE", 4, 16)
spawnSceneObjectlineToDirection("talus", walliff, -3360.0, -2480.5, "S", 9, 16)
spawnSceneObjectlineToDirection("talus", walliff, -3360.0, -2625.0, "SE", 4, 16)
spawnSceneObjectlineToDirection("talus", walliff, -3316.0, -2670.0, "E", 4, 16)
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -3228.0, 0, -2670.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -3250.0, 0, -2670.0, 0, 0.707, 0, 0.707, 0) 
spawnSceneObjectlineToDirection("talus", walliff, -3226.0, -2670.0, "E", 8, 16)
spawnSceneObjectlineToDirection("talus", walliff, -3100.0, -2669.0, "NE", 9, 16)
spawnSceneObjectlineToDirection("talus", walliff, -2998.0, -2567.0, "E", 2, 16)
spawnSceneObjectlineToDirection("talus", walliff, -2966.0, -2567.0, "NE", 12, 16)
--westwall
spawnSceneObject("talus","object/building/military/military_outpost_guard_tower_1.iff", -2958.0, 13.5, -2277.0, 0, -0.707, 0, 0.707, 0)
spawnSceneObject("talus","object/building/military/military_outpost_guard_tower_1.iff", -2958.0, 13.5, -2247.0, 0, -0.707, 0, -0.707, 0)
myHelper.spawnHorizontalSceneObjects("talus", -2931.0, -2245.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 2, 16)
--myHelper.spawnHorizontalSceneObjects("talus", -2839.0, -2376.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 8, 16)
--myHelper.spawnVerticalSceneObjects("talus", -2958.0, -2288.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 6, 16)
spawnSceneObjectlineToDirection("talus", walliff, -2958.0, -2279.0, "SE", 11, 16)
myHelper.spawnVerticalSceneObjects("talus", -2958.0, -2108.0, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 9, 16)
--spawnSceneObjectlineToDirection("talus", walliff, -2831.0, -2376.0, "W", 2, 16)
--spawnSceneObjectlineToDirection("talus", walliff, -2831.0, -2376.0, "S", 2, 16)
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -2831.0, 13.5, -2431.0, 0, -0.707, 0, 0.707, 0)
spawnSceneObjectAutoZ("talus","object/building/military/military_outpost_guard_tower_1.iff", -2831.0, 13.5, -2407.0, 0, -0.707, 0, -0.707, 0)
-- Solarunit
spawnSceneObject("talus","object/static/installation/mockup_power_generator_solar_style_1.iff", -3040.5, 5.0, -2120.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/structure/military/bunker_pillar_style_02.iff", -3040.5, 5.0, -2115.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/installation/mockup_power_generator_solar_style_1.iff", -3040.5, 5.0, -2110.0, 0, 0, 0, 0, 0)
-- Speederbikes
spawnSceneObject("talus","object/static/vehicle/static_speeder_bike.iff", -2992.0, 5.8 , -2094.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/vehicle/static_speeder_bike.iff", -2988.0, 5.8 , -2094.0, 0, 0, 0, 0, 0)
-- Skiff Transport
spawnSceneObject("talus","object/static/vehicle/static_swoop_bike.iff", -2936.5, 14.8 , -2256.8, 0,  -0.707, 0, 0.707, 0)
spawnSceneObject("talus","object/resource_container/inorganic_minerals.iff", -2935.2, 15.9 , -2256.8, 0, 0, 0, 0, 0)
-- Imperial Banner
spawnSceneObject("talus","object/static/structure/general/banner_imperial_style_01.iff", -2962.0, 7.2 , -2096.3, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/structure/general/banner_imperial_style_01.iff", -3255.2, 4.0 , -2096.3, 0, 0, 0, 0, 0)
-- Ships
spawnSceneObject("talus","object/static/vehicle/static_lambda_shuttle.iff", -3000.0, 7.3, -2140.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/structure/military/military_wall_weak_imperial_style_01.iff", -3014.0, 5.0, -2148.0, 0, 0.707, 0, -0.707, 0)
spawnSceneObject("talus","object/static/vehicle/static_lambda_shuttle.iff", -3035.0, 6.7, -2140.0, 0, 0, 0, 0, 0)
-- Ambient
spawnSceneObject("talus","object/tangible/crafting/station/public_space_station.iff", -2985.0, 7.4, -2130.0, 0,  0.707, 0, 0.707, 0)
spawnSceneObject("talus","object/tangible/crafting/station/public_space_station.iff", -2985.0, 7.4, -2133.0, 0,  0.707, 0, 0.707, 0)
spawnSceneObject("talus","object/static/structure/general/allum_mine_pipes_s01.iff", -2985.0, 8.1 , -2140.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/structure/general/allum_mine_pipes_s02.iff", -2985.6, 8.1 , -2150.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2985.6, 7.3 , -2127.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -3009.9, 5.5 , -2105.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/tangible/camp/camp_pavilion_s1.iff", -2982.0, 7.4 , -2130.0, 0, 0, 0, 0, 0)
spawnSceneObject("talus","object/tangible/crafting/station/public_space_station.iff", -3385.0, 6.4, -2208.8, 0,  0.707, 0, 0.707, 0)

local pTent = spawnSceneObject("talus","object/tangible/camp/camp_pavilion_s1.iff", -2982.0, 7.4 , -2130.0, 0, 0, 0, 0, 0)
--pTent:setClearFloraRadius(90)

spawnSceneObject("talus","object/tangible/camp/camp_pavilion_s1.iff", -3012.0, 5.4 , -2110.0, 0, 0, 0, 0, 0)
--vehicles
spawnSceneObject("talus","object/mobile/vehicle/speederbike_flash.iff", -2967.0, 7.6 , -2108.0, 0, 0, 0, 0, 0)
--test


end

function CrimsonNight_CityScreenPlay:spawnMobile()

 --spawnMobile(planet, mobileTemplate, respawnTimer, x, z, y, heading, cellid)
myHelper.spawnMobileAndIdle("talus", "crimson_at_st", 600, -2930.39, 13.12, -2285.70, 90, 0 )
myHelper.spawnMobileAndIdle("talus", "crimson_at_st", 600, -3231.39, 2.4, -2075.70, 90, 0 )
-- LavaSkiff 
spawnMobile("talus", "crimson_stormtrooper", 600, -2935.7, 14.9, -2259.8, 90, 0)
spawnMobile("talus", "kobola_miner", 600, -2933.2, 5.9, -2260.3, 270, 0)
-- Scouts
spawnMobile("talus", "crimson_scout_trooper", 600, -2991.0, 5.9, -2093.3, 90, 0)
spawnMobile("talus", "crimson_scout_trooper", 600, -2989.6, 5.9, -2093.3, -90, 0)
-- droids
spawnMobile("talus", "imperial_probe_drone", 600, -3254.6, 3.8, -2092.7, 0, 0)
spawnMobile("talus", "imperial_probe_drone", 600, -2994.0, 5.9, -2094.3, 0, 0)
spawnMobile("talus", "crimson_droideka", 600, -2962.0, 5.9, -2094.3, 0, 0)
spawnMobile("talus", "crimson_droideka", 600, -2952.2, 5.9, -2255.3, 90, 0)
spawnMobile("talus", "crimson_droideka", 600, -3235.5, 3.6, -2094.0, 0, 0)
spawnMobile("talus", "cll8_binary_load_lifter", 600, -3010.0, 6.4, -2130.0, 110, 0)
spawnMobile("talus", "crimson_technician", 600, -2982.4, 7.6, -2129.2, 270, 0)
spawnMobile("talus", "crimson_droideka", 600, -2825.4, 10.8, -2411.2, 90, 0)
myHelper.spawnMobileAndIdle("talus", "crimson_droideka", 180, -2977, 5.5, -2072.70, 90, 0 )

myHelper.spawnMobileAndIdle("talus", "crimson_stormtrooper", 600, -3421.39, 3.1, -2370.70, 90, 0 )
myHelper.spawnMobileAndIdle("talus", "crimson_stormtrooper", 600, -3242.39, 5.4, -2678.70, 90, 0 )
myHelper.spawnMobileAndIdle("talus", "crimson_stormtrooper", 600, -2817.39, 9.25, -2430.70, 90, 0 )
spawnMobile("talus", "crimson_stormtrooper", 600, -3424.2, 3.6, -2358.0, 90, 0 )

--Townpersons
-- Questmobs
end

function CrimsonNight_CityScreenPlay:spawnTurrets()
	myHelper.spawnImpTurret("talus","object/installation/faction_perk/turret/block_med.iff", -3270.0, 0.6, -2035, 0, 0, 0, 0, 0, 6)
	myHelper.spawnImpTurret("talus","object/installation/faction_perk/turret/block_med.iff", -3468.0, 0.0, -2361, 0, 0, 0, -1, 0, 6)
	myHelper.spawnImpTurret("talus","object/installation/faction_perk/turret/block_med.iff", -3228.0, 5.4, -2692.0, 0, 0, 0, -1, 0, 6)
	myHelper.spawnImpTurret("talus","object/installation/faction_perk/turret/block_med.iff", -3250.0, 5.4, -2692.0, 0, 0, 0, -1, 0, 6)
	myHelper.spawnImpTurret("talus","object/installation/faction_perk/turret/block_med.iff", -2920.0, 16.3, -2245.0, 0, 0.707, 0, 0.707, 0, 6)
end


