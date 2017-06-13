hydra_commander = Creature:new {
  customName = "Hydra Commander",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 60.00,
  damageMin = 1000,
  damageMax = 2000,
  baseXp = 0,
  baseHAM = 400000,
  baseHAMmax = 800000,
  armor = 3,
  resists = {90,90,90,90,90,90,90,90,-1},
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
  Scale = 1.5,

  templates = {"object/mobile/dressed_death_watch_red.iff"},
    lootGroups = {
  		{
  			      groups = {
  				            {group = "armor_attachments", chance = 1000000},
  				            {group = "clothing_attachments", chance = 1000000},
  				            {group = "crystals_premium", chance = 4000000},
  				            {group = "pearls_flawless", chance = 4000000}
},
                      lootChance = 8000000
},
{
            groups = {
                    {group = "armor_attachments", chance = 5000000},
                    {group = "clothing_attachments", chance = 5000000}
},
                    lootChance = 8000000
},
{
            groups = {
                    {group = "armor_attachments", chance = 5000000},
                    {group = "clothing_attachments", chance = 5000000}
},
                    lootChance = 8000000
},
{
            groups = {
                    {group = "wearables_rare", chance = 5000000},
  		              {group = "aakuan_common", chance = 5000000}
},
                    lootChance = 8000000
},    
{
            groups = {
                    {group = "krayt_tissue_rare", chance = 10000000}
},
                    lootChance = 8000000
},
{
             groups = {
                    {group = "nge2", chance = 10000000}
},
                    lootChance = 5000000
},
{
          		groups = {
            			  {group = "apocalypse", chance = 10000000}
},
              		  lootChance = 8000000
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
          			lootChance = 6000000
},
},
  weapons = {"imperial_weapons_heavy"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/fancy",
  attacks = merge(commandomaster,marksmanmaster,fencermaster,brawlermaster,brawlermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(hydra_commander, "hydra_commander")
