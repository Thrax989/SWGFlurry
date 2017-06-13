taiken_dark_apprentice = Creature:new {
  customName = "Dark Apprentice",
  socialGroup = "geonosian",
  level = 275,
  chanceHit = 20.00,
  damageMin = 600,
  damageMax = 800,
  baseXp = 0,
  baseHAM = 20000,
  baseHAMmax = 50000,
  armor = 0,
  resists = {20,20,20,20,20,20,20,-1},
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
  creatureBitmask = KILLER + STALKER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

  templates = {
    "object/mobile/dressed_dark_jedi_human_male_01.iff",
    "object/mobile/dressed_dark_jedi_human_female_01.iff"},
    lootGroups = {
  		{
  			  groups = {
            {group = "wearables_rare", chance = 5000000},
  				  {group = "weapons_all", chance = 5000000}
},
            lootChance = 10000000
},
{
            groups = {
  				  {group = "armor_attachments", chance = 5000000},
  				  {group = "clothing_attachments", chance = 5000000}
},
  			    lootChance = 10000000
},
{
            groups = {
  				  {group = "armor_attachments", chance = 5000000},
  				  {group = "clothing_attachments", chance = 5000000}
},
  			    lootChance = 10000000
},
{
            groups = {
            {group = "saberhand27", chance = 10000000}
},
            lootChance = 10000000
},
{
            groups = {
            {group = "saberhand27", chance = 10000000}
},
            lootChance = 10000000
},
{
            groups = {
            {group = "saberhand27", chance = 10000000}
},
            lootChance = 10000000
},
},
  weapons = {"dark_jedi_weapons_gen4"},
  reactionStf = "@npc_reaction/slang",
  attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(taiken_dark_apprentice,"taiken_dark_apprentice")
