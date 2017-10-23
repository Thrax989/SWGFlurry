exar_kun = Creature:new {
	customName = "Spirit of Exar Kun",
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 300,
	chanceHit = 32.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {200,25,25,200,200,200,200,200,-1},
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

	templates = {"object/mobile/exar_kun.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_lance_massassi", chance = 2000000},
				{group = "g_som_2h_sword_massassi", chance = 2000000},
				{group = "g_carbine_kun_massassi", chance = 1500000},
				{group = "g_sith_house_loot_deed", chance = 1500000},
				{group = "g_pistol_heroic_exar", chance = 1500000},
				{group = "g_rifle_massassi_ink", chance = 1500000}

			}
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(forcepowermaster,tkamaster,lightsabermaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun, "exar_kun")
