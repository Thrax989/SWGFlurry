mytho_king = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "\\#00ff00<<< Mythosaur King >>> \\#ff0000[lvl 300]",
	socialGroup = "kimogila",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1750,
	damageMax = 3750,
  	specialDamageMult = 7.5,
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
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	lootGroups = {
		{
			groups = {
				{group = "jedi_comp_group", chance = 10000000},
			},
			lootChance = 1000000
		},		
		{
			groups = {
				{group = "goggles_all", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "mythosaur_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "mythosaur_common", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "krayt_pearls_flawless", chance = 10000000},
			},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "vehicledeedsnormal", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "vehicledeedsrare", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		}
	},
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
