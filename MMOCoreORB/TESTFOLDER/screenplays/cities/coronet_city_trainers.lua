CoronetCityTrainerScreenPlay = ScreenPlay:new {
	numberOfActs = 1;
	
	lootContainers = {
		

	},

	lootLevel = 100,

	
}

registerScreenPlay("CoronetCityTrainerScreenPlay", true)

function CoronetCityTrainerScreenPlay:start()
	self:spawnMobiles()
end

function CoronetCityTrainerScreenPlay:spawnMobiles()

	spawnMobile("corellia", "trainer_gcw_tactics", 0, -138.2, 28.0, -4704.2, -88, 0)
	spawnMobile("corellia", "trainer_gcw_sniper", 0, -138.2, 28.0, -4714.2, -88, 0)
	spawnMobile("corellia", "trainer_gcw_commander", 0, -138.2, 28.0, -4712.2, -88, 0)
	spawnMobile("corellia", "trainer_gcw_doctor", 0, -138.2, 28.0, -4710.2, -88, 0)
	spawnMobile("corellia", "trainer_gcw_specialist", 0, -138.2, 28.0, -4708.2, -88, 0)
	spawnMobile("corellia", "trainer_gcw_crafting", 0, -138.2, 28.0, -4706.2, -88, 0)
	spawnMobile("corellia", "trainer_crafting_mechanic", 0, -138.1, 28.0, -4725.9, -88, 0)


	
	spawnMobile("corellia", "trainer_tailor", 0, -181.9, 28.0, -4689.6, 174, 0)
	spawnMobile("corellia", "trainer_chef", 0, -166.1, 28.0, -4692.1, 166, 0)
	spawnMobile("corellia", "trainer_carbine", 0, -164.9, 28.0, -4744.3, 90, 0)
	spawnMobile("corellia", "trainer_pistol", 0, -165.0, 28.0, -4747.8, 90, 0)
	spawnMobile("corellia", "trainer_rifleman", 0, -163.8, 28.1, -4742.0, 112, 0)
	spawnMobile("corellia", "trainer_1hsword", 0, -162.6, 28.0, -4759.9, -23, 0)
	spawnMobile("corellia", "trainer_2hsword", 0, -165.5, 28.0, -4760.0, 16, 0)
	spawnMobile("corellia", "trainer_polearm", 0, -164.4, 28.0, -4760.8, 0, 0)
	spawnMobile("corellia", "trainer_smuggler", 0, -365.1, 28.0, -4550.1, -91, 0)
	spawnMobile("corellia", "trainer_squadleader", 0, -209.7, 28.0, -4396.2, 179, 0)
	spawnMobile("corellia", "trainer_unarmed", 0, -164.3, 28.1, -4709.4, 114, 0)
	spawnMobile("corellia", "trainer_bountyhunter", 0, -209.7, 28.0, -4473.9, 179, 0)
	
	spawnMobile("naboo", "trainer_lightsaber", 0, -5253.2, 6.9, 4618.2, 116, 0)
	spawnMobile("naboo", "trainer_powers", 0, -5246.0, 6.9, 4619.3, -156, 0)
	spawnMobile("naboo", "trainer_enhancer", 0, -5249.9, 6.9, 4620.3, 168, 0)
	spawnMobile("naboo", "trainer_healer", 0, -5254.2, 6.9, 4614.4, 75, 0)
	spawnMobile("naboo", "trainer_defender", 0, -5244.0, 6.9, 4616.0, -112, 0)
	spawnMobile("naboo", "rebel_recruiter", 0, -5244.9, 6.9, 4612.2, -56, 0)

   end
