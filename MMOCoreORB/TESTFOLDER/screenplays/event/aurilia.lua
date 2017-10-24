MellichaeScreenPlay = ScreenPlay:new {
	numberOfActs = 1;
}

registerScreenPlay("MellichaeScreenPlay", true)

function MellichaeScreenPlay:start()
	self:spawnMobiles()
end

function MellichaeScreenPlay:spawnMobiles()
	-- Sith Shadow Group 1
	spawnMobile("dathomir", "captain_sarguillo", 20, 5244.9, 78.5, -4206.3, 16, 0)
	spawnMobile("dathomir", "quharek", 20, 5242.1, 78.5, -4202.6, 36, 0)
	spawnMobile("dathomir", "whip", 20, 5237.8, 78.5, -4196.1, 51, 0)
	spawnMobile("dathomir", "sivarra_mechaux", 20, 5236.6, 78.5, -4191.9, 68, 0)
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5273.35, 78.5, -4075.36, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5277.69, 78.5, -4075.18, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5277.5, 78.5, -4070.34, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5276.94, 78.5, -4078.36, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_outlaw", 200, 5280.41, 78.5, -4077.03, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_outlaw", 200, 5280.72, 78.5, -4072.5, -116, 0)

	-- Sith Shadow Group 2
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5260.28, 78.5, -4097.18, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5259.63, 78.5, -4100.21, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5263.25, 78.5, -4101.85, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5256.24, 78.5, -4099.84, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_outlaw", 200, 5256.9, 78.5, -4103.52, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_outlaw", 200, 5260.61, 78.5, -4104.8, -116, 0)

	-- Sith Shadow Group 3
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5235.04, 78.5, -4084.77, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5230.46, 78.5, -4086.15, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5231.84, 78.5, -4090.17, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5228.82, 78.5, -4081.21, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_outlaw", 200, 5226.58, 78.5, -4084.79, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_outlaw", 200, 5228.53, 78.5, -4090.16, -116, 0)

	-- Sith Shadow Group 4
--	spawnMobile("dathomir", "sith_shadow_commander", 200, 5239.04, 78.5, -4056.92, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_commander", 200, 5252.9, 78.5, -4052.76, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_commander", 200, 5248.63, 78.5, -4054.03, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_commander", 200, 5243.57, 78.5, -4055.39, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_thug", 200, 5254.04, 78.5, -4056.68, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_pirate", 200, 5240.09, 78.5, -4060.32, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_thug", 200, 5244.73, 78.5, -4059.6, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_pirate", 200, 5249.59, 78.5, -4058.38, -116, 0)
	
	-- Sith Shadow Group 5
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5329.9, 78.5, -4103.6, -175, 0)
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5352.6, 78.5, -4108.1, 3, 0)
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5355.2, 78.5, -4105.9, -95, 0)
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5350.7, 78.5, -4106.9, 92, 0)
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5363.8, 78.5, -4139.9, -75, 0)
--	spawnMobile("dathomir", "sith_shadow_taskmaster", 200, 5360.7, 78.5, -4138.9, 106, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5362.6, 78.5, -4138.2, -158, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5361.6, 78.5, -4140.7, 23, 0)							
	
	-- Gate Guards
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5258.3, 78.5, -4241.4, -172, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5287.9, 78.5, -4242.4, -172, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5316.3, 78.5, -4014.5, 0, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5368.2, 78.5, -4031.4, 0, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5343.3, 78.5, -4021.1, 0, 0)		

	-- Mellichae and Daktar and Kylaena
	spawnMobile("dathomir", "daktar_bloodmoon", 200, 5282.1, 78.5, -4029.9, 132, 0)
--	spawnMobile("dathomir", "mellichae", 200, 5353.4, 78.5, -4071.1, -21, 0)
	spawnMobile("dathomir", "kylaena_haley", 200, 5279.0, 78.5, -4046.8, 85, 0)
	
	-- Factional Recruiters
	spawnMobile("dathomir", "imperial_recruiter", 0, 5159.4, 78.5, -4111.5, 102, 0)
	spawnMobile("dathomir", "rebel_recruiter", 0, 5158.4, 78.5, -4116.3, 99, 0)
	spawnMobile("dathomir", "imperial_recruiter", 0, 5391.9, 78.5, -4073.9, -128, 0)
	spawnMobile("dathomir", "rebel_recruiter", 0, 5393.9, 78.5, -4076.8, -127, 0)
	
	-- Village Population
	spawnMobile("dathomir", "darth_smedley", 2200, 5176.1, 78.5, -4136.9, 95, 0)
	spawnMobile("dathomir", "lord_virrago", 2200, 5196.0, 78.5, -4153.4, -1, 0)
	spawnMobile("dathomir", "garva", 2200, 5207.8, 78.5, -4137.7, -88, 0)
	spawnMobile("dathomir", "kurt_thunderheart_stangl", 2200, 5192.4, 78.5, -4122.6, 177, 0)
	spawnMobile("dathomir", "paemos", 0, 5316.8, 78.5, -4154.6, -98, 0)
	spawnMobile("dathomir", "noldan", 0, 5301.6, 78.5, -4175.4, 2, 0)
	spawnMobile("dathomir", "rohak_village_elder", 0, 5299.1, 78.5, -4159.5, 0, 0)
	spawnMobile("dathomir", "eozlin", 0, 5298.4, 78.5, -4141.8, 173, 0)
	
	-- Village Populus
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5250.7, 78.5, -4232.0, -170, 0)										
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5243.4, 78.5, -4229.8, -170, 0)
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5236.2, 78.5, -4227.6, -170, 0)
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5331.1, 78.5, -4057.6, -75, 0)
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5326.2, 78.5, -4056.6, 109, 0)
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5310.2, 78.5, -4100.2, 83, 0)
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5315.1, 78.5, -4099.6, -95, 0)
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5312.3, 78.5, -4096.6, -176, 0)
	spawnMobile("dathomir", "villager_force_sensitive_village", 0, 5312.7, 78.5, -4102.1, -2, 0)	
	spawnMobile("dathomir", "wounded_villager", 0, 5329.7, 78.5, -4055.3, -163, 0)
	spawnMobile("dathomir", "wounded_villager", 0, 5328.6, 78.5, -4059.1, 16, 0)

	-- Ring of Hatred
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5237.8, 78.5, -4126.4, -7, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5251.2, 78.5, -4126.1, -23, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5260.6, 78.5, -4120.1, -36, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5267.8, 78.5, -4111.8, -43, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5272.1, 78.5, -4107.8, -47, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5273.9, 78.5, -4094.0, -72, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5274.0, 78.5, -4086.8, -74, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5274.2, 78.5, -4078.3, -85, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5273.5, 78.5, -4064.8, -104, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5268.5, 78.5, -4057.1, -116, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5263.3, 78.5, -4048.2, -130, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5254.2, 78.5, -4038.2, -145, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5249.1, 78.5, -4033.6, -154, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5242.8, 78.5, -4029.3, -161, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5234.2, 78.5, -4027.5, -172, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5228.0, 78.5, -4027.5, 174, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5219.7, 78.5, -4029.2, 169, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5211.2, 78.5, -4033.0, 158, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5205.7, 78.5, -4037.0, 149, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5195.9, 78.5, -4043.4, 141, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5190.8, 78.5, -4054.4, 122, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5189.1, 78.5, -4062.2, 107, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5187.5, 78.5, -4070.6, 101, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5187.1, 78.5, -4080.8, 84, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5187.9, 78.5, -4089.8, 72, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5191.2, 78.5, -4100.6, 60, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5197.4, 78.5, -4107.0, 52, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5203.9, 78.5, -4113.4, 35, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5209.5, 78.5, -4119.9, 27, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5221.2, 78.5, -4123.0, 10, 0)
--	spawnMobile("dathomir", "sith_shadow_mercenary", 200, 5230.7, 78.5, -4124.9, 0, 0)	
	
    -- Terminals
--    spawnSceneObject("dathomir", "object/tangible/terminal/terminal_character_builder.iff", -5229.6, 78.5, -4205.8, 59)
--    spawnSceneObject("dathomir", "object/tangible/terminal/terminal_mission.iff", 5752.8, 78.6, -4114.1, 102)    							
end
