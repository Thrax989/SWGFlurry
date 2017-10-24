pvpislandScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "pvpislandScreenPlay"
}

registerScreenPlay("pvpislandScreenPlay",  true)

function pvpislandScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
	end
end

function pvpislandScreenPlay:spawnMobiles()
	--Set the tabe...Structure Placement

	spawnSceneObject("corellia","object/static/vehicle/static_tie_bomber.iff", -2236.0, 14.3, -4460.0, 0, 87, 0, 0, 0)
	spawnSceneObject("corellia","object/static/structure/general/transport_debris_01.iff", -1828.2, 3.4, -4418, 0, -140, 0, 0, 0)
	spawnSceneObject("corellia","object/static/structure/general/transport_debris_02.iff", -1835.6, 2.2, -4370.4, 0, -30, 0, 0, 0)
	spawnSceneObject("corellia","object/static/vehicle/player_shuttle.iff", -1896.4, 5.4, -4461.4, 0, -98, 0, 0, 0)
	spawnSceneObject("corellia","object/static/vehicle/static_lambda_shuttle.iff", -1965.9, 3.0, -4727.8, 0, 17, 0, 0, 0)
	spawnSceneObject("corellia","object/static/vehicle/static_lambda_shuttle.iff", -2009.9, 9.5, -4698.0, 0, 54, 0, 0, 0)
	spawnSceneObject("corellia","object/static/structure/general/atat_destroyed.iff", -1957.2, 4.3, -4511.6, 0, 33, 0, 0, 0)
	spawnSceneObject("corellia","object/static/structure/general/atat_destroyed.iff", -2244.9, 11, -4569.9, 0, -98, 0, 0, 0)
	spawnSceneObject("corellia","object/static/structure/general/atat_destroyed.iff", -2219.0, 12.0, -4527.0, 0, -141, 0, 0, 0)
	spawnSceneObject("corellia","object/static/structure/general/atst_destroyed.iff", -1980.3, 6.5, -4588.2, 0, -114, 0, 0, 0)
	spawnSceneObject("corellia","object/static/structure/general/atst_destroyed.iff", -1823.9, 3.5, -4480.5, 0, -16, 0, 0, 0)
	spawnSceneObject("corellia","object/static/structure/general/transport_debris_02.iff", -2371.9, -1.0, -4349.5, 0, 0, 0, 0, 0)
	spawnSceneObject("corellia","object/building/military/military_outpost_guard_tower_1.iff", -2211.9, 5.7, -4706.3, -150, -150, 0, 0, 0)
	spawnSceneObject("corellia","object/building/military/military_outpost_guard_tower_1.iff", -2100.7, 5.7, -4746.3, -177, -177, 0, 0, 0)
	spawnSceneObject("corellia","object/building/military/military_outpost_guard_tower_1.iff", -1917.4, 5.7, -4308.3, 43, 43, 0, 0, 0)
	spawnSceneObject("corellia","object/building/military/military_outpost_guard_tower_1.iff", -2344.4, 5.7, -4356.3, -61, -61, 0, 0, 0)
	spawnSceneObject("dantooine","object/tangible/event_perk/xwing.iff", 931.8, 2.0, 3146.7, 0, -89, 0, 0, 0)
	spawnSceneObject("dantooine","object/tangible/event_perk/xwing.iff", -7161.1, 0.0, -6061.1, 0, -89, 0, 0, 0)	
	
	
end

