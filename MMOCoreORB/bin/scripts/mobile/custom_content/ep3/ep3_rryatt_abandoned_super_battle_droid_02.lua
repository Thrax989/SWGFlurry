ep3_rryatt_abandoned_super_battle_droid_02 = Creature:new {
	customName = "Abandoned Super Battle Droid",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "droids",
	faction = "",
	level = 200,
	chanceHit = 18,
	damageMin = 1200,
	damageMax = 2300,
	baseXp = 19000,
	baseHAM = 230000,
	baseHAMmax = 230000,
	armor = 2,
	resists = {85,95,100,60,100,25,40,85,-1},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_rryatt_abandoned_super_battle_droid_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "weapons_all", chance = 2500000},
				{group = "g_pistol_trando_suppressor", chance = 500000},
				{group = "g_pistol_renegade", chance = 500000},
				{group = "g_pistol_pvp", chance = 500000},
				{group = "g_pistol_dd6",  chance = 500000},
				{group = "g_avatar_trando_special",  chance = 500000}
			},
			lootChance = 7500000
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_abandoned_super_battle_droid_02, "ep3_rryatt_abandoned_super_battle_droid_02")
