KraytGraveyardScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("KraytGraveyardScreenPlay", true)

function KraytGraveyardScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function KraytGraveyardScreenPlay:spawnMobiles()
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7226.6, 33, 4495.6, -116, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7231.8, 30.1, 4487.3, -116, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7177.7, 24.5, 4430.0, -100, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7169.5, 22.0, 4445.0, -100, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7035.5, 22.8, 4337.3, -55, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7045.3, 19.9, 4350.9, -55, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 6872.4, 41.9, 4246.0, -99, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 6876.6, 47.6, 4231.6, -99, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 6563.3, 87.7, 4485.7, 133, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 6588.5, 98.6, 4488.2, 133, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7523.5, 4.4, 4654.6, -163, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7507.0, 4.74, 4655.3, -163, 0)

	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7515.1, 8.7, 4557.4, -35, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7417.5, 7.7, 4598.6, -128, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7300.2, 23.5, 4460.6, -156,0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7141.0, 56.9, 4322.8, -86, 0)

	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7555.6, 15.1, 4487.6, -90, 0)
	spawnMobile("tatooine", "krayt_king", 300, 7429.9, 7.1, 4477.3, 0, 0)

	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 6838.3, 25.6, 4321.3, -150, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7491.1, 8.5, 4481.3, -150, 0)

	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7525.1, 28.4, 4387.0, -74, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7269.9, 62.5, 4351.4, -77,0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7078.4, 19.7, 4447.1, -123, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 7003.3, 86.6, 4199.7, 10, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient_elder", 300, 6723.1, 19.7, 4287.5, -91, 0)

	spawnMobile("tatooine", "krayt_dragon_ancient", 300, 4978.2, 29.2097, 4251.56, -91, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 300, 6138.01, 48.9556, 4146.06, -91, 0)
	
	spawnMobile("tatooine", "canyon_krayt_dragon", 300, 6766.7, 54.6, 4098.5, -91, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 300, 6763.9, 55, 4090.1, -91, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 300, 6760.8, 65.8, 4008.8, -91, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 300, 6674.3, 48.7, 4034.5, -91, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 300, 6687.5, 48.5, 3952.5, -91, 0)
end
