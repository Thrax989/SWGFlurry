crimson_night_prototype_control_center = ScreenPlay:new {numberOfActs = 1, }

registerScreenPlay("crimson_night_prototype_control_center" ,true)
myHelper = require("screenplayHelper")

function crimson_night_prototype_control_center :start()
	if (isZoneEnabled("talus")) then
		self:spawnStructures()
		self:spawnMobile()
		end
end

function crimson_night_prototype_control_center:spawnStructures()
-- Structures
-- spawnSceneObject(<planet>, <objecttemplatefile>, x, z, y, <cell>, dw, dx, dy, dz> setting dw , dx , dy and dz http://www.onlineconversion.com/quaternions.htm 
-- Node Core
--spawnSceneObject("talus","object/installation/battlefield/destructible/bfield_wall_impl_weak.iff", -3200.0, 12, -1900.0, 0, 0.707, 0, 0.707, 0)
crimson_night_prototype_control_center:spawnImpTurret("talus","object/installation/faction_perk/turret/block_sm.iff", -3166.0, 10.0, -2520, 0, 0, 0, 0, 0)
crimson_night_prototype_control_center:spawnImpTurret("talus","object/installation/faction_perk/turret/block_sm.iff", -3116.0, 10.0, -2520, 0, 0, 0, 0, 0)
crimson_night_prototype_control_center:spawnImpTurret("talus","object/installation/faction_perk/turret/block_sm.iff", -3166.0, 10.0, -2570, 0, 0, 0, -1, 0)
crimson_night_prototype_control_center:spawnImpTurret("talus","object/installation/faction_perk/turret/block_sm.iff", -3116.0, 10.0, -2570, 0, 0, 0, -1, 0)
crimson_night_prototype_control_center:spawnImpTurret("talus","object/installation/faction_perk/turret/block_sm.iff", -3132.0, 10.0, -2570, 0, 0, 0, -1, 0)

local turret5 = spawnSceneObjectAutoZ("talus","object/installation/faction_perk/turret/block_med.iff", -3144.0, 9.0, -2529, 0, 0, 0, -1, 0)
local turretObj5 = LuaTangibleObject(turret5)
turretObj5:setFaction(3679112276)
turretObj5:setPvpStatusBitmask(6)

myHelper.spawnHorizontalSceneObjects("talus", -3125.0, -2520.0, "object/static/structure/military/military_wall_weak_imperial_16_style_01.iff", 3, 16)
myHelper.spawnVerticalSceneObjects("talus", -3166.0, -2529.0, "object/static/structure/military/military_wall_weak_imperial_16_style_01.iff", 3, 16)
myHelper.spawnVerticalSceneObjects("talus", -3116.0, -2529.0, "object/static/structure/military/military_wall_weak_imperial_16_style_01.iff", 3, 16)
myHelper.spawnHorizontalSceneObjects("talus", -3141.0, -2570.0, "object/static/structure/military/military_wall_weak_imperial_16_style_01.iff", 2, 16)

spawnSceneObjectAutoZ("talus","object/static/structure/military/bunker_crate_style_01.iff", -3166.0, 8.0, -2520.0, 0, 0.707, 0, 0.707, 0)
spawnSceneObjectAutoZ("talus","object/static/structure/military/bunker_crate_style_01.iff", -3116.0, 8.0, -2520.0, 0, 0.707, 0, 0.707, 0)
spawnSceneObjectAutoZ("talus","object/static/structure/military/bunker_crate_style_01.iff", -3166.0, 8.0, -2570.0, 0, 0.707, 0, 0.707, 0)
spawnSceneObjectAutoZ("talus","object/static/structure/military/bunker_crate_style_01.iff", -3116.0, 8.0, -2570.0, 0, 0.707, 0, 0.707, 0)
spawnSceneObjectAutoZ("talus","object/static/structure/military/bunker_crate_style_01.iff", -3132.0, 8.0, -2570.0, 0, 0.707, 0, 0.707, 0)
--spawnSceneObjectAutoZ("talus","object/building/player/commando_house.iff", -3116.0, 8.0, -2570.0, 0, 0, 0, -1, 0)

spawnSceneObjectAutoZ("talus","object/installation/battlefield/destructible/imperial_gate_house.iff", -3142.0, 7.4, -2523.0, 0, 0, 0, 0, 0) --1 +
spawnSceneObject("talus","object/installation/battlefield/destructible/antenna_tatt_style_1.iff", -3170.0, 8.0, -2545.0, 0, 0.707, 0, 0.707, 0)
end

function crimson_night_prototype_control_center:spawnMobile()
	spawnMobile("talus", "crimson_droideka", 600, -3144.0, 6.4, -2538.0, 0, 0)
	spawnMobile("talus", "crimson_droideka", 600, -3134.0, 6.4, -2538.0, 0, 0)
	myHelper.spawnMobileAndIdle("talus", "crimson_at_st", 180, -3142.39, 6.5, -2590.70, 180, 0 )
end
function crimson_night_prototype_control_center:spawnImpTurret(planet,iff,x,z,y,cell,dw,dx,dy,dz)
	local turret = spawnSceneObject(planet,iff, x, z, y, cell, dw, dx, dy, dz)
	local turretObj = LuaTangibleObject(turret)
	turretObj:setFaction(3679112276)
	turretObj:setPvpStatusBitmask(6)
end



