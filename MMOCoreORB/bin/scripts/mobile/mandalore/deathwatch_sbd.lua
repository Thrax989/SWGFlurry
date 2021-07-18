deathwatch_sbd = Creature:new {
	customName = "Deathwatch Super Battle Droid",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 25,
	damageMin = 1200,
	damageMax = 2100,
	baseXp = 19000,
	baseHAM = 230000,
	baseHAMmax = 230000,
	armor = 2,
	resists = {85,95,100,60,100,25,40,85,-1},
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
				    {group = "death_watch_bunker_lieutenants", chance = 10000000}
			  },
			  lootChance = 5000000
		    },
		    {
			    groups = {
				    {group = "jetpack_base", chance = 10000000}
			  },
			  lootChance = 5000000
		    },
		    {
			    groups = {
				    {group = "death_watch_bunker_ingredient_protective", chance = 5000000},
 				    {group = "death_watch_bunker_ingredient_binary", chance = 5000000},
			  },
			  lootChance = 500000
		    },
		    {
			    groups = {
				    {group = "death_watch_bunker_commoners", chance = 10000000}
			  },
			  lootChance = 5000000
		    },
		    {
			    groups = {
				    {group = "jedi_comp_group", chance = 10000000},
			  },
			  lootChance = 400000
		    },
	  },
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(deathwatch_sbd, "deathwatch_sbd")
