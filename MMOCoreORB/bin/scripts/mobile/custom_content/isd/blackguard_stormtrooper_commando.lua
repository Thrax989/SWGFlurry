blackguard_stormtrooper_commando = Creature:new {
	objectName = "@mob/creature_names:storm_commando",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 129,
	chanceHit = 0.38,
	damageMin = 480,
	damageMax = 690,
	baseXp = 3005,
	baseHAM = 20300,
	baseHAMmax = 25100,
	armor = 0,
	resists = {0,0,0,30,-1,30,-1,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_stormtrooper_commando_m.iff"},
	--scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 5500000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
				{group = "melee_weapons", chance = 550000},
				{group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000},
				{group = "stormtrooper_common", chance = 700000},
				{group = "wearables_common", chance = 1000000}
			},
			lootChance = 2800000
		}
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	personalityStf = "@hireling/hireling_stormtrooper",		
	attacks = merge(riflemanmaster,carbineermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(blackguard_stormtrooper_commando, "blackguard_stormtrooper_commando")
