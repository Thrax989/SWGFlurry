citadel_republicScreenPlay = ScreenPlay:new {
        numberOfActs = 1,
 }
registerScreenPlay("citadel_republicScreenPlay" ,true)

spHelper = require("screenplayHelper")

local ObjectManager = require("managers.object.object_manager")

function citadel_republicScreenPlay :start()
	if (isZoneEnabled("naboo")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
		self:spawnParticles()
	end
end
function citadel_republicScreenPlay:spawnSceneObjects()
-- Mission Terminal Wall
	spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_sml_s03.iff", -2798.8,-190.1,6032.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_sml_s03.iff", -2641.8,-193.6,6032.9,0,math.rad(180))
	spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_sml_s03.iff", -2728.3,-190.8,6071.0,0,math.rad(180))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2717.7,-190.2,6071.1,0,math.rad(270))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2728.9,-190.9,6070.9,0,math.rad(90))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2717.7,-190.2,6071.1,0,math.rad(270))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2728.9,-190.9,6070.9,0,math.rad(90))
	-- Fountain Lights and Gazebo
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2908.1,-187.9,6024.0,0,math.rad(270))
	spawnSceneObject("naboo","object/static/structure/naboo/garden_gazebo_lg_s01.iff", -2908.1,-187.9,6024.0,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/naboo/fountain_naboo_style_1.iff", -2908.1,-187.9,6024.0,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_red_style_01_on.iff", -2851.7,-190.5,6024.0,0,math.rad(270))
	spawnSceneObject("naboo","object/static/structure/naboo/garden_gazebo_lg_s01.iff", -2851.7,-190.5,6024.0,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/naboo/fountain_naboo_style_1.iff", -2851.7,-190.5,6024.0,0,math.rad(0))
	-- Trainer Tent
	--Right Corner of Town
	spawnSceneObject("naboo","object/building/naboo/filler_building_naboo_style_9.iff", -2726.5,-189.7,6092.9,0,math.rad(180))
	spawnSceneObject("naboo","object/static/structure/naboo/fountain_naboo_style_1.iff", -2726.5,-190.5,6092.9,0,math.rad(0))
	-- City Street Lights
	-- Shuttle Lights
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2796.2,-190.3,6051.3,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2811.6,-189.9,6051.1,0,math.rad(0))
	-- Staff Pa Hall
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2856.4,-188.4,6053.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2847.4,-188.4,6053.9,0,math.rad(0))
	-- FOAD PA Hall
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2760.4,-188.8,6053.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2751.5,-188.8,6053.9,0,math.rad(0))
	-- City Hall
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2915.7,-188.1,6041.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2900.1,-188.1,6041.9,0,math.rad(0))
	-- Cantina
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2981.3,-188.4,6051.6,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2946.3,-188.4,6051.6,0,math.rad(0))
	-- Politician Trainer
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2900.9,-185.9,6048.9,0,math.rad(0))
	-- Ranger Tent
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_green_style_01_on.iff", -2726.5,-190.5,6092.9,0,math.rad(180))
	-- Missions and Misc Decorations Wall
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2798.2,-190.1,6032.9,0,math.rad(270))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2809.3,-190.1,6032.9,0,math.rad(90))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2798.2,-190.1,6032.9,0,math.rad(270))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2809.3,-190.1,6032.9,0,math.rad(90))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2796.2,-190.3,6051.3,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2811.6,-189.9,6051.1,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2900.9,-185.9,6048.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2946.3,-188.4,6051.6,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2981.3,-188.4,6051.6,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2915.7,-188.1,6041.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2900.1,-188.1,6041.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2751.5,-188.8,6053.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2760.4,-188.8,6053.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2847.4,-188.4,6053.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2856.4,-188.4,6053.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2811.6,-189.9,6051.1,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2796.2,-190.3,6051.3,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_leaves_ivy.iff", -2963.9,-191.75,6047.9,0,math.rad(90))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2904.8,-188.3,6020.8,0,math.rad(309))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2909.3,-188.2,6019.6,0,math.rad(17))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2912.5,-188.0,6022.8,0,math.rad(71))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2911.3,-187.9,6027.2,0,math.rad(134))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2906.8,-187.9,6028.4,0,math.rad(197))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2903.7,-188.1,6025.2,0,math.rad(247))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2903.7,-188.2,6022.8,0,math.rad(276))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2906.8,-188.2,6019.6,0,math.rad(336))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2911.4,-188.1,6020.8,0,math.rad(41))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2912.5,-188.0,6025.2,0,math.rad(89))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2909.3,-187.9,6028.4,0,math.rad(159))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2904.9,-188.0,6027.3,0,math.rad(223))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2850.5,-190.8,6028.4,0,math.rad(309))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2847.3,-191.0,6025.3,0,math.rad(17))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2848.4,-191.3,6020.8,0,math.rad(71))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2852.9,-191.4,6019.6,0,math.rad(134))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2856.1,-191.1,6022.8,0,math.rad(197))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2854.9,-190.8,6027.3,0,math.rad(247))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2856.1,-190.9,6025.1,0,math.rad(276))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2853.0,-190.7,6028.4,0,math.rad(336))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2848.5,-190.8,6027.3,0,math.rad(41))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2847.3,-191.1,6022.8,0,math.rad(89))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2850.4,-191.1,6019.6,0,math.rad(159))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_orange.iff", -2854.9,-191.3,6020.7,0,math.rad(223))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -3060.4,-191.0,6057.3,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -3041.7,-191.0,6057.3,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -3092.0,-190.3,6051.5,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -3000.0,-193.9,6049.5,0,math.rad(0))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -3024.0,-193.9,6049.5,0,math.rad(0))
	-- Avenue of Lights
	-- Right Side of Hanger
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2899.6,-191.9,5847.7,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2923.6,-192.8,5847.7,0,math.rad(0))
	-- Left Side of Hanger
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2819.6,-195.3,5847.7,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2795.6,-196.5,5847.7,0,math.rad(0))
	-- Front of Hanger
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2841.7,-194.3,5846.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2862.2,-192.9,5846.9,0,math.rad(180))
	-- City Crafting Stations
	spawnSceneObject("naboo","object/tangible/crafting/station/public_weapon_station.iff", -2952.4,-193.3,6087.6,0,math.rad(0))
	spawnSceneObject("naboo","object/tangible/crafting/station/public_space_station.iff", -2957.0,-194.3,6087.6,0,math.rad(0))
	spawnSceneObject("naboo","object/tangible/crafting/station/public_structure_station.iff", -2962.5,-194.1,6087.6,0,math.rad(0))
	spawnSceneObject("naboo","object/tangible/crafting/station/public_clothing_station.iff", -2967.3,-194.1,6087.6,0,math.rad(90))
	spawnSceneObject("naboo","object/tangible/crafting/station/public_food_station.iff", -2972.0,-194.1,6087.6,0,math.rad(0))
	spawnSceneObject("naboo","object/static/vehicle/static_swoop_bike.iff", -2958.0,-191.2,6046.2,0,math.rad(320))
	spawnSceneObject("naboo","object/static/vehicle/static_swoop_bike.iff", -2959.1,-191.3,6045.7,0,math.rad(322))
	spawnSceneObject("naboo","object/static/vehicle/e3/landspeeder.iff", -2972.3,-192.6,6045.2,0,math.rad(180))
	spawnSceneObject("naboo","object/static/item/item_scrolling_screen.iff", -2963.9,-189.5,6048.5,0,math.rad(90))
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2972.3,-192.6,6045.2,0,math.rad(180))
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2896.1,-188.2,6044.5,0,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2920.6,-188.4,6044.5,0,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2861.3,-188.4,6053.9,0,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2842.9,-188.4,6053.9,0,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2765.0,-188.8,6053.9,0,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2747.0,-188.8,6053.9,0,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2833.7,-189.4,6071.5,-137,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2774.2,-191.3,6071.0,0,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2737.6,-191.5,6070.3,-146,0)
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2700.8,-187.6,6053.9,0,0)-- PA Hall Left Side --
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2682.5,-187.6,6053.9,0,0)-- PA Hall Right Side --
	spawnSceneObject("naboo","object/static/structure/naboo/poi_nboo_tent_small.iff", -2635.9,-193.9,6046.7,0,0)-- Mall Front of Porch --
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2696.4,-187.6,6053.9,180,0)
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2687.4,-187.6,6053.9,180,0)
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2696.4,-187.6,6053.9,180,0)
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2696.4,-187.6,6053.9,180,0)
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2687.4,-187.6,6053.9,180,0)
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2696.4,-187.6,6053.9,180,0)
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2771.6,-195.9,5847.7,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2747.6,-195.9,5847.7,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2947.6,-194.4,5847.7,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2971.6,-193.9,5847.7,0,math.rad(0))
	-- Med Center
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -3060.4,-191.0,6057.3,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -3041.7,-191.0,6057.3,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -3092.0,-190.3,6051.5,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -3000.0,-193.9,6049.5,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -3024.0,-193.9,6049.5,0,math.rad(0))
	-- Lake Roses
	spawnSceneObject("naboo","object/static/structure/naboo/garden_gazebo_lg_s01.iff", 5251.7,15.0,1470.4,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/naboo/fountain_naboo_style_1.iff", 5251.7,15.0,1470.4,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_red_style_01_on.iff", 5250.5,18.8,1437.2,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_red_style_01_on.iff", 5253.7,18.8,1437.2,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_red_style_01_on.iff", 5251.7,15.0,1470.4,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/decorative/park_bench.iff", 5252.1,18.8,1436.9,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2643.2,-190.0,6056.4,0,math.rad(180))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2643.2,-190.0,6056.4,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_toolchest_lg_s01.iff", -2969.5,-192.3,6047.2,0,math.rad(180))---- Outside Cantina Decorations ----
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2636.2,-184.4,6054.5,0,math.rad(180))-- Mall Catwalk --
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2635.0,-184.4,6055.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2637.5,-184.4,6055.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2636.2,-184.4,6054.5,0,math.rad(180))-- Mall Catwalk --
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2948.1,-188.4,6052.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2979.6,-188.4,6052.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2954.1,-188.4,6052.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2974.7,-188.4,6052.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2963.8,-188.4,6049.7,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2947.3,-188.4,6053.5,0,math.rad(216))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2949.6,-188.4,6053.6,0,math.rad(108))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2952.1,-188.4,6053.2,0,math.rad(229))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2955.3,-188.4,6053.2,0,math.rad(130))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2978.5,-188.4,6053.5,0,math.rad(222))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2980.7,-188.4,6053.3,0,math.rad(129))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2976.1,-188.4,6053.0,0,math.rad(130))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2973.4,-188.4,6053.1,0,math.rad(240))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2965.6,-188.4,6049.8,0,math.rad(90))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2962.1,-188.4,6049.7,0,math.rad(277))
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2948.1,-188.4,6052.2,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2979.6,-188.4,6052.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2954.1,-188.4,6052.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2974.7,-188.4,6052.1,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2963.8,-188.4,6049.7,0,math.rad(180))---- Outside Cantina Decorations ----
	spawnSceneObject("naboo","object/tangible/furniture/decorative/park_bench.iff", -2803.0,-190.1,6048.4,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/decorative/park_bench.iff", -2629.3,-174.0,6079.6,0,math.rad(0))
	spawnSceneObject("naboo","object/tangible/furniture/modern/rug_rnd_sml_s01.iff", -2629.8,-190.0,6061.3,0,math.rad(90))---- Outside Food Court Decorations Right Side ----
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2629.8,-190.0,6061.3,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2629.8,-190.0,6061.3,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2628.8,-190.0,6062.5,0,math.rad(218))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2630.8,-190.0,6060.2,0,math.rad(42))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2628.8,-190.0,6060.3,0,math.rad(321))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2630.8,-190.0,6062.2,0,math.rad(135))
	spawnSceneObject("naboo","object/tangible/component/food/container_barrel.iff", -2633.4,-190.0,6063.1,0,math.rad(0))
	spawnSceneObject("naboo","object/tangible/furniture/modern/rug_rnd_sml_s01.iff", -2641.9,-190.0,6061.3,0,math.rad(180))---- Outside Food Court Decorations Left Side----
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2641.9,-190.0,6061.3,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2641.9,-190.0,6061.3,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2643.0,-190.0,6062.7,0,math.rad(147))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2641.0,-190.0,6060.7,0,math.rad(326))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2641.0,-190.0,6062.0,0,math.rad(237))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2643.1,-190.0,6060.4,0,math.rad(54))
	spawnSceneObject("naboo","object/tangible/component/food/container_barrel.iff", -2638.4,-190.0,6063.1,0,math.rad(0))-- End of Left Side --
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2643.4,-190.0,6052.4,0,math.rad(0))-- Street Light Left side of Sign 
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2643.4,-190.0,6052.4,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2628.5,-190.0,6052.4,0,math.rad(0))-- Street Light Right side of Sign --
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2628.5,-190.0,6052.4,0,math.rad(0))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2628.7,-190.0,6056.4,0,math.rad(180))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2628.7,-190.0,6056.4,0,math.rad(180))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff",  -2619.7,-190.0,6051.7,0,math.rad(180))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2619.7,-190.0,6051.7,0,math.rad(180))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff",  -2652.0,-190.0,6051.7,0,math.rad(180))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2652.0,-190.0,6051.7,0,math.rad(180))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff",  -2642.4,-193.6,6032.9,0,math.rad(90))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2642.4,-193.6,6032.9,0,math.rad(180))
	spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff",  -2631.2,-194.7,6032.9,0,math.rad(90))
	spawnSceneObject("naboo","object/static/flora/potted_plant_flowers_purple.iff", -2631.2,-194.7,6032.9,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/modern/rug_rect_lg_s02.iff", -2635.8,-190.0,6056.6,0,math.rad(0))
	spawnSceneObject("naboo","object/tangible/furniture/modern/rug_rect_lg_s01.iff", -2634.8,-174.0,6068.7,0,math.rad(270))
	spawnSceneObject("naboo","object/tangible/furniture/modern/table_modern_style_01.iff", -2634.8,-174.0,6068.7,0,math.rad(270))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2634.8,-174.0,6068.7,0,math.rad(270))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2634.8,-174.0,6070.2,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2634.9,-174.0,6067.2,0,math.rad(0))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2636.4,-174.0,6068.6,0,math.rad(90))
	spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2633.8,-174.0,6068.6,0,math.rad(270))
	spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2634.8,-173.1,6068.7,0,math.rad(270))
	spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_tbl_s02_red.iff", -2628.1,-173.1,6063.6,0,math.rad(180))-- Wall Candles --
	spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_tbl_s02_red.iff", -2633.1,-173.1,6063.6,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_tbl_s02_red.iff", -2638.1,-173.1,6063.6,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_tbl_s02_red.iff", -2643.1,-173.1,6063.6,0,math.rad(180))
	spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_tbl_s02_red.iff", -2647.9,-179.8,6085.1,0,math.rad(0))-- Window Candles --
	spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_tbl_s02_red.iff", -2727.8,-189.4,6081.0,0,math.rad(0))
	spawnSceneObject("naboo","object/tangible/painting/painting_starmap.iff", -2792.5,-188.1,6052.7,0,math.rad(180))-- Painting Shuttleport --
	spawnSceneObject("naboo","object/tangible/painting/painting_smoking_ad.iff", -3051.5,-190.0,6059.1,0,math.rad(270))-- Painting Med Center --
	spawnSceneObject("naboo","object/tangible/painting/painting_fighter_pilot_human_01.iff", -2627.5,-186.0,6062.2,0,math.rad(0))-- Painting Right Side of Mall --
	spawnSceneObject("naboo","object/tangible/painting/painting_human_f.iff", -2643.8,-186.0,6062.0,0,math.rad(90))-- Right Side of Mall 
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_01.iff", -2635.7,-185.8,6056.1,0,math.rad(0))-- Painting Left Side of Mall --
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_02.iff", -2643.8,-188.5,6058.1,0,math.rad(90))-- Right Side of Mall --
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_03.iff", -2643.8,-187.0,6058.1,0,math.rad(90))-- Right Side of Mall --
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_04.iff", -2643.8,-185.5,6058.1,0,math.rad(90))-- Right Side of Mall --
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_05.iff", -2643.8,-184.0,6058.1,0,math.rad(90))-- Right Side of Mall --
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_06.iff", -2628.0,-188.5,6058.1,0,math.rad(270))-- Left Side of Mall --
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_07.iff", -2628.0,-187.0,6058.1,0,math.rad(270))-- Left Side of Mall --
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_08.iff", -2628.0,-185.5,6058.1,0,math.rad(270))-- Left Side of Mall --
	spawnSceneObject("naboo","object/tangible/veteran_reward/one_year_anniversary/painting_09.iff", -2628.0,-184.0,6058.1,0,math.rad(270))-- Left Side of Mall --
	spawnSceneObject("naboo","object/tangible/painting/painting_droid_bright.iff", -2907.9,-184.9,6051.4,0,math.rad(180))-- City Hall --
	spawnSceneObject("naboo","object/static/creature/droids_r2_waiter.iff", -2641.8,-190.0,6059.6,0,math.rad(0))-- R2 Waiter --
	spawnSceneObject("naboo","object/static/creature/droids_r2_waiter.iff", -2629.8,-190.0,6059.6,0,math.rad(0))-- R2 Waiter --
	spawnSceneObject("naboo","object/static/creature/droids_r2_waiter.iff", -2636.1,-174.0,6067.5,0,math.rad(45))-- R2 Waiter 

end

function citadel_republicScreenPlay:spawnParticles()

--	spawnSceneObject("naboo","object/static/particle/particle_distant_ships_rebel.iff", -2908.1,-187.9,6024.0,0,0,0,0)

end

function citadel_republicScreenPlay:spawnMobiles()
-- NPC
-- Lake Rose
	spawnMobile("naboo","queen_rose", 1, 5273.9,15.4,1463.4,0,0)
	spawnMobile("naboo","braindead_ewok", 1, 5274.9,15.4,1463.4,0,0)
	spawnMobile("naboo","dev_heat", 1, 5230.0,14.9,1463.4,0,0)
	-- Citadel of the Republic
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2747.1,-188.1,6053.7,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2765.1,-188.8,6053.7,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2843.0,-188.4,6053.7,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2861.3,-188.4,6053.7,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2895.9,-188.2,6044.2,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2920.6,-188.4,6044.2,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2923.0,-192.2,5844.1,90,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2819.0,-194.7,5844.1,90,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2795.0,-195.9,5844.1,90,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2701.7,-187.6,6053.7,180,0)-- Left Side of PA --
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2682.7,-187.6,6053.7,180,0)-- Right Side of PA --
	spawnMobile("naboo","core_estates_guardian", 300, -2636.0,-193.9,6045.7,180,0)-- Front Porch --
	spawnMobile("naboo","core_estates_guardian", 300, -2854.4,-186.4,6057.3,180,0)
	spawnMobile("naboo","core_estates_guardian", 300, -2849.4,-186.4,6057.3,180,0)
	spawnMobile("naboo","core_estates_security", 300, -2849.4,-187.4,6054.5,180,0)
	spawnMobile("naboo","core_estates_security", 300, -2854.4,-187.4,6054.5,180,0)
	spawnMobile("naboo","core_estates_assassin", 300, -2911.9,-185.9,6050.9,180,0)
	spawnMobile("naboo","core_estates_assassin", 300, -2903.9,-185.9,6050.9,180,0)
	-- Three Senators
	spawnMobile("naboo","senate1", 1, -2906.5,-185.9,6050.9,230,0)
	spawnMobile("naboo","gungan_senator", 1, -2908.0,-185.9,6050.9,180,0)
	spawnMobile("naboo","senator_two", 1, -2909.5,-185.9,6050.9,135,0)
	-- Three Senate Guards
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2906.7,-185.9,6048.0,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2909.1,-185.9,6047.9,180,0)
	spawnMobile("naboo","core_estates_guardian", 300, -2908.1,-186.8,6045.9,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2771.0,-195.3,5844.2,90,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2747.0,-194.4,5844.2,90,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2899.0,-191.3,5844.1,90,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2947.0,-193.8,5844.1,90,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2971.0,-193.3,5844.2,90,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2960.3,-187.7,6055.8,180,0)
	spawnMobile("naboo","ctm_rebel_soldier", 300, -2968.3,-187.7,6055.8,180,0)
	-- Medic Trainers
	spawnMobile("naboo","trainer_doctor", 1, -3051.9,-191.0,6058.6,180,0)
	spawnMobile("naboo","trainer_combatmedic",1, -3056.0,-192.0,6058.9,180,0)
	spawnMobile("naboo","trainer_medic", 1, -3053.9,-191.0,6058.6,180,0)
	spawnMobile("naboo","trainer_bioengineer", 1, -3049.8,-191.0,6058.6,180,0)
	-- Faction Recruiters
	spawnMobile("naboo","imperial_recruiter", 1,-2807.8,-190.1,6031.7,180,0)
	spawnMobile("naboo","rebel_recruiter", 1,-2799.9,-190.1,6031.7,180,0)
	-- Outdoors Trainers
	spawnMobile("naboo","trainer_pistol", 1,-2724.6,-188.5,6099.0,180,0)
	spawnMobile("naboo","trainer_creaturehandler", 1,-2728.3,-188.5,6099.0,180,0)
	spawnMobile("naboo","trainer_scout", 1,-2729.6,-188.5,6099.0,153,0)
	spawnMobile("naboo","trainer_ranger", 1,-2720.9,-188.5,6095.9,-138,0)
	spawnMobile("naboo","trainer_marksman", 1,-2723.3,-188.5,6098.4,-145,0)
	spawnMobile("naboo","trainer_commando", 1,-2720.4,-188.5,6094.7,-90,0)
	spawnMobile("naboo","trainer_smuggler", 1,-2732.0,-188.5,6096.0,133,0)
	spawnMobile("naboo","trainer_rifleman", 1,-2732.6,-188.5,6094.7,90,0)
	spawnMobile("naboo","trainer_carbine", 1,-2732.6,-188.5,6091.1,90,0)
	spawnMobile("naboo","trainer_squadleader", 1,-2720.4,-188.5,6091.1,-90,0)
	spawnMobile("naboo","trainer_bountyhunter", 1,-2728.3,-188.5,6086.3,0,0)
	-- Politician Trainer
	spawnMobile("naboo","trainer_politician", 1,-2898.9,-185.9,6048.9,0,math.rad(0))
	-- Artisian Trainers
	spawnMobile("naboo","trainer_shipwright", 1,-2958.5, -194.3, 6090.2, 0,0)
	spawnMobile("naboo","trainer_merchant", 1,-2976.1, -194.3, 6090.2, 0,0)
	spawnMobile("naboo","trainer_weaponsmith", 1,-2953.8, -194.2, 6090.2, 0,0)
	spawnMobile("naboo","trainer_armorsmith", 1,-2967.3, -194.2, 6090.2, 0,0)
	spawnMobile("naboo","trainer_tailor", 1,-2968.5, -194.2, 6090.2, 0,0)
	spawnMobile("naboo","trainer_artisan", 1,-2955.3, -194.7, 6090.2, 0,0)
	spawnMobile("naboo","trainer_architect", 1,-2963.5, -194.2, 6090.2, 0,0)
	spawnMobile("naboo","trainer_chef", 1,-2973.8, -194.4, 6090.2, 0,0)
	-- Brawler Trainers
	spawnMobile("naboo","trainer_brawler", 1,-2721.0,-188.5,6089.8,-50,0)
	spawnMobile("naboo","trainer_unarmed", 1,-2723.4,-188.5,6087.3,-50,0)
	spawnMobile("naboo","trainer_1hsword", 1,-2729.6,-188.5,6087.3,44,0)
	spawnMobile("naboo","trainer_2hsword", 1,-2732.1,-188.5,6089.9,44,0)
	spawnMobile("naboo","trainer_polearm", 1,-2724.8,-188.5,6086.8,0,0)
	-- Entertainer Trainers
	spawnMobile("naboo","trainer_entertainer", 1, -3016.5,-189.4,6063.1,-162,0)
	spawnMobile("naboo","trainer_dancer", 1, -3011.9,-189.4,6062.7,180,0)
	spawnMobile("naboo","trainer_imagedesigner", 1, -3002.3,-190.7,6062.2,-115,0)
	spawnMobile("naboo","trainer_musician", 1, -3006.5,-189.4,6063.1,160,0)
	spawnMobile("naboo","mechanic", 1, -2969.5,-192.3,6046.0,-13,0)     
	spawnMobile("naboo","mouse_mechanic", 1, -2970.6,-192.4,6045.5,-134,0)     
	-- Staff
	spawnMobile("naboo","nuru", 300, -2851.9,-193.4,5851.1,0,0)     
	-- NPC's
	--spawnMobile("naboo", "", 300,-2774.2,-191.3,6071.0,-48,0)--Black Market Vendor
	--spawnMobile("naboo", "", 300,-2832.9,-189.4,6072.3,43,0)--Bloodfin Coin Vendor
  
end
