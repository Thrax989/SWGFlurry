YounglingsBloodfinScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "YounglingsBloodfinScreenPlay"
}

registerScreenPlay("YounglingsBloodfinScreenPlay",  true)

function YounglingsBloodfinScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
	end
end

function YounglingsBloodfinScreenPlay:spawnMobiles()
--	spawnMobile("corellia", "eker", 24, -1426.2, 0, -5656.7, -143, 0)
--	spawnMobile("corellia", "akal_colzet", 24, -1424.2, 0, -5657.7, -143, 0)
--	spawnMobile("corellia", "dravis", 24, -1422.2, 0, -5659.7, -112, 0)
	spawnMobile("corellia", "rebel_recruiter",60,-187.0, 28.0,-4735.0, 90, 0)
	spawnMobile("corellia", "imperial_recruiter",60,-187.0, 28.0,-4732.0, 90, 0)
	spawnMobile("corellia", "trainer_defender",60,-187.0, 28.0,-4729.0, 90, 0)
	spawnMobile("corellia", "trainer_lightsaber",60,-187.0, 28.0,-4726.0, 90, 0)
	spawnMobile("corellia", "trainer_enhancer",60,-187.0, 28.0,-4723.0, 90, 0)
	spawnMobile("corellia", "trainer_powers",60,-187.0, 28.0,-4720.0, 90, 0)
	spawnMobile("corellia", "trainer_healer",60,-187.0, 28.0,-4717.0, 90, 0)
--	spawnMobile("corellia", "informant_npc_lvl_3",60, -1435.8, 0.0, -5657.2, -178, 0)
end
