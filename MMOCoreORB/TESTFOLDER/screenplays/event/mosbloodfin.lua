mosbloodfinScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "mosbloodfinScreenPlay"
}

registerScreenPlay("mosbloodfinScreenPlay",  true)

function mosbloodfinScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function mosbloodfinScreenPlay:spawnMobiles()
	--Set the tabe...Structure Placement

	spawnSceneObject("naboo","object/static/structure/naboo/fountain_naboo_style_1.iff", -257.5, 3.1, -63.0, 0, 87, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -1459.6, 8.0, -5693.4, 0, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1459.6, 8.0, -5693.4, 178, 0, 0, 0, 0)	
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1464.6, 8.0, -5693.4, 178, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1454.6, 8.0, -5693.4, 178, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1449.6, 8.0, -5693.4, 178, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1444.6, 8.0, -5693.4, 178, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1446.0, 16.0, -5711.3, 178, 0, 0, 0, 0)	
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_stair_large_s01.iff", -1446.0, 0.0, -5688.6, 0, 179, 0, 0, 0)
	spawnSceneObject("naboo","object/static/structure/corellia/corl_imprv_bridge_lg_s01.iff", -5487.5, 29.0, 4840.8, 0, 0, 0, 0, 0)
	spawnSceneObject("naboo","object/static/structure/corellia/corl_imprv_bridge_lg_s01.iff", -5487.5, 29.0, 4860.8, 0, 0, 0, 0, 0)
	spawnSceneObject("naboo","object/static/structure/corellia/corl_imprv_bridge_lg_s01.iff", -5487.5, 29.0, 4880.8, 0, 0, 0, 0, 0)	
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_stair_large_s01.iff", -1446.0, 16.0, -5705.0, 0, 179, 0, 0, 0)	
--	spawnSceneObject("tatooine","object/static/structure/tatooine/concrete_slab_tatooine_16x8.iff", -1445.7, 24.0, -5721.0, 0, 0, 0, 0, 0)	
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1445.7, 24.0, -5721.0, 0, 0, 0, 0, 0)	
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1450.7, 24.0, -5721.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/corellia/corl_imprv_bridge_lg_s02.iff", -1440.7, 24.0, -5721.0, 0, 0, 0, 0, 0)	
--	spawnSceneObject("dungeon1","object/static/structure/military/military_column_strong_imperial_style_01.iff", 571.3, -.5, -310.2, 0, -98, 0, 0, 0)
--	spawnSceneObject("dungeon1","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1459.6, 0.0, -5693.4, 0, 0, 0, 0, 0)	
--	spawnSceneObject("dungeon1","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1459.6, 5.0, -5693.4, 0, 0, 0, 0, 0)
--	spawnSceneObject("dungeon1","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1444.6, 0.0, -5693.4, 0, 0, 0, 0, 0)
--	spawnSceneObject("dungeon1","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1444.6, 5.0, -5693.4, 0, 0, 0, 0, 0)	
--	spawnSceneObject("dungeon1","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1445.7, 0.0, -5721.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("dungeon1","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1445.7, 5.0, -5721.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1445.7, 10.0, -5721.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1445.7, 15.0, -5721.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/structure/military/military_column_strong_imperial_style_01.iff", -1445.7, 20.0, -5721.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_column_strong_imperial_style_01.iff", 100.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_column_strong_imperial_style_01.iff", 199.0, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_column_strong_imperial_style_01.iff", 199.0, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_column_strong_imperial_style_01.iff", 100.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 105.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 113.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 121.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 129.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 137.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 145.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 135.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 140.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 155.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 160.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 162.2, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 170.2, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 178.2, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 186.2, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 194.2, 25.0, 199.0, 0, 0, 0, 0, 0)

--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 105.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 113.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 121.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 129.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 137.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 145.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 153.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 158.7, 25.0, 100.7, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 155.7, 25.0, 199.0, 0, 0, 0, 0, 0)
--	spawnSceneObject("umbra","object/static/structure/military/military_wall_strong_imperial_style_01.iff", 160.7, 25.0, 199.0, 0, 0, 0, 0, 0)
	
	spawnSceneObject("tatooine","object/tangible/event_perk/xwing.iff", -4406.6, 33.3, -2023.7, 0, -103, 0, 0, 0)	
--	spawnSceneObject("tatooine","object/static/particle/pt_magic_sparks.iff", -1965.9, 3.0, -4727.8, 0, 17, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/vehicle/static_lambda_shuttle.iff", -2009.9, 9.5, -4698.0, 0, 54, 0, 0, 0)
--	spawnSceneObject("corellia","object/static/structure/general/atat_destroyed.iff", -1957.2, 4.3, -4511.6, 0, 33, 0, 0, 0)
--	spawnSceneObject("corellia","object/static/structure/general/atat_destroyed.iff", -2244.9, 11, -4569.9, 0, -98, 0, 0, 0)
--	spawnSceneObject("corellia","object/static/structure/general/atat_destroyed.iff", -2219.0, 12.0, -4527.0, 0, -141, 0, 0, 0)
--	spawnSceneObject("corellia","object/static/structure/general/atst_destroyed.iff", -1980.3, 6.5, -4588.2, 0, -114, 0, 0, 0)
--	spawnSceneObject("corellia","object/static/structure/general/atst_destroyed.iff", -1823.9, 3.5, -4480.5, 0, -16, 0, 0, 0)
--	spawnSceneObject("corellia","object/static/structure/general/transport_debris_02.iff", -2371.9, -1.0, -4349.5, 0, 0, 0, 0, 0)
--	spawnSceneObject("corellia","object/building/military/military_outpost_guard_tower_1.iff", -2211.9, 5.7, -4706.3, -150, -150, 0, 0, 0)
--	spawnSceneObject("corellia","object/building/military/military_outpost_guard_tower_1.iff", -2100.7, 5.7, -4746.3, -177, -177, 0, 0, 0)
--	spawnSceneObject("corellia","object/building/military/military_outpost_guard_tower_1.iff", -1917.4, 5.7, -4308.3, 43, 43, 0, 0, 0)
--	spawnSceneObject("naboo","object/ship/imperial_gunboat.iff", -5992.0, 25.7, 3141.8, 0, 0, 0, 0, 0)
	
	
end

