require('utils.player_switch_zone')
ig88_objects = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("ig88_objects", true)

spHelper = require("screenplayHelper")

local ObjectManager = require("managers.object.object_manager")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function ig88_objects:start()
	if (not isZoneEnabled("lok")) then
		return 0
	end
	
--	self:spawnSceneObjects()
	self:spawnMobiles()
end

function ig88_objects:spawnMobiles()

	local pCollector1 = spawnMobile("lok", "eg6_port", 60, -7633.4, 93.0, 3496.0, 0, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Enter the IG-88 Droid Factory")
	createObserver(OBJECTRADIALUSED, "ig88_objects", "teleportIG", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end

	local pCollector2 = spawnMobile("lok", "eg6_port", 60, 6.5, 0, 40.0, 0, 281475698965698)
	local collector2 = LuaCreatureObject(pCollector2)
	collector2:setOptionsBitmask(264)
	collector2:setCustomObjectName("\\#FF0000Exit the Droid Factory")
	createObserver(OBJECTRADIALUSED, "ig88_objects", "teleportDFE", pCollector2)
	if (pCollecter2~= nil) then 
		return
	end

	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7634.0,85.5,3489.0,0,0)
	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7618.0,85.5,3489.0,0,0)
	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7602.0,85.5,3489.0,0,0)
	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7602.0,85.5,3454.0,0,0)
	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7634.0,85.5,3497.0,0,0)
	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7634.0,85.5,3481.0,0,0)
	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7634.0,85.5,3474.0,0,0)
	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7634.0,85.5,3466.0,0,0)
	spawnSceneObject("lok","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -7634.0,85.5,3505.0,0,0)
	spawnSceneObject("lok","object/static/structure/general/lucky_despot_debris_aft_hull.iff", -7608.0,88.0,3525.0,1,0)
	spawnSceneObject("lok","object/static/structure/general/droid_droideka_powerdown.iff", -7637.0,93.6,3479.0,1,0)
	spawnSceneObject("lok","object/static/structure/general/droid_droideka_powerdown.iff", -7635.0,93.6,3488.0,2,0)
	spawnSceneObject("lok","object/static/structure/general/droid_droideka_powerdown.iff", -7638.0,93.6,3482.0,4,0)
	spawnSceneObject("lok","object/static/structure/general/droid_droideka_powerdown.iff", -7639.0,93.6,3470.0,1,0)
	spawnSceneObject("lok","object/static/structure/general/droid_droideka_powerdown.iff", -7635.0,93.6,3472.0,2,0)
	spawnSceneObject("lok","object/static/structure/general/droid_droideka_powerdown.iff", -7637.0,93.6,3475.0,1,0)
	spawnSceneObject("lok","object/static/structure/general/data_terminal_wall_s1.iff", -7630.0,93.0,3485.0,4,0)
	spawnSceneObject("lok","object/building/tatooine/filler_building_tatt_style01_04.iff", -7614.0,90.0,3473.0,1,0)
	spawnSceneObject("lok","object/building/tatooine/filler_building_tatt_style01_04.iff", -7614.0,90.0,3555.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_archway_tatooine_large_style_01.iff", -7631.0,93.0,3499.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,96.0,3499.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,95.0,3499.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,94.0,3499.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,93.0,3499.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,96.0,3500.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,95.0,3500.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,94.0,3500.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,93.0,3500.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,96.0,3498.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,95.0,3498.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,94.0,3498.0,1,0)
	spawnSceneObject("lok","object/static/particle/pt_poi_electricity_2x2.iff", -7630.0,93.0,3498.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,93.0,3488.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,93.0,3510.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,96.0,3515.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,99.0,3520.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,102.0,3525.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,105.0,3530.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,105.0,3540.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,102.0,3550.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,99.0,3555.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,96.0,3560.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,96.0,3565.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,96.0,3575.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,96.0,3585.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,96.0,3595.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", -7631.0,96.0,3605.0,1,0)
	spawnSceneObject("lok","object/static/structure/tatooine/tent_house_tatooine_style_01.iff", -7659.0,110.0,3591.0,1,0)

	spawnMobile("lok", "imp_transitpilot", 180, 7658.0, 110.0, 3585.0, math.random(360), 0)
	spawnMobile("lok", "reb_transitpilot", 180, 7660.0, 110.0, 3585.0, math.random(360), 0)





	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)
	spawnMobile("lok", "ig_tao_ni", 180, math.random(25) + -7679.0, 92.0, math.random(25) + 3476.0, math.random(360), 0)


end

function ig88_objects:teleportIG(pCollector, pPlayer)
		playerSwitchZoneOutOfCombatRange(pPlayer, pCollector, 10 , "lok", 0, 0, 50, 281475698965698)
	return 0
end

function ig88_objects:teleportDFE(pCollector2, pPlayer)
	playerSwitchZoneOutOfCombatRange(pPlayer, pCollector2, 10 ,"lok", -7636.0, 94.0, 3504.0, 0)
	return 0
end

