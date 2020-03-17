-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {1, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

kashyyyk_regions = {
	
	{"world_spawner",0,0,{1,-1},SPAWNAREA + WORLDSPAWNAREA,{"kashyyyk_world"},2048},
	{"kachirho",0,0,{2,2000,2000},NOSPAWNAREA + NOBUILDZONEAREA},
	{"sea1",-6500,6500,{1,2000},NOSPAWNAREA},
	{"sea2",-6500,4500,{1,2000},NOSPAWNAREA},
	{"sea3",-7000,0,{1,2500},NOSPAWNAREA},
	{"village1",-2000,0,{1,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"hunting",0,-3000,{2,2800,2000},NOSPAWNAREA + NOBUILDZONEAREA},
	{"dead_forest",-1500,1500,{2,1000,1000},NOSPAWNAREA + NOBUILDZONEAREA},
	{"bocctyy",2300,0,{2,600,600},NOSPAWNAREA + NOBUILDZONEAREA},
	{"hracca",-1100,3500,{2,1000,1000},NOSPAWNAREA + NOBUILDZONEAREA},
	{"slaver",-3300,3300,{2,1000,1000},NOSPAWNAREA + NOBUILDZONEAREA},
	{"arena",1775,-1825,{1,200},NOSPAWNAREA + NOBUILDZONEAREA},
	{"desert",7000,7000,{1,2000},NOSPAWNAREA + NOBUILDZONEAREA},
	{"deepwoods",6000,-6000,{1,3000},NOSPAWNAREA + NOBUILDZONEAREA},


}
