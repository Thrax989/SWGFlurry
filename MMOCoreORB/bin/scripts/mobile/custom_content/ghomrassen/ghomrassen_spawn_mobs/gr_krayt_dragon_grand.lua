gr_krayt_dragon_grand = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_grand",
	socialGroup = "krayt",
	faction = "",
	level = 306,
	chanceHit = 30,
	damageMin = 2170,
	damageMax = 4150,
	baseXp = 28049,
	baseHAM = 390000,
	baseHAMmax = 481000,
	armor = 3,
	resists = {90,90,90,100,65,90,90,90,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 905,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/krayt_dragon.iff"},
	scale = 1.1;
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"blindattack",""},
		{"intimidationattack",""},
		{"creatureareaknockdown",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_krayt_dragon_grand, "gr_krayt_dragon_grand")
