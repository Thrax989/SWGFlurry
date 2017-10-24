core_estates_ringScreenPlay = ScreenPlay:new {numberOfActs = 1, }

registerScreenPlay("core_estates_ringScreenPlay" ,true)

function core_estates_ringScreenPlay :start()
	if (isZoneEnabled("naboo")) then
		self:spawnStructures()
                self:spawnMobiles()

		end
end

function core_estates_ringScreenPlay:spawnStructures()

-- East Inner Wall
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5788.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5778.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5768.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5758.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5748.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5738.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5728.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5718.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5708.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5698.2,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2772.7,-196.8,5688.2,0,math.rad(90))
-- End of East Wall
-- North Inner Wall
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2792.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2802.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2812.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2822.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2832.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2842.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2852.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2862.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2872.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2882.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2892.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2902.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2912.6,-196.9,5807.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.6,-196.9,5807.5,0,math.rad(180))
-- End of North Wall
-- West Inner Wall
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5787.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5777.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5767.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5757.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5747.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5737.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5727.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5717.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5707.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5697.5,0,math.rad(90))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.1,-196.1,5687.5,0,math.rad(90))
-- End of West Wall
-- South Inner Wall
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2792.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2802.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2812.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2822.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2832.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2842.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2852.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2862.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2872.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2882.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2892.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2902.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2912.6,-196.8,5687.5,0,math.rad(180))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2922.6,-196.8,5687.5,0,math.rad(180))
-- End of South Wall
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_sml_s03.iff", -2857.2,-196.9,5652.5,0,math.rad(180))   
-- Corner Pillars
spawnSceneObject("naboo","object/static/space/beacon/hyperspace_route_beacon_01.iff", -2923.1,-196.1,5807.9,0,math.rad(0))
spawnSceneObject("naboo","object/static/space/beacon/hyperspace_route_beacon_01.iff", -2923.2,-197.3,5687.1,0,math.rad(0))
spawnSceneObject("naboo","object/static/space/beacon/hyperspace_route_beacon_01.iff", -2772.1,-197.0,5687.6,0,math.rad(0))
spawnSceneObject("naboo","object/static/space/beacon/hyperspace_route_beacon_01.iff", -2772.8,-197.4,5808.7,0,math.rad(0))
-- End of Corner Pillars
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2885.4,-196.3,5748.0,0,math.rad(51))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2885.4,-196.3,5748.0,0,math.rad(141))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2885.4,-196.3,5748.0,0,math.rad(231))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2885.4,-196.3,5748.0,0,math.rad(321))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2817.4,-196.3,5748.0,0,math.rad(51))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2817.4,-196.3,5748.0,0,math.rad(141))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2817.4,-196.3,5748.0,0,math.rad(231))
spawnSceneObject("naboo","object/static/structure/naboo/nboo_imprv_pristine_wall_large_s01.iff", -2817.4,-196.3,5748.0,0,math.rad(321))
spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2863.1,-196.5,5757.7,0,math.rad(0))
spawnSceneObject("naboo","object/static/structure/general/streetlamp_medium_blue_style_01_on.iff", -2840.2,-197.2,5757.7,0,math.rad(0))
spawnSceneObject("naboo","object/building/endor/endr_lake_rail4m.iff", -2851.9,-195.7,5763.6,0,math.rad(0))   
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2636.2,-183.5,6054.5,0,math.rad(180))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2948.1,-187.5,6052.2,0,math.rad(180))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2979.6,-187.5,6052.1,0,math.rad(180))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2954.1,-187.5,6052.1,0,math.rad(180))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2974.7,-187.5,6052.1,0,math.rad(180))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2963.8,-187.5,6049.7,0,math.rad(180))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2629.8,-189.1,6061.3,0,math.rad(180))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2641.9,-189.1,6061.3,0,math.rad(180))
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2636.2,-183.5,6054.5,0,math.rad(90))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2948.1,-187.5,6052.2,0,math.rad(90))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2979.6,-187.5,6052.1,0,math.rad(90))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2954.1,-187.5,6052.1,0,math.rad(90))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2974.7,-187.5,6052.1,0,math.rad(90))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2963.8,-187.5,6049.7,0,math.rad(90))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2629.8,-189.1,6061.3,0,math.rad(90))  
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_light_lamp_candlestick_free_s01.iff", -2641.9,-189.1,6061.3,0,math.rad(90))
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -2921.6,-209.0,6198.6,0,math.rad(270))   
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -2921.6,-209.0,6203.9,0,math.rad(270))   
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -2921.6,-209.0,6210.6,0,math.rad(270))   
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -2929.6,-209.0,6198.6,0,math.rad(270))   
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -2929.6,-209.0,6203.9,0,math.rad(270))   
spawnSceneObject("naboo","object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -2929.6,-209.0,6210.6,0,math.rad(270)) 
spawnSceneObject("naboo","object/static/structure/general/skeleton_human_headandbody.iff", -2927.9,-210.9,6213.9,0,math.rad(0))  
spawnSceneObject("naboo","object/building/endor/endor_lake_walkway_straight.iff", -2925.5,-219.0,6203.4,0,math.rad(0))   
spawnSceneObject("naboo","object/building/endor/endr_lake_rail16m.iff", -2929.3,-209.0,6203.4,0,math.rad(270))   
spawnSceneObject("naboo","object/building/endor/endr_lake_rail16m.iff", -2921.7,-209.0,6203.4,0,math.rad(90))
spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_chair_cafe_style_01.iff", -2927.9,-209.0,6210.3,0,math.rad(0))
spawnSceneObject("naboo","object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", -2827.8,-209.0,6209.6,0,math.rad(270))   
end

function core_estates_ringScreenPlay:spawnMobiles()

-- Faction Recruiters
spawnMobile("naboo","rebel_recruiter", 1,-2784.2,-197.6,5806.2,180,0)
spawnMobile("naboo","imperial_recruiter", 1,-2912.4,-197.5,5688.7,0,0)
spawnMobile("naboo", "informant_npc_lvl_1", 1, -2635.9,-174.0,6068.6,90,0)
spawnMobile("naboo", "informant_npc_lvl_2", 1, -2634.8,-174.0,6069.7,180,0)
spawnMobile("naboo", "informant_npc_lvl_3", 1, -2634.9,-174.0,6067.7,0,0)

end


