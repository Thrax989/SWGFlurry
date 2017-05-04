darth_caedus = Creature:new {
	objectName = "",
	customName = "Darth Caedus",
	socialGroup = "sith_shadow",
	pvpFaction = "sith_shadow",
	faction = "sith_shadow",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1750,
	damageMax = 3750,
	baseXp = 13273,
	baseHAM = 1000000,
	baseHAMmax = 1500000,
	armor = 3,
	resists = {60,60,60,60,60,60,60,60,45},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_fs_village_enemy_mellichae.iff"},
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
                    {group = "krayt_tissue_rare", chance = 10000000}
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
                    {group = "nge2", chance = 10000000}
},
                    lootChance = 10000000
},
{
          		groups = {
                  {group = "acklays", chance = 10000000}
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
                     lootChance = 10000000
},
},
	weapons = {"dark_jedi_weapons_gen3"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster,forcepowermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(darth_caedus, "darth_caedus")
