event_kaadu = Creature:new {
	customName = "Grand Turkey Beast",
	socialGroup = "kaadu",
	faction = "",
	level = 336,
	chanceHit = 30,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 28549,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 1,
	resists = {10,10,10,-1,-1,-1,-1,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 100,
	hideType = "hide_wooly",
	hideAmount = 100,
	boneType = "bone_mammal",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/kaadu_hue.iff"},
	scale = 4,

--Creature Default Loot Template
	lootGroups = {
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}			
		},
			lootChance = 10000000
		},		
		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
	}
}

CreatureTemplates:addCreatureTemplate(event_kaadu, "event_kaadu")
