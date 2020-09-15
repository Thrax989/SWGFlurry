gr_kittle = Creature:new {
	customName = "Kittle",
	socialGroup = "kittle",
	faction = "",
	level = 100,
	chanceHit = 6.32,
	damageMin = 500,
	damageMax = 600,
	baseXp = 1800,
	baseHAM = 19000,
	baseHAMmax = 26000,
	armor = 1,
	resists = {30,30,135,130,10,30,30,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 700,
	--hideType = "",
	--hideAmount = 700,
	boneType = "bone_mammal",
	boneAmount = 700,
	milkType = "milk_wild",
	milk = 780,
	--tamingChance = 0.0000000,
	ferocity = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/kittle.iff"},
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"blindattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_kittle, "gr_kittle")
