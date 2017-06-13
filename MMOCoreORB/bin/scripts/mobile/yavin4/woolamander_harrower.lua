woolamander_harrower = Creature:new {
	objectName = "@mob/creature_names:woolamander_harrower",
	socialGroup = "woolamander",
	faction = "",
	level = 51,
	chanceHit = 0.51,
	damageMin = 400,
	damageMax = 510,
	baseXp = 5007,
	baseHAM = 10000,
	baseHAMmax = 13000,
	armor = 0,
	resists = {135,135,-1,160,160,160,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_wooly",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/woolamander_hue.iff"},
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "harrower_bone", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareapoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(woolamander_harrower, "woolamander_harrower")
