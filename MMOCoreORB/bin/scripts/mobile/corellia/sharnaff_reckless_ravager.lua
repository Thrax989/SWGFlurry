sharnaff_reckless_ravager = Creature:new {
	objectName = "@mob/creature_names:sharnaff_reckless_ravager",
	socialGroup = "sharnaff",
	faction = "",
	level = 34,
	chanceHit = 0.41,
	damageMin = 315,
	damageMax = 340,
	baseXp = 3460,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {115,115,20,120,120,120,120,120,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_scaley",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 8,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/sharnaff_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/sharnaff_hue.iff",
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
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(sharnaff_reckless_ravager, "sharnaff_reckless_ravager")
