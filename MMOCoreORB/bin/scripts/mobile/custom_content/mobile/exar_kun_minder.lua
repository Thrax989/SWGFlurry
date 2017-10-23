exar_kun_minder = Creature:new {
	customName = "Exar Kun Minder",
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 81,
	chanceHit = 0.75,
	damageMin = 555,
	damageMax = 820,
	baseXp = 7761,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {30,30,30,100,100,100,100,100,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_minder.iff"},
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
	attacks = merge(fencermid,swordsmanmid,tkamid,pikemanmid,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun_minder, "exar_kun_minder")
