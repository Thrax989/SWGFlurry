exar_kun_open_hand = Creature:new {
	customName = "Exar Kun Open Hand",
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 88,
	chanceHit = 0.8,
	damageMin = 545,
	damageMax = 800,
	baseXp = 8408,
	baseHAM = 21000,
	baseHAMmax = 26000,
	armor = 1,
	resists = {35,35,35,200,200,200,200,200,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_open_hand.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000},
				{group = "melee_weapons", chance = 3000000},
				{group = "rifles", chance = 200000},
				{group = "pistols", chance = 600000},
				{group = "carbines", chance = 200000},
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermid,swordsmanmid,tkamid,pikemanmaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun_open_hand, "exar_kun_open_hand")
