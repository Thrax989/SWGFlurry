taiken_moff = Creature:new {
  objectName = "",
  customName = "Moff Fort",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 80.00,
  damageMin = 1500,
  damageMax = 2500,
  specialDamageMult = 2.0,
  baseXp = 0,
  baseHAM = 500000,
  baseHAMmax = 1000000,
  armor = 2,
  resists = {65,65,65,65,65,65,65,65,-1},
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

  templates = {"object/mobile/dressed_imperial_moff_m.iff"},
  lootGroups = {
{
            groups = {
            {group = "armor_attachments", chance = 5000000},
            {group = "clothing_attachments", chance = 5000000}
},
            lootChance = 10000000
},
{
             groups = {
             {group = "wearables_rare", chance = 5000000},
             {group = "aakuan_common", chance = 5000000}
},
             lootChance = 1000000
},
{
             groups = {
             {group = "g_named_crystals", chance = 10000000}
},
             lootChance = 8000000
},
{
             groups = {
             {group = "armor_attachments", chance = 5000000},
             {group = "clothing_attachments", chance = 5000000}
},
             lootChance = 1000000
},
{
             groups = {
             {group = "axkva_min", chance = 10000000}
},
             lootChance = 1000000
},
{
             groups = {
             {group = "krayt_tissue_rare", chance = 10000000}
},
             lootChance = 5000000
},
{
             groups = {
             {group = "nge1", chance = 10000000}
},
             lootChance = 10000000
},
{
             groups = {
             {group = "nyms_rare", chance = 10000000}
},
             lootChance = 10000000
},
{
              groups = {
              {group = "backpacks_b01", chance = 5000000},
              {group = "backpacks_b02", chance = 5000000}
},
               lootChance = 10000000
},
{
          		groups = {
                   		{group = "stun_weapons", chance = 5000000},
                   		{group = "stun_ranged", chance = 5000000}
},
          			lootChance = 5000000
},
},
    weapons = {"imperial_weapons_heavy"},
    conversationTemplate = "",
    reactionStf = "@npc_reaction/military",
    personalityStf = "@hireling/hireling_military",
    attacks = merge(riflemanmaster,carbineermaster,brawlermaster,fencermaster)
  
  }

  CreatureTemplates:addCreatureTemplate(taiken_moff, "taiken_moff")
