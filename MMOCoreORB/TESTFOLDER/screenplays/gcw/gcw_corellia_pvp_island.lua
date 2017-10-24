gcw_corellia_pvp_island = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "gcw_corellia_pvp_island",
   states = {}, 
}

myHelper = require("screenplayHelper")
registerScreenPlay("gcw_corellia_pvp_island", true)
walliff = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff"
function gcw_corellia_pvp_island:start()
	if (isZoneEnabled("corellia")) then
		self:spawnStructures()
		self:spawnMobile()
	end
end

function gcw_corellia_pvp_island:spawnStructures()
	spawnSceneObjectlineToDirection("corellia", walliff, -1360.4, -5431.2, "W", 1, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1376.4, -5431.2, "NW", 2, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1399.0, -5408.0, "W", 14, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1623.0, -5408.0, "SW", 11, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1747.0, -5532.0, "S", 8, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1747.0, -5659.0, "SE", 13, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1600.0, -5805.0, "E", 12, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1408.0, -5805.0, "NE", 10, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1296.0, -5691.0, "N", 12, 16)
	spawnSceneObjectlineToDirection("corellia", walliff, -1296.0, -5499.0, "NW", 6, 16)
end

function gcw_corellia_pvp_island:spawnMobile()
	myHelper.spawnMobileAndIdle("corellia", "at_st", 600, -1350.39, 23.12, -5580.0, 90, 0 )
	myHelper.spawnMobileAndIdle("corellia", "at_st", 600, -1387.39, 23.12, -5502.0, 90, 0 )
	myHelper.spawnMobileAndIdle("corellia", "at_st", 600, -1670.39, 23.12, -5531.0, 90, 0 )
	myHelper.spawnMobileAndIdle("corellia", "at_st", 600, -1457.39, 23.12, -5750.0, 90, 0 )
	myHelper.spawnMobileAndIdle("corellia", "at_st", 600, -1652.39, 23.12, -5691.0, 90, 0 )
end

