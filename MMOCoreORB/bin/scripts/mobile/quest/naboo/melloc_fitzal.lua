melloc_fitzal = Creature:new {
  objectName = "",
  socialGroup = "imperial",
  faction = "imperial",
  level = 30,
  chanceHit = 0.39,
  damageMin = 290,
  damageMax = 300,
  baseXp = 2914,
  baseHAM = 8400,
  baseHAMmax = 10200,
  armor = 0,
  resists = {15,15,15,15,15,15,15,-1,-1},
  meatType = "",
  meatAmount = 0,
  hideType = "",
  hideAmount = 0,
  boneType = "",
  boneAmount = 0,
  milk = 0,
  tamingChance = 0.,
  ferocity = 0,
  pvpBitmask = ATTACKABLE + ENEMY,
  creatureBitmask = PACK + KILLER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

  templates = {
    "object/mobile/dressed_imperial_officer_m_5.iff",
 	},
		lootGroups = {
		{
			groups = {
				{group = "junk", chance = 6500000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "tailor_components", chance = 1000000},
				{group = "imperial_officer_common", chance = 500000},
				
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(melloc_fitzal, "melloc_fitzal")
