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
	{name = "\\#FFD700 10 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bicep_l.iff", cost = {500,}},
	{name = "\\#FFD700 11 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_pants.iff", cost = {500,}},
	{name = "\\#FFD700 12 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bracer_r.iff", cost = {500,}},
	{name = "\\#FFD700 13 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_boots.iff", cost = {500,}},
	{name = "\\#FFD700 14 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_helmet.iff", cost = {500,}},
	{name = "\\#FFD700 15 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_gloves.iff", cost = {500,}},
	{name = "\\#FFD700 16 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_chest_plate.iff", cost = {500,}},
	{name = "\\#FFD700 17 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bracer_l.iff", cost = {500,}},
	{name = "\\#FFD700 18 \\#00FF00 IMPERIAL GUARD SABER \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_saber/armor_imperial_guard_saber_bicep_r.iff", cost = {500,}},
	--IMPERIAL GUard SHADOW
	{name = "\\#FFD700 19 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_bicep_l.iff", cost = {500,}},
	{name = "\\#FFD700 20 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_pants.iff", cost = {500,}},
	{name = "\\#FFD700 21 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_boots.iff", cost = {500,}},
	{name = "\\#FFD700 22 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_bracer_r.iff", cost = {500,}},
	{name = "\\#FFD700 23 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_bracer_l.iff", cost = {500,}},
	{name = "\\#FFD700 24 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_helmet.iff", cost = {500,}},
	{name = "\\#FFD700 25 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_gloves.iff", cost = {500,}},
	{name = "\\#FFD700 26 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_chest_plate.iff", cost = {500,}},
	{name = "\\#FFD700 27 \\#00FF00 IMPERIAL GUARD SHADOW \\#FFFFFF", template = "object/tangible/wearables/armor/armor_imperial_guard_shadow/armor_imperial_guard_shadow_bicep_r.iff", cost = {500,}},
	--ASSAULt TROOPER
	{name = "\\#FFD700 28 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_l.iff", cost = {500,}},
	{name = "\\#FFD700 29 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_l_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 30 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_r.iff", cost = {500,}},
	{name = "\\#FFD700 31 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bicep_r_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 32 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_boots.iff", cost = {500,}},
	{name = "\\#FFD700 33 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_boots_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 34 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_l.iff", cost = {500,}},
	{name = "\\#FFD700 35 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_l_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 36 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_r.iff", cost = {500,}},
	{name = "\\#FFD700 37 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_bracer_r_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 38 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_chest_plate.iff", cost = {500,}},
	{name = "\\#FFD700 39 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_chest_plate_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 40 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_gloves.iff", cost = {500,}},
	{name = "\\#FFD700 41 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_gloves_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 42 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_helmet.iff", cost = {500,}},
	{name = "\\#FFD700 43 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_helmet_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 44 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_leggings.iff", cost = {500,}},
	{name = "\\#FFD700 45 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_leggings_gcw.iff", cost = {500,}},
	{name = "\\#FFD700 46 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_utility_belt.iff", cost = {500,}},
	{name = "\\#FFD700 47 \\#00FF00 ASSAULT TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/assault_trooper/armor_assault_trooper_utility_belt_gcw.iff", cost = {500,}},
	--BONE ARMOR
	{name = "\\#FFD700 48 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_bicep_l.iff", cost = {500,}},
	{name = "\\#FFD700 49 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_bicep_r.iff", cost = {500,}},
	{name = "\\#FFD700 50 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_boots.iff", cost = {500,}},
	{name = "\\#FFD700 51 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_bracer_l.iff", cost = {500,}},
	{name = "\\#FFD700 52 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_bracer_r.iff", cost = {500,}},
	{name = "\\#FFD700 53 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_chest_plate.iff", cost = {500,}},
	{name = "\\#FFD700 54 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_gloves.iff", cost = {500,}},
	{name = "\\#FFD700 55 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_helmet.iff", cost = {500,}},
	{name = "\\#FFD700 56 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_bone_s01_leggings.iff", cost = {500,}},
	{name = "\\#FFD700 57 \\#00FF00 BONE \\#FFFFFF", template = "object/tangible/wearables/armor/bone/armor_smc_s01_bicep_l.iff", cost = {500,}},
	--BOUNTY HUNTER ARMOR
	{name = "\\#FFD700 58 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_belt.iff", cost = {500,}},)
	{name = "\\#FFD700 59 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_bicep_l.iff", cost = {500,}},)
	{name = "\\#FFD700 60 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_bicep_r.iff", cost = {500,}},)
	{name = "\\#FFD700 61 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_boots.iff", cost = {500,}},)
	{name = "\\#FFD700 62 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_bracer_l.iff", cost = {500,}},)
	{name = "\\#FFD700 63 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_bracer_r.iff", cost = {500,}},)
	{name = "\\#FFD700 64 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_chest_plate.iff", cost = {500,}},)
	{name = "\\#FFD700 65 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_gloves.iff", cost = {500,}},)
	{name = "\\#FFD700 66 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_helmet.iff", cost = {500,}},)
	{name = "\\#FFD700 67 \\#00FF00 BOUNTY HUNTER \\#FFFFFF", template = "object/tangible/wearables/armor/bounty_hunter/armor_bounty_hunter_leggings.iff", cost = {500,}},)
	--CHITIN ARMOR
	{name = "\\#FFD700 68 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_bicep_l", cost = {500,}},)
	{name = "\\#FFD700 69 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_bicep_r", cost = {500,}},)
	{name = "\\#FFD700 70 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_boots", cost = {500,}},)
	{name = "\\#FFD700 71 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_bracer_l", cost = {500,}},)
	{name = "\\#FFD700 72 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_bracer_r", cost = {500,}},)
	{name = "\\#FFD700 73 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_chest_plate", cost = {500,}},)
	{name = "\\#FFD700 74 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_gloves", cost = {500,}},)
	{name = "\\#FFD700 75 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_helmet", cost = {500,}},)
	{name = "\\#FFD700 76 \\#00FF00 CHITIN \\#FFFFFF", template = "object/tangible/wearables/armor/chitin/armor_chitin_s01_leggings", cost = {500,}},)
	--CLONE TROOPER ARMOR
	{name = "\\#FFD700 77 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_belt", cost = {500,}},)
	{name = "\\#FFD700 78 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bicep_l", cost = {500,}},)
	{name = "\\#FFD700 79 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bicep_r", cost = {500,}},)
	{name = "\\#FFD700 80 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_boots", cost = {500,}},)
	{name = "\\#FFD700 81 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bracer_l", cost = {500,}},)
	{name = "\\#FFD700 82 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_bracer_r", cost = {500,}},)
	{name = "\\#FFD700 83 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_chest_plate", cost = {500,}},)
	{name = "\\#FFD700 84 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_gloves", cost = {500,}},)
	{name = "\\#FFD700 85 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_helmet", cost = {500,}},)
	{name = "\\#FFD700 86 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_imperial_s01_leggings", cost = {500,}},)
	{name = "\\#FFD700 87 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_belt", cost = {500,}},)
	{name = "\\#FFD700 88 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bicep_l", cost = {500,}},)
	{name = "\\#FFD700 89 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bicep_r", cost = {500,}},)
	{name = "\\#FFD700 90 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_boots", cost = {500,}},)
	{name = "\\#FFD700 91 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bracer_l", cost = {500,}},)
	{name = "\\#FFD700 92 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_bracer_r", cost = {500,}},)
	{name = "\\#FFD700 93 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_chest_plate", cost = {500,}},)
	{name = "\\#FFD700 94 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_gloves", cost = {500,}},)
	{name = "\\#FFD700 95 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_helmet", cost = {500,}},)
	{name = "\\#FFD700 96 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_neutral_s01_leggings", cost = {500,}},)
	{name = "\\#FFD700 97 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_belt", cost = {500,}},)
	{name = "\\#FFD700 98 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_bicep_l", cost = {500,}},)
	{name = "\\#FFD700 99 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_bicep_r", cost = {500,}},)
	{name = "\\#FFD700 100 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_boots", cost = {500,}},)
	{name = "\\#FFD700 101 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_bracer_l", cost = {500,}},)
	{name = "\\#FFD700 102 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_bracer_r", cost = {500,}},)
	{name = "\\#FFD700 103 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_chest_plate", cost = {500,}},)
	{name = "\\#FFD700 104 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_gloves", cost = {500,}},)
	{name = "\\#FFD700 105 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_helmet", cost = {500,}},)
	{name = "\\#FFD700 106 \\#00FF00 CLONE TROOPER \\#FFFFFF", template = "object/tangible/wearables/armor/clone_trooper/armor_clone_trooper_rebel_s01_leggings", cost = {500,}},)
	},
}

registerScreenPlay("RisEventVendorLogic", false)
