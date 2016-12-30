AncientKraytSkeletonScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("AncientKraytSkeletonScreenPlay", true)

function AncientKraytSkeletonScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function AncientKraytSkeletonScreenPlay:spawnMobiles()

	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4555.0, 49.3, -4459.2, -116, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4713.1, 46.5, -4288.3, 50, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4669.8, 30.1, -4477.7, 5, 0)
	spawnMobile("tatooine", "krayt_king", 300, -4521.3, 27.2, -4298.2, 144, 0)
	
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4747.2, 32.5, -4424.8, -91, 0)


	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4661.97, 44.1355, -4411.18, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4597.69, 40.2448, -4451.34, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4738.21, 51.6275, -4316.59, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4738.21, 51.6275, -4316.59, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4819.88, 49.3037, -4360.02, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4819.88, 49.3037, -4360.02, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4637.9, 42.0042, -4324.44, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4637.64, 41.535, -4322.89, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4681.08, 49.0909, -4352.04, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4619.27, 32.7882, -4274.45, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4760.66, 26.6838, -4513.16, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4521.72, 55.35, -4471.86, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4505.26, 50.235, -4463.04, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4435.4, 33.476, -4419.47, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, -4420.4, 30.6767, -4392.81, -91, 0)

        spawnMobile("tatooine", "canyon_krayt_dragon", 300, -4381.84, 33.9595, -4143.44, -91, 0)
        spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 300, -4377.05, 30.553, -4152.75, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_adolescent", 300, -4491.96, 32.055, -4137.42, -91, 0)
        spawnMobile("tatooine", "krayt_dragon_ancient", 300, -4387.69, 24.3895, -4235.81, -91, 0)
        spawnMobile("tatooine", "giant_canyon_krayt_dragon", 300, -4291.97, 34.5159, -4150.18, -91, 0)

	


end
