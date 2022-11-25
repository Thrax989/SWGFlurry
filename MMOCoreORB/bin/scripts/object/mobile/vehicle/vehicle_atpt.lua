
object_mobile_vehicle_vehicle_atpt = object_mobile_vehicle_shared_vehicle_atpt:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600, -- Time in seconds per cycle
	armor = 2,

	kinetic = 50,
	energy = 50,
	electricity = 50,
	stun = 50,
	blast = 50,
	heat = 50,
	cold = 50,
	acid = 50,
	
	baseHAM = { 3000, 300, 300, 3000, 300, 300, 3000, 300, 300 },
	
	level = 300,
	
	stalker = 0,
	killer = 0,
	
	tame = 0,
	
	meatType = "",
	boneType = "",
	hideType = "",
	
	milk = 0,
	hideMax = 0,
	boneMax = 0,
	meatMax = 0,
	
	ferocity = 0
}
ObjectTemplates:addTemplate(object_mobile_vehicle_vehicle_atpt, "object/mobile/vehicle/vehicle_atpt.iff")