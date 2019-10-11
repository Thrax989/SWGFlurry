mytho_king = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "Mythosaur King",
	socialGroup = "kimogila",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 2250,
	damageMax = 3550,
	baseXp = 385000,
	baseHAM = 900000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,60},
	meatType = "meat_carnivore",
	meatAmount = 2000,
	hideType = "hide_leathery",
	hideAmount = 1550,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	scale = 3.0;
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
 		{"creatureareacombo","stateAccuracyBonus=50"},
 		{"creatureareaknockdown","stateAccuracyBonus=50"},
		{"knockdownattack","KnockdownChance=50"},
		{"creatureareaknockdown","KnockdownChance=50"},
		{"dizzyattack","DizzyChance=50"},
		{"stunattack","StunChance=50"},
		{"intimidationattack","IntimidationChance=50"},
		{"creatureareaattack",""}
 	}
}

CreatureTemplates:addCreatureTemplate(mytho_king, "mytho_king")
