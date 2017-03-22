-- Planet Region Definitions
-- This file has been generated with the SWGEmu World Spawner Tool.
--
-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {1, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

 require("scripts.managers.spawn_manager.regions")

kaas_regions = {
        {"mysterious_shrine",-6374,6400,{1,30},NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"northern_islands_1",-70,6370,{1,100},NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"eastern_islands_1",2850,3890,{1,200},NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"eastern_islands_2",3342,2634,{1,500},NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"swamp_general_1",6017,-1141,{1,400},NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"a_rebel_outpost",-6131,2705,{1,700},NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"mysterious_shrine_2",-4495,-7535,{1,30},NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"narmle_easy_newbie",-5205,-2290,{1,1400},SPAWNAREA,1,"kaas_world",1256},
	{"narmle_medium_newbie",-5200,-2290,{3,1400,2200},SPAWNAREA,1,"kaas_world",1384},
--      {"narmle_spike",-3389,-2096,{1,30},NOSPAWNAREA + NOBUILDZONEAREA,1},
--	{"northeast_mountains",0,0,{1,0},UNDEFINEDAREA,1},
        {"rebel_outpost",3677,-6447,{1,1500},SPAWNAREA,1,"kaas_world",1384},
--	{"restuss",0,0,{1,0},UNDEFINEDAREA,1},
	{"restuss_easy_newbie",5300,5700,{1,1400},SPAWNAREA,1,"kaas_world",1256},
	{"restuss_medium_newbie",5305,5700,{3,1400,2200},SPAWNAREA,1,"kaas_world",1384},
--      {"rori_gungan_swamp_town",-2073,3315,{1,200},NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"world_spawner",0,0,{1,-1},SPAWNAREA + WORLDSPAWNAREA,1,"kaas_world",2048},
}

kaas_static_spawns = {
	{"imperial_recruiter",60,-5106,80,-2286,0,0, "neutral", "", ""},
	{"rebel_recruiter",60,2835,126,3881,90,0, "neutral", "", ""},
}

kaas_badges = {

}
