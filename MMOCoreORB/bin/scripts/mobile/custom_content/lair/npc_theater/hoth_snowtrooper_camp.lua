hoth_snowtrooper_camp = Lair:new {
	mobiles = {{"snowtrooper", 6},{"imperial_probe_drone", 1}},
	spawnLimit = 15,
	buildingsVeryEasy = {"object/building/poi/snowtrooper_camp.iff"},
	buildingsEasy = {"object/building/poi/snowtrooper_camp.iff"},
	buildingsMedium = {"object/building/poi/snowtrooper_camp.iff"},
	buildingsHard = {"object/building/poi/snowtrooper_camp.iff"},
	buildingsVeryHard = {"object/building/poi/snowtrooper_camp.iff"},
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("hoth_snowtrooper_camp", hoth_snowtrooper_camp)
