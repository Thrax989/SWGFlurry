KachirhoCityTrainerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "KachirhoCityTrainerScreenPlay"
}

registerScreenPlay("KachirhoCityTrainerScreenPlay", true)

function KachirhoCityTrainerScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
	end
end

function KachirhoCityTrainerScreenPlay:spawnMobiles()

	
	spawnMobile("kashyyyk", "trainer_scout", 60, -4701.3, 92.1, -2222.4, 180,0)
	spawnMobile("kashyyyk", "trainer_brawler", 60, -4703.2, 92.1, -2223.0, 145,0)
	spawnMobile("kashyyyk", "trainer_carbine", 60, -4704.5, 92.1, -2234.1, 142,0)
	spawnMobile("kashyyyk", "trainer_pistol", 60, -4705.4, 92.1, -2225.0, 135,0)
	spawnMobile("kashyyyk", "trainer_rifleman", 60, -4706.1, 92.1, -2225.9, 126,0)
	spawnMobile("kashyyyk", "trainer_1hsword", 60, -4706.6, 92.1, -2226.7, 120,0)
	spawnMobile("kashyyyk", "trainer_2hsword", 60, -4707.1, 92.1, -2227.6, 116,0)
	spawnMobile("kashyyyk", "trainer_polearm", 60, -4707.6, 92.1, -2228.5, 104,0)
	spawnMobile("kashyyyk", "trainer_smuggler", 60, -4707.9, 92.1, -2229.7, 90,0)
	spawnMobile("kashyyyk", "trainer_squadleader", 60, -4708.3, 92.1, -2230.8, 95,0)
	spawnMobile("kashyyyk", "trainer_unarmed", 60, -4708.4, 92.1, -2231.8, 95,0)
	spawnMobile("kashyyyk", "trainer_bountyhunter", 60, -4708.4, 92.1, -2233.1, 90,0)
        spawnMobile("kashyyyk", "trainer_commando", 60, -4708.3, 92.1, -2234.6, 85,0)
	spawnMobile("kashyyyk", "trainer_marksman", 60, -4694.5, 92.1, -2221.8, 180,0)
	spawnMobile("kashyyyk", "trainer_ranger", 60, -4692.4, 92.1, -2222.0, 180,0)

	spawnMobile("kashyyyk", "trainer_dancer", 60, -4696.2, 82.0, -2249.2, 180,0)
	spawnMobile("kashyyyk", "trainer_entertainer", 60, -4697.7, 82.0, -2249.5, 180,0)
	spawnMobile("kashyyyk", "trainer_imagedesigner", 60, -4699.2, 82.0, -2249.4, 180,0)
	spawnMobile("kashyyyk", "trainer_musician", 60, -4700.9, 82.0, -2249.2, 180,0)

	spawnMobile("kashyyyk", "trainer_defender", 60, -4658.4, 83.2, -2300.0, 0,0)
	spawnMobile("kashyyyk", "trainer_enhancer", 60, -4656.1, 83.2, -2299.9, 0,0)
	spawnMobile("kashyyyk", "trainer_healer", 60, -4654.2, 83.2, -2299.9, 0,0)
	spawnMobile("kashyyyk", "trainer_lightsaber", 60, -4652.1, 83.2, -2299.9, 0,0)
	spawnMobile("kashyyyk", "trainer_powers", 60, -4650.0, 83.2, -2299.9, 0,0)

	spawnMobile("kashyyyk", "trainer_architect", 60, -4651.3, 83.2, -2251.4, 180,0)
	spawnMobile("kashyyyk", "trainer_armorsmith", 60, -4655.6, 83.2, -2251.5, 180,0)
	spawnMobile("kashyyyk", "trainer_artisan", 60, -4655.8, 83.2, -2246.7, 180,0)
	spawnMobile("kashyyyk", "trainer_bioengineer", 60, -4657.7, 83.2, -2249.1, 180,0)
	spawnMobile("kashyyyk", "trainer_chef", 60, -4657.8, 83.2, -2246.0, 180,0)
	spawnMobile("kashyyyk", "trainer_droidengineer", 60, -4659.6, 83.2, -2246.2, 180,0)
	spawnMobile("kashyyyk", "trainer_merchant", 60, -4653.4, 83.2, -2246.9, 180,0)
        spawnMobile("kashyyyk", "trainer_shipwright", 60, -4649.5, 83.2, -2245.2, 180,0)
	spawnMobile("kashyyyk", "trainer_tailor", 60, -4649.4, 83.2, -2248.6, 180,0)
	spawnMobile("kashyyyk", "trainer_weaponsmith", 60, -4651.5, 83.2, -2244.6, 180,0)

	spawnMobile("kashyyyk", "trainer_combatmedic", 60, -4694.3, 94.1, -2229.8, 180,0)
	spawnMobile("kashyyyk", "trainer_medic", 60, -4696.3, 94.1, -2230.2, 180,0)
	spawnMobile("kashyyyk", "trainer_doctor", 60, -4698.8, 94.1, -2230.5, 180,0)
	spawnMobile("kashyyyk", "trainer_creaturehandler", 60, -4701.0, 94.1, -2231.4, 180,0)
	spawnMobile("kashyyyk", "trainer_politician", 60, -4691.7, 94.1, -2230.5, 180,0)
	spawnMobile("kashyyyk", "trainer_powers", 60, 3.2, -6.0, 11.6, 175, 281475335594020)
	


   end
