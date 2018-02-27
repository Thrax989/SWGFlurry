tatooine_poi_waypoints = Creature:new {
	--objectName = "",
	customName = "tatooine Waypoints",
	socialGroup = "townsperson",
	pvpFaction = "townsperson",
	faction = "",
	level = 300,
	chanceHit = 300,
	damageMin = 1245,
	damageMax = 2000,
	baseXp = 26845,
	baseHAM = 9145253,
	baseHAMmax = 9154500,
	armor = 3,
	resists = {95,95,75,65,75,35,65,45,55},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE + CONVERSABLE + JTLINTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/wookiee_lifeday_elder.iff"},
	scale = 1.1,		
        lootGroups = {},
	
        conversationTemplate = "tatooine_poi_waypoints_template",
        attacks = {}
}

CreatureTemplates:addCreatureTemplate(tatooine_poi_waypoints, "tatooine_poi_waypoints")
