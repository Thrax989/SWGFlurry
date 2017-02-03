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

	spawnMobile("tatooine", "krayt_dragon_grand", 1800, -4555.0, 49.3, -4459.2, -116, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 1800, -4713.1, 46.5, -4288.3, 50, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 1800, -4669.8, 30.1, -4477.7, 5, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 1800, -4528.8, 28.3, -4302.4, 144, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 1200, -4521.3, 27.2, -4298.2, 144, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 1800, -4747.2, 32.5, -4424.8, -91, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 1800, -4686.79, 50.7051, -4338, 55, 0) 

	spawnMobile("tatooine", "krayt_dragon_adolescent_elder", 1800, -4613.84, 53.2907, -4388.88, 26, 0) 
	spawnMobile("tatooine", "krayt_dragon_grand_elder", 1800, -4497.65, 55.0428, -4499.77, 78, 0) 
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 1800, -4748.82, 49.5685, -4172.69, 323, 0) 
	spawnMobile("tatooine", "krayt_dragon_adolescent_elder", 1800, -4853.77, 43.2114, -4234.41, 215, 0) 
	spawnMobile("tatooine", "giant_canyon_krayt_dragon_elder", 1800, -4431.09, 21.9377, -4344.86, 69, 0) 
	spawnMobile("tatooine", "krayt_dragon_grand_elder", 1800, -4629.9, 37.5572, -4210.11, 31, 0) 

end
