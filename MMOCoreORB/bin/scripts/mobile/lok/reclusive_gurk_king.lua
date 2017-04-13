reclusive_gurk_king = Creature:new {
	objectName = "@mob/creature_names:recluse_gurk_king",
	socialGroup = "gurk",
	faction = "",
	level = 300,
	chanceHit = 100.0,
	damageMin = 2000,
	damageMax = 5000,
	baseXp = 0,
	baseHAM = 1000000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {80,80,80,80,80,80,80,80,75},
	meatType = "meat_herbivore",
	meatAmount = 300,
	hideType = "hide_leathery",
	hideAmount = 275,
	boneType = "bone_mammal",
	boneAmount = 300,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.5,

	templates = {"object/mobile/recluse_gurk_king.iff"},
	lootGroups = {
{
	        groups = {
			{group = "gurk_king_common", chance = 10000000}
},
			lootChance = 10000000
},
{
	        groups = {
			{group = "gurk_king_common", chance = 10000000}
},
			lootChance = 10000000
},
{
	        groups = {
			{group = "rancor_common", chance = 10000000}
},
			lootChance = 10000000
},
{
	        groups = {
			{group = "rancor_common", chance = 10000000}
},
			lootChance = 10000000
},
{
	        groups = {
			{group = "giant_dune_kimo_common", chance = 10000000}
},
			lootChance = 10000000
},
{
	        groups = {
			{group = "giant_dune_kimo_common", chance = 10000000}
},
			lootChance = 10000000
},
{
	        groups = {
			{group = "krayt_dragon_common2", chance = 10000000}
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
},
	weapons = {"creature_spit_heavy_flame"},
	reactionStf = "@npc_reaction/slang",
	attacks = {
		{"creatureareacombo","StateAccuracyBonus=100"},
		{"creatureareaknockdown","StateAccuracyBonus=100"},
		{"knockdownattack","KnockdownChance=100"},
		{"creatureareaknockdown","KnockdownChance=100"},
		{"dizzyattack","DizzyChance=100"},
		{"stunattack","StunChance=100"},
		{"intimidationattack","IntimidationChance=100"},
		{"creatureareapoison","PoisonChance=100"},
		{"strongpoison","PoisonChance=100"},
    		{"strongdisease","DiseaseChance=100"},
		{"creatureareaattack","StateAccuracyBonus=100"},
    		{"creatureareadisease","DiseaseChance=100"},
    		{"creatureareableeding","BleedChance=100"}
}
}

CreatureTemplates:addCreatureTemplate(reclusive_gurk_king, "reclusive_gurk_king")
