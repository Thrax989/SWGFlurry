hoth_world = {

	lairSpawns = {

		{
			lairTemplateName = "hoth_wampa_pack",
			spawnLimit = -1,
			minDifficulty = 55,
			maxDifficulty = 85,
			numberToSpawn = 0,
			weighting = 25,
			size = 15
		},

		{
			lairTemplateName = "hoth_tauntaun_pack",
			spawnLimit = -1,
			minDifficulty = 8,
			maxDifficulty = 15,
			numberToSpawn = 0,
			weighting = 25,
			size = 15
		},
		
	}
}

addSpawnGroup("hoth_world", hoth_world);
