bordok_mare = Creature:new {
	objectName = "@mob/creature_names:bordok_mare",
	socialGroup = "bordok",
	faction = "",
	level = 34,
	chanceHit = 0.41,
	damageMin = 340,
	damageMax = 390,
	baseXp = 3460,
	baseHAM = 8700,
	baseHAMmax = 10700,
	armor = 0,
	resists = {130,-1,20,200,200,20,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milkType = "milk_wild",
	milk = 500,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bordok.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(bordok_mare, "bordok_mare")
