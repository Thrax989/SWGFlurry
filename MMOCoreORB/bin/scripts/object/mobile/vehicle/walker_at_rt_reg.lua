
object_mobile_vehicle_walker_at_rt_reg = object_mobile_vehicle_shared_walker_at_rt_reg:new {
	templateType = VEHICLE,
	decayRate = 30, -- Damage tick per decay cycle
	decayCycle = 60, -- Time in seconds per cycle
	
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
ObjectTemplates:addTemplate(object_mobile_vehicle_walker_at_rt_reg, "object/mobile/vehicle/walker_at_rt_reg.iff")
