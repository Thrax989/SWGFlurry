shadowfortressScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "shadowfortressScreenPlay"
}

registerScreenPlay("shadowfortressScreenPlay", true)

function shadowfortressScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end
function shadowfortressScreenPlay:spawnMobiles()
	--Kens City Upgrades
	
	spawnSceneObject("lok", "object/building/tatooine/filler_building_tatt_style01_09.iff", 4815.0, 12.0, -3915.2, 0, 38, 0, 0, 0)
	spawnSceneObject("lok", "object/building/tatooine/filler_building_tatt_style01_09.iff", 5018.2, 11.9, -3916.4, 0, -39, 0, 0, 0)
	spawnSceneObject("lok", "object/building/tatooine/filler_building_tatt_style01_11.iff", 4914.4, 12.8, -3691.9, 0, 178, 0, 0, 0)
	spawnSceneObject("lok", "object/building/tatooine/filler_building_tatt_style01_09.iff", 4960.2, 17.9, -3536.1, 0, 175, 0, 0, 0)
	spawnSceneObject("lok", "object/building/tatooine/filler_building_tatt_style01_01.iff", 4800.9, 12.1, -3817.0, 0, 85, 0, 0, 0)

end
