ep3_broodmaster_hsskas = Creature:new {
	customName = "Broodmaster Hsskas",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "trandoshan",
	faction = "",
	level = 115,
	chanceHit = 1.25,
	damageMin = 1380,
	damageMax = 1790,
	baseXp = 11509,
	baseHAM = 125000,
	baseHAMmax = 135500,
	armor = 3,
	resists = {80,80,80,60,35,55,75,20,-1},
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
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_broodmaster_hsskas.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 2500000},
				{group = "g_baton_avatar_trando_stun_stick", chance = 500000},
				{group = "g_lance_trando", chance = 500000},
				{group = "g_carbine_avatar_trando_e5", chance = 500000},
				{group = "g_carbine_avatar_trando", chance = 500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "g_pistol_avatar_trando_special", chance = 500000},
				{group = "g_pistol_trando_suppressor", chance = 500000},
				{group = "g_rifle_avatar_laser_trando", chance = 500000},
				{group = "g_carbine_slug", chance = 500000},
				{group = "g_jinkins_j1_rifle", chance = 500000},
				{group = "g_pistol_ion_stunner", chance = 500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,commandomaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_broodmaster_hsskas, "ep3_broodmaster_hsskas")
