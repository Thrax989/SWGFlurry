geonosis_destroy_missions = {
	minLevelCeiling = 25,

	lairSpawns = {
		{
			lairTemplateName = "geonosis_rebel_clone_neutral",
			minDifficulty = 1,
			maxDifficulty = 5,
			size = 25,
		},
		{
			lairTemplateName = "geonosis_imperial_clone_neutral",
			minDifficulty = 1,
			maxDifficulty = 5,
			size = 25,
		},
		{
			lairTemplateName = "geonosis_neutral_clone_neutral",
			minDifficulty = 32,
			maxDifficulty = 36,
			size = 25,
		},
	}
}

addDestroyMissionGroup("geonosis_destroy_missions", geonosis_destroy_missions);
