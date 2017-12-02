hoth_destroy_missions = {
	minLevelCeiling = 12,

	lairSpawns = {
		{
			lairTemplateName = "hoth_wampa_lair",
			minDifficulty = 15,
			maxDifficulty = 24,
			size = 25,
		},
		{
			lairTemplateName = "hoth_wampa_lair",
			minDifficulty = 25,
			maxDifficulty = 35,
			size = 25,
		},
	}
}

addDestroyMissionGroup("hoth_destroy_missions", hoth_destroy_missions);
