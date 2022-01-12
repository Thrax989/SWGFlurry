mandoVendorLogic = VendorLogic:new {
	scriptName = "mandoVendorLogic",
	currencies = {
	--For Tokens: Displayed Name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
		{currency = "token", name = "Community Token", template = "object/tangible/loot/token/event_token.iff", ScreenPlayDataString = "vendorToken", ScreenPlayDataKey = "event_token"},
	},
	--Displayed Name, full template string (without shared_), cost in {}, use the same structure as currencies
	merchandise = {
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_belt.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_bicep_l.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_bicep_r.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_bracer_l.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_bracer_r.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_chest_plate.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_gloves.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_helmet.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_leggings.iff", cost = {100,}},
	{name = "", template = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_shoes.iff", cost = {100,}},
	},
}

registerScreenPlay("mandoVendorLogic", false)
