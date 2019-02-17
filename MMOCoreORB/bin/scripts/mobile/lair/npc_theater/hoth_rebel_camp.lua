hoth_rebel_camp = Lair:new {
	mobiles = {{"rebel_snow_trooper", 6}},
	spawnLimit = 15,
	buildingsVeryEasy = {"object/building/poi/rebel_snow_camp.iff"},
	buildingsEasy = {"object/building/poi/rebel_snow_camp.iff"},
	buildingsMedium = {"object/building/poi/rebel_snow_camp.iff"},
	buildingsHard = {"object/building/poi/rebel_snow_camp.iff"},
	buildingsVeryHard = {"object/building/poi/rebel_snow_camp.iff"},
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("hoth_rebel_camp", hoth_rebel_camp)
