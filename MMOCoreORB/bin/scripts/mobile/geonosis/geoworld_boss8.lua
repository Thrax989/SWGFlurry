geoworld_boss8 = Creature:new {
	customName = "Geonosis World Boss",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 90.0,
	damageMin = 6500,
	damageMax = 8500,
	specialDamageMult = 3.0,  
	baseXp = 30000,
	baseHAM = 900000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {140,180,180,180,180,180,180,180,160},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 3.0,
	templates = {
		"object/mobile/beast_master/bm_mutated_vesp.iff"},
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
				{group = "jedi_belt_group", chance = 10000000},
			},
			lootChance = 300000
		},    
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "donkuwah_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "mokk_elites", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nonjedi_jewelry", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
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
				{group = "boss_rare", chance = 10000000},
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
	weapons = {"creature_spit_large_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=90"},
		{"posturedownattack","stateAccuracyBonus=90"},
    {"creatureareadisease","DiseaseChance=80"},
    {"creatureareapoison","PoisonChance=80"},    
    {"creatureareableeding","BleedChance=80"},    
		{"creatureareacombo","stateAccuracyBonus=90"}
	}
}

CreatureTemplates:addCreatureTemplate(geoworld_boss8, "geoworld_boss8")

