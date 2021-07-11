event_exar = Creature:new {
  customName = "Spirit of Exar Kun (Dark Lord of the Sith)",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 1245,
	damageMax = 2600,
	specialDamageMult = 7.5,
	baseXp = 128549,
	baseHAM = 3900000,
	baseHAMmax = 4000000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,200},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,
	scale = 1.75;
	templates = {"object/mobile/costume_exar_kun_cultist.iff"},
	lootGroups = {
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},	
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_ingredient_protective", chance = 5000000},
 				{group = "death_watch_bunker_ingredient_binary", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_ingredient_protective", chance = 5000000},
 				{group = "death_watch_bunker_ingredient_binary", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
 		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
 		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},   
		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1000000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 3000000},
				{group = "tierdiamond", chance = 5000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1000000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 3000000},
				{group = "tierdiamond", chance = 5000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "tierone", chance = 1000000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 3000000},
				{group = "tierdiamond", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1000000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 3000000},
				{group = "tierdiamond", chance = 5000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(event_exar, "event_exar")
