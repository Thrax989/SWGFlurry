kkorrwrot = Creature:new {
	customName = "Kkorrwrot",
	socialGroup = "kkorrwrot",
	faction = "",
	level = 187,
	chanceHit = 0.9,
	damageMin = 860,
	damageMax = 1650,
	baseXp = 12500,
	baseHAM = 125000,
	baseHAMmax = 185000,
	armor = 2,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,


	templates = {"object/mobile/kkorrwrot.iff"},
	lootGroups = {},
	weapons = {},
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(kkorrwrot, "kkorrwrot")
