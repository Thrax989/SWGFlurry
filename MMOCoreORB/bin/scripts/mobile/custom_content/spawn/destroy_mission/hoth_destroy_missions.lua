hoth_destroy_missions = {
	minLevelCeiling = 12,

	lairSpawns = {
		{
			lairTemplateName = "hoth_taun_taun_lair",
			minDifficulty = 1,
			maxDifficulty = 5,
			size = 25,
		},
		{
			lairTemplateName = "hoth_wampa_lair",
			minDifficulty = 15,
			maxDifficulty = 25,
			size = 25,
		},
	}
}

addDestroyMissionGroup("hoth_destroy_missions", hoth_destroy_missions);
