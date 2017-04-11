janta_moon = Creature:new {
  customName = "Mooncore",
  socialGroup = "janta_tribe",
  faction = "janta_tribe",
  level = 300,
  chanceHit = 50.00,
  damageMin = 2000,
  damageMax = 3000,
  baseXp = 0,
  baseHAM = 750000,
  baseHAMmax = 750000,
  armor = 2,
  resists = {80,80,80,80,80,80,80,80,80},
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
  creatureBitmask = PACK + HERD + KILLER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,
  Scale = 2.0,

  templates = {"object/mobile/dantari_female.iff"},
      lootGroups = {
        {
          groups = {
            {group = "armor_attachments", chance = 1000000},
            {group = "clothing_attachments", chance = 1000000},
            {group = "crystals_premium", chance = 4000000},
            {group = "pearls_flawless", chance = 4000000}
},
          lootChance = 10000000
},
{
          groups = {
            {group = "wearables_rare", chance = 4000000},
            {group = "aakuan_common", chance = 3000000},
            {group = "nightsister_common", chance = 3000000}

},
          lootChance = 10000000
},
{
           groups = {
                {group = "axkva_min", chance = 4000000},
                {group = "armor_attachments", chance = 3000000},
                {group = "clothing_attachments", chance = 3000000}

},
          lootChance = 10000000
},
{
          groups = {
                {group = "axkva_min", chance = 10000000}
},
          lootChance = 10000000
},
{
           groups = {
               {group = "junk", chance = 10000000}
},
            lootChance = 10000000
},
{
           groups = {
               {group = "junk", chance = 10000000}
},
            lootChance = 10000000
},
},

  weapons = {"mixed_force_weapons"},
  conversationTemplate = "",
  attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster)
}
CreatureTemplates:addCreatureTemplate(janta_moon, "janta_moon")
