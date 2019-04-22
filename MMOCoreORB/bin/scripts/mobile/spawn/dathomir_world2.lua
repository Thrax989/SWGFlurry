dathomir_world = {

	lairSpawns = {

		{
			lairTemplateName = "dathomir_kwi_pack_neutral_none",
			spawnLimit = -1,
			minDifficulty = 8,
			maxDifficulty = 12,
			numberToSpawn = 0,
			weighting = 15,
			size = 20
		},

		{
			lairTemplateName = "dathomir_kwi_lair_neutral_small",
			spawnLimit = -1,
			minDifficulty = 10,
			maxDifficulty = 14,
			numberToSpawn = 0,
			weighting = 15,
			size = 20
		},
	}
}

addSpawnGroup("dathomir_world", dathomir_world);
