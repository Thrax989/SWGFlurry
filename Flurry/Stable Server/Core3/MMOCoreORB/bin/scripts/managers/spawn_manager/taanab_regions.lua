-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {CIRCLE, radius}
--   - Rectangle: {RECTANGLE, x2, y2}
--   - Ring: {RING, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

taanab_regions = {
	{"pandath",2000,5400,{CIRCLE,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"starhunterstation",3763,-5425,{CIRCLE,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"world_spawner",0,0,{CIRCLE,-1},SPAWNAREA + WORLDSPAWNAREA,{"taanab_world"},2048},
	{"taanabhexfarms",-3000,-105,{CIRCLE,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"taanabgreatherd",5537,-4958,{CIRCLE,300},NOWORLDSPAWNAREA + NOBUILDZONEAREA + SPAWNAREA,{"taanab_nerfherd"},1024},
	{"downedship",3293,-1324,{CIRCLE,150},NOBUILDZONEAREA},
	{"taanabcanyonlands",-2590,3705,{CIRCLE,50},NOBUILDZONEAREA},
	{"taanabmine",-2609,-1305,{CIRCLE,200},NOSPAWNAREA + NOBUILDZONEAREA},
	{"taanabcave",-850,7200,{CIRCLE,150},NOSPAWNAREA + NOBUILDZONEAREA},
}
