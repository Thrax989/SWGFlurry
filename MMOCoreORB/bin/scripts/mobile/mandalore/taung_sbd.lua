taung_sbd = Creature:new {
	customName = "Taung Super Battle Droid",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 25,
	damageMin = 2500,
	damageMax = 3200,
	baseXp = 19000,
	baseHAM = 100000,
	baseHAMmax = 130000,
	armor = 1,
	resists = {180,190,100,160,125,125,140,185,120},
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
	scale = 1.40,

	templates = {"object/mobile/ep3/ep3_clone_relics_durge_droid_02.iff"},
		
	lootGroups = {
		    {
			    groups = {
				    {group = "wearables_uncommon", chance = 10000000}
			  },
			  lootChance = 5000000
		    },
		    {
			    groups = {
				{group = "trash_common", chance = 7000000},
 				{group = "trash_rare", chance = 3000000},
			  },
			  lootChance = 10000000
		    },
		    {
			    groups = {
				    {group = "death_watch_bunker_ingredient_protective", chance = 5000000},
 				    {group = "death_watch_bunker_ingredient_binary", chance = 5000000},
			  },
			  lootChance = 100000
		    },
		    {
			    groups = {
				    {group = "jedi_comp_group", chance = 10000000},
			  },
			  lootChance = 100000
		    },
	  },
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(taung_sbd, "taung_sbd")
