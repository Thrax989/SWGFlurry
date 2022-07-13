RisEventVendorLogic = VendorLogic:new {
	scriptName = "RisEventVendorLogic",
	currencies = {
	--For Tokens: Displayed Name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
		{currency = "token", name = "Community Token", template = "object/tangible/loot/misc/vendor_token.iff", ScreenPlayDataString = "vendorToken", ScreenPlayDataKey = "event_token"},
	},
	--Displayed Name, full template string (without shared_), cost in {}, use the same structure as currencies
	merchandise = {
	--RIS ARMOR SET
	{name = "\\#FFD700 1 \\#00FF00 RIS L Bicep \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_bicep_l.iff", cost = {500,}},
	{name = "\\#FFD700 2 \\#00FF00 RIS R Bicep \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_bicep_r.iff", cost = {500,}},
	{name = "\\#FFD700 3 \\#00FF00 RIS Boots \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_boots.iff", cost = {500,}},
	{name = "\\#FFD700 4 \\#00FF00 RIS L Bracer \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_bracer_l.iff", cost = {500,}},
	{name = "\\#FFD700 5 \\#00FF00 RIS R Bracer \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_bracer_r.iff", cost = {500,}},
	{name = "\\#FFD700 6 \\#00FF00 RIS Chest Plate \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_chest_plate.iff", cost = {1000,}},
	{name = "\\#FFD700 7 \\#00FF00 RIS Gloves \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_gloves.iff", cost = {500,}},
	{name = "\\#FFD700 8 \\#00FF00 RIS Helmet \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_helmet.iff", cost = {500,}},
	{name = "\\#FFD700 9 \\#00FF00 RIS Leggings \\#FFFFFF", template = "object/tangible/wearables/armor/ris/armor_ris_leggings.iff", cost = {500,}},
	--IMPERIAL GUARD SABER ARMOR
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bicep_l.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_pants.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bracer_r.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_boots.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_helmet.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_gloves.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_chest_plate.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bracer_l.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bicep_r.iff", cost = {500,}},
	--IMPERIAL GUard SHADOW
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_bicep_l.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_pants.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_boots.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_bracer_r.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_bracer_l.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_helmet.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_gloves.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_chest_plate.iff", cost = {500,}},
	{name = "\\#FFD700 1 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_bicep_r.iff", cost = {500,}},




	},
}

registerScreenPlay("RisEventVendorLogic", false)
