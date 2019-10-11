hoth_destroy_missions = {
	minLevelCeiling = 12,

	lairSpawns = {
		{
			lairTemplateName = "hoth_taun_taun_lair",
			minDifficulty = 15,
			maxDifficulty = 24,
			size = 25,
		},
		{
			lairTemplateName = "hoth_wampa_lair",
			minDifficulty = 28,
			maxDifficulty = 38,
			size = 25,
		},
	}
}

addDestroyMissionGroup("hoth_destroy_missions", hoth_destroy_missions);
