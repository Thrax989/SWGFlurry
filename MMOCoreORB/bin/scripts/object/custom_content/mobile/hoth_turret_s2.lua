object_mobile_hoth_turret_s2 = object_mobile_shared_hoth_turret_s2:new {
	pvpStatusBitmask = ATTACKABLE,
	optionsBitmask = 0,
	maxCondition = 300000,
	zoneComponent = "TurretZoneComponent",
	dataObjectComponent = "TurretDataComponent",
	-- Damagetypes in WeaponObject
	vulnerability = BLAST + LIGHTSABER,
	-- LIGHT, MEDIUM, HEAVY
	rating = HEAVY,

	kinetic = 80,
	energy = 95,
	electricity = 80,
	stun = 100,
	blast = -1,
	heat = 80,
	cold = 80,
	acid = 80,
	lightSaber = -1,
	chanceHit = 4,
	weapon = "object/weapon/ranged/turret/turret_block_large.iff",
}

ObjectTemplates:addTemplate(object_mobile_hoth_turret_s2, "object/mobile/hoth_turret_s2.iff")
