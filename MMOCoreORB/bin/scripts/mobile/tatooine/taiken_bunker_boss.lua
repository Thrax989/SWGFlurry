taiken_bunker_boss = Creature:new {
  customName = "<<< Battle Master Helix >>>",
  socialGroup = "geonosian",
  level = 300,
  chanceHit = 100.00,
  damageMin = 2000,
  damageMax = 3000,
  specialDamageMult = 3.0,
  baseXp = 0,
  baseHAM = 1500000,
  baseHAMmax = 1500000,
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

  templates = {
    "object/mobile/dressed_lord_nyax.iff"},
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
  				          {group = "wearables_rare", chance = 5000000},
  				          {group = "aakuan_common", chance = 5000000}

},
  			            lootChance = 10000000
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
                    {group = "axkva_min", chance = 10000000}
},
                    lootChance = 8000000
},
{
    			  groups = {
      				      {group = "av_21_pp", chance = 10000000}
},
    			          lootChance = 5000000
},
{
            groups = {
                    {group = "krayt_tissue_rare", chance = 10000000}
},
                    lootChance = 10000000
},
{
            groups = {
                    {group = "looted_container", chance = 10000000}
},
                    lootChance = 10000000
},
{
             groups = {
                    {group = "nge2", chance = 10000000}
},
                    lootChance = 10000000
},
{
          		groups = {
            			{group = "skill_buffs", chance = 10000000}
},
              		        lootChance = 10000000
},
{
             groups = {
                     {group = "theme_park_reward_imperial_kaja", chance = 10000000}
},
                     lootChance = 10000000
},
{
             groups = {
                     {group = "saberhand27", chance = 10000000}
},
                     lootChance = 5000000
},
{
             groups = {
                     {group = "saberhand27", chance = 10000000}
},
                     lootChance = 5000000
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
  weapons = {"dark_trooper_weapons"},
  conversationTemplate = "",
  reactionStf = "@npc_reaction/fancy",
  attacks = merge(fencermaster,riflemanmaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(taiken_bunker_boss, "taiken_bunker_boss")
