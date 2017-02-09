ep3_harwakokok_mighty = Creature:new {
	customName = "Harwakokok The Mighty",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "wookiee",
	faction = "",
	level = 250,
	chanceHit = 25.00,
	damageMin = 2250,
	damageMax = 3470,
	baseXp = 25000,
	baseHAM = 400000,
	baseHAMmax = 500000,
	armor = 3,
	resists = {85,85,85,85,85,85,85,85,-1},
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

	templates = {"object/mobile/ep3/ep3_harwakokok_mighty.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_pistol_wookiee", chance = 500000},
	    	{group = "g_pistol_wookiee_bowcaster", chance = 500000},
	    	{group = "g_lance_wod_twin_blade", chance = 500000},
	    	{group = "g_lance_wookiee", chance = 500000},
	    	{group = "g_lance_kashyyk", chance = 500000},
	    	{group = "armor_attachments", chance = 2500000},
	    	{group = "g_lance_avatar_wke_heartlance", chance = 500000},
	    	{group = "g_carbine_wookiee_bowcaster", chance = 500000},
				{group = "g_rifle_bowcaster_heavy", chance = 500000},
				{group = "g_rifle_bowcaster_master", chance = 500000},
				{group = "clothing_attachments", chance = 2500000},
	    	{group = "g_wookiee_knuckler", chance = 500000}
				},
				lootChance = 10000000
			}
		},
	weapons = {"chewbacca_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_harwakokok_mighty, "ep3_harwakokok_mighty")
