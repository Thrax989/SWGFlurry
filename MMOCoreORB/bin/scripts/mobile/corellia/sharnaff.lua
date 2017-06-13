sharnaff = Creature:new {
	objectName = "@mob/creature_names:sharnaff",
	socialGroup = "sharnaff",
	faction = "",
	level = 31,
	chanceHit = 0.38,
	damageMin = 300,
	damageMax = 310,
	baseXp = 3005,
	baseHAM = 8600,
	baseHAMmax = 10600,
	armor = 0,
	resists = {15,15,15,120,120,120,120,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_scaley",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milkType = "milk_wild",
	milk = 500,
	tamingChance = 0.25,
	ferocity = 2,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/sharnaff.iff"},
	lootGroups = {
		{
			groups = {
				{group = "sharnaff_common", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(sharnaff, "sharnaff")
