blood_drenched_merek_king = Creature:new {
	objectName = "@mob/creature_names:blood_drenched_merek_king",
	socialGroup = "merek",
	faction = "",
	level = 56,
	chanceHit = 0.55,
	damageMin = 420,
	damageMax = 550,
	baseXp = 5464,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {10,135,10,10,10,10,10,10,-1},
	meatType = "meat_wild",
	meatAmount = 55,
	hideType = "hide_leathery",
	hideAmount = 55,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/blood_drenched_merek_king.iff"},
	scale = 1.25,

--Creature Default Loot Template
	lootGroups = {
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 25000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(blood_drenched_merek_king, "blood_drenched_merek_king")
