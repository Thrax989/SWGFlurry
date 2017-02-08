elder_enhanced_gaping_spider = Creature:new {
   --objectName = "@mob/creature_names:",
   customName = "elder enhanced gaping spider",
	socialGroup = "geonosian",
	faction = "",
	level = 300,
	chanceHit = 2.5,
	damageMin = 1715,
	damageMax = 2540,
	baseXp = 10267,
	baseHAM = 52000,
	baseHAMmax = 82000,
	armor = 0,
	resists = {50,50,50,50,50,50,50,50,50},
	meatType = "meat_insect",
	meatAmount = 50,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider.iff"},
	scale = 2.5,
	lootGroups = {
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","StateAccuracyBonus=100"},
		{"creatureareaknockdown","StateAccuracyBonus=100"},
		{"knockdownattack","KnockdownChance=100"},
		{"creatureareaknockdown","KnockdownChance=100"},
		{"dizzyattack","DizzyChance=100"},
		{"stunattack","StunChance=100"},
		{"mildpoison","PoisonChance=100"},
		{"intimidationattack","IntimidationChance=100"},
		{"mediumpoison","PoisonChance=100"},
		{"creatureareapoison","PoisonChance=100"},
		{"mediumdisease","DiseaseChance=100"},
		{"milddisease","DiseaseChance=100"},
		{"strongpoison","PoisonChance=100"},
		{"strongdisease","DiseaseChance=100"},
		{"creatureareaattack","StateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(elder_enhanced_gaping_spider, "elder_enhanced_gaping_spider")
