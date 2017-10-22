exar_kun_tomb_guardian_02 = Creature:new {
	customName = "Exar Kun Tomb Guardian",
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 107,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 10174,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {5,100,5,100,100,100,100,100,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_tomb_guardian_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "melee_weapons", chance = 2000000},
				{group = "g_massassiknuckler", chance = 2000000},
				{group = "g_sword_massassi", chance = 2000000},

			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermid,swordsmanmid,pikemanmaster,tkamaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun_tomb_guardian_02, "exar_kun_tomb_guardian_02")
