janta_clan_leader = Creature:new {
	objectName = "@mob/creature_names:janta_clan_leader",
	randomNameType = NAME_GENERIC,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 300,
	chanceHit = 0.50,
	damageMin = 66,
	damageMax = 282,
	baseXp = 0,
	baseHAM = 40000,
	baseHAMmax = 50000,
	armor = 3,
	resists = {50,50,50,50,50,50,50,50,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dark_side_savage.iff"},
  lootGroups = {
    {
      groups = {
        {group = "janta_common", chance = 9000000},
      },
    },
    {
     groups = {
     {group = "crystals_premium", chance = 9000000},
     },
     },
     {
     groups = {
     {group = "clothing_attachments", chance = 9000000},
      },
      },
     {
     groups = {
     {group = "armor_attachments", chance = 9000000},
      },
      },
  },
  weapons = {"mixed_force_weapons"},
  conversationTemplate = "",
  attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_clan_leader, "janta_clan_leader")
