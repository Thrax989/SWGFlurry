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

	spawnMobile("tatooine", "krayt_dragon_grand", 450, -4555.0, 49.3, -4459.2, -116, 0)

	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 450, -4669.8, 30.1, -4477.7, 5, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 450, -4528.8, 28.3, -4302.4, 144, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 450, -4521.3, 27.2, -4298.2, 144, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 450, -4747.2, 32.5, -4424.8, -91, 0)

	spawnMobile("tatooine", "krayt_dragon_adolescent_elder", 450, -4613.84, 53.2907, -4388.88, 26, 0) 
	spawnMobile("tatooine", "krayt_dragon_grand_elder", 450, -4497.65, 55.0428, -4499.77, 78, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 450, -4748.82, 49.5685, -4172.69, 323, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent_elder", 450, -4853.77, 43.2114, -4234.41, 215, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon_elder", 450, -4431.09, 21.9377, -4344.86, 69, 0)
	spawnMobile("tatooine", "krayt_dragon_grand_elder", 450, -4629.9, 37.5572, -4210.11, 31, 0)

	spawnMobile("tatooine", "canyon_krayt_dragon_elder", 450, -4627.66, 33.0647, -4280.92, 37, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon_elder", 450, -4622.97, 33.2227, -4285.55, 44, 0) 
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon_elder", 450, 7154.24, 42.5546, 4367.21, 286, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon_elder", 450, 7147.78, 45.0426, 4358.72, 299, 0)

	spawnMobile("tatooine", "krayt_dragon_ancient", 450, -4734.78, 41.9816, -4251.47, 0, 0) 
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 450, -4704.83, 47.9804, -4362.1, 16, 0) 

end
