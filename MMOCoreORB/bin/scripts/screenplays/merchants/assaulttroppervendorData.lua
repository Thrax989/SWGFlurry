assaulttrooperVendorLogic = VendorLogic:new {
	scriptName = "assaulttrooperVendorLogic",
	currencies = {
	--For Tokens: Displayed Name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
		{currency = "token", name = "Community Token", template = "object/tangible/loot/token/event_token.iff", ScreenPlayDataString = "vendorToken", ScreenPlayDataKey = "event_token"},
	},
	--Displayed Name, full template string (without shared_), cost in {}, use the same structure as currencies
	merchandise = {
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_l.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_r.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_boots.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_l.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_r.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_chest_plate.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_gloves.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_helmet.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_leggings.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_utility_belt.iff", cost = {100,}},
	},
}

registerScreenPlay("assaulttrooperVendorLogic", false)
