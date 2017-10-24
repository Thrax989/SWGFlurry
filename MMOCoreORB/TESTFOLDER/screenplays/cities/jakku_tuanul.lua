JakkuTuanulScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TuanulScreenPlay"
}

registerScreenPlay("JakkuTuanulScreenPlay", true)

function JakkuTuanulScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:setMoodString()
		pNpc = spawnMobile()
	end
end

function JakkuTuanulScreenPlay:spawnSceneObjects()

	spawnSceneObject("jakku", "object/static/particle/pt_halloween_ghost_fog.iff", 5883.1, 9.2, -7491.8, -90, 0)
	spawnSceneObject("jakku", "object/tangible/lair/base/poi_all_lair_bones_fog_red.iff", 5887.6, 8.0, -7500.1, -102, 0)
	spawnSceneObject("jakku", "object/tangible/lair/base/poi_all_lair_bones_fog_red.iff", 5887.4, 8.0, -7483.5, 175, 0)
	spawnSceneObject("jakku", "object/tangible/lair/base/poi_all_lair_bones_fog_red.iff", 5885.1, 8.0, -7491.9, -90, 0)


end

function JakkuTuanulScreenPlay:spawnMobiles()

	spawnMobile("jakku", "trainer_lightsaber", 0, 5890.4, 8.0, -7492.1, 86, 0)
	spawnMobile("jakku", "trainer_powers", 0, 5888.3, 8.0, -7477.6, 112, 0)
	spawnMobile("jakku", "trainer_enhancer", 0, 5880.3, 8.0, -7482.4, 101, 0)
	spawnMobile("jakku", "trainer_healer", 0, 5888.4, 8.0, -7505.1, 58, 0)
	spawnMobile("jakku", "trainer_defender", 0, 5880.7, 8.0, -7501.2, 79, 0)


	spawnMobile("jakku", "trainer_gcw_tactics", 0, 6055.5, 6.9, -7492.2, -102, 0)
	spawnMobile("jakku", "trainer_gcw_sniper", 0, 6057.8, 6.3, -7461.2, -75, 0)
	spawnMobile("jakku", "trainer_gcw_commander", 0, 6097.0, 5.4, -7442.5, -1, 0)
	spawnMobile("jakku", "trainer_gcw_doctor", 0, 6128.6, 7.9, -7472.1, 77, 0)
	spawnMobile("jakku", "trainer_gcw_specialist", 0, 6125.1, 9.7, -7500.8, 121, 0)
	spawnMobile("jakku", "trainer_gcw_crafting", 0, 6099.4, 8.7, -7517.9, 165, 0)
	spawnMobile("jakku", "trainer_crafting_mechanic", 0, 6071.3, 8.3, -7512.9, -145, 0)

	spawnMobile("jakku", "rebel_recruiter", 0, 6073.7, 5.4, -7444.6, -20, 0)
	spawnMobile("jakku", "imperial_recruiter", 0, 6120.8, 7.3, -7451.9, 42, 0)

	local pNpc = spawnMobile("jakku", "shadowy_figure",60, 6053.5, 6.5, -7478.1, -102, 0)
	self:setMoodString(pNpc, "angry")
	pNpc = spawnMobile("jakku", "shadowy_figure",60, 6113.9, 9.1, -7509.8, 114, 0)
	self:setMoodString(pNpc, "scared")





end
