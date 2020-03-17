--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_weapon_ranged_carbine_carbine_bothan_bola_generic = object_weapon_ranged_carbine_shared_carbine_bothan_bola_generic:new {
	
	playerRaces = { "object/creature/player/abyssin_male.iff",
				"object/creature/player/abyssin_female.iff",
				"object/mobile/vendor/abyssin_male.iff",
				"object/mobile/vendor/abyssin_female.iff",
				"object/creature/player/aqualish_male.iff",
				"object/creature/player/aqualish_female.iff",
				"object/mobile/vendor/aqualish_male.iff",
				"object/mobile/vendor/aqualish_female.iff",
				"object/creature/player/arcona_male.iff",
				"object/creature/player/arcona_female.iff",
				"object/mobile/vendor/arcona_male.iff",
				"object/mobile/vendor/arcona_female.iff",
				"object/creature/player/bith_male.iff",
				"object/creature/player/bith_female.iff",
				"object/mobile/vendor/bith_male.iff",
				"object/mobile/vendor/bith_female.iff",
				"object/creature/player/bothan_male.iff",
				"object/creature/player/bothan_female.iff",
				"object/mobile/vendor/bothan_male.iff",
				"object/mobile/vendor/bothan_female.iff",
				"object/creature/player/cerean_male.iff",
				"object/creature/player/cerean_female.iff",
				"object/mobile/vendor/cerean_male.iff",
				"object/mobile/vendor/cerean_female.iff",
				"object/creature/player/chadra_fan_male.iff",
				"object/creature/player/chadra_fan_female.iff",
				"object/mobile/vendor/chadra_fan_male.iff",
				"object/mobile/vendor/chadra_fan_female.iff",
				"object/creature/player/chiss_male.iff",
				"object/creature/player/chiss_female.iff",
				"object/mobile/vendor/chiss_male.iff",
				"object/mobile/vendor/chiss_female.iff",
				"object/creature/player/devaronian_male.iff",
				"object/creature/player/devaronian_female.iff",
				"object/mobile/vendor/devaronian_male.iff",
				"object/mobile/vendor/devaronian_female.iff",
				"object/creature/player/droid_male.iff",
				"object/creature/player/droid_female.iff",
				"object/mobile/vendor/droid_male.iff",
				"object/mobile/vendor/droid_female.iff",
				"object/creature/player/dug_male.iff",
				"object/creature/player/dug_female.iff",
				"object/mobile/vendor/dug_male.iff",
				"object/mobile/vendor/dug_female.iff",
				"object/creature/player/duros_male.iff",
				"object/creature/player/duros_female.iff",
				"object/mobile/vendor/duros_male.iff",
				"object/mobile/vendor/duros_female.iff",
				"object/creature/player/ewok_male.iff",
				"object/creature/player/ewok_female.iff",
				"object/mobile/vendor/ewok_male.iff",
				"object/mobile/vendor/ewok_female.iff",
				"object/creature/player/feeorin_male.iff",
				"object/creature/player/feeorin_female.iff",
				"object/mobile/vendor/feeorin_male.iff",
				"object/mobile/vendor/feeorin_female.iff",
				"object/creature/player/geonosian_male.iff",
				"object/creature/player/geonosian_female.iff",
				"object/mobile/vendor/geonosian_male.iff",
				"object/mobile/vendor/geonosian_female.iff",
				"object/creature/player/gotal_male.iff",
				"object/creature/player/gotal_female.iff",
				"object/mobile/vendor/gotal_male.iff",
				"object/mobile/vendor/gotal_female.iff",
				"object/creature/player/gran_male.iff",
				"object/creature/player/gran_female.iff",
				"object/mobile/vendor/gran_male.iff",
				"object/mobile/vendor/gran_female.iff",
				"object/creature/player/gungan_male.iff",
				"object/creature/player/gungan_female.iff",
				"object/mobile/vendor/gungan_male.iff",
				"object/mobile/vendor/gungan_female.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/mobile/vendor/human_male.iff",
				"object/mobile/vendor/human_female.iff",
				"object/creature/player/hutt_male.iff",
				"object/creature/player/hutt_female.iff",
				"object/mobile/vendor/hutt_male.iff",
				"object/mobile/vendor/hutt_female.iff",
				"object/creature/player/iktotchi_male.iff",
				"object/creature/player/iktotchi_female.iff",
				"object/mobile/vendor/iktotchi_male.iff",
				"object/mobile/vendor/iktotchi_female.iff",
				"object/creature/player/ishi_tib_male.iff",
				"object/creature/player/ishi_tib_female.iff",
				"object/mobile/vendor/ishi_tib_male.iff",
				"object/mobile/vendor/ishi_tib_female.iff",
				"object/creature/player/ithorian_male.iff",
				"object/creature/player/ithorian_female.iff",
				"object/mobile/vendor/ithorian_male.iff",
				"object/mobile/vendor/ithorian_female.iff",
				"object/creature/player/jenet_male.iff",
				"object/creature/player/jenet_female.iff",
				"object/mobile/vendor/jenet_male.iff",
				"object/mobile/vendor/jenet_female.iff",
				"object/creature/player/kel_dor_male.iff",
				"object/creature/player/kel_dor_female.iff",
				"object/mobile/vendor/kel_dor_male.iff",
				"object/mobile/vendor/kel_dor_female.iff",
				"object/creature/player/kubaz_male.iff",
				"object/creature/player/kubaz_female.iff",
				"object/mobile/vendor/kubaz_male.iff",
				"object/mobile/vendor/kubaz_female.iff",
				"object/creature/player/moncal_male.iff",
				"object/creature/player/moncal_female.iff",
				"object/mobile/vendor/moncal_male.iff",
				"object/mobile/vendor/moncal_female.iff",
				"object/creature/player/nautolan_male.iff",
				"object/creature/player/nautolan_female.iff",
				"object/mobile/vendor/nautolan_male.iff",
				"object/mobile/vendor/nautolan_female.iff",
				"object/creature/player/nightsister_male.iff",
				"object/creature/player/nightsister_female.iff",
				"object/mobile/vendor/nightsister_male.iff",
				"object/mobile/vendor/nightsister_female.iff",
				"object/creature/player/nikto_male.iff",
				"object/creature/player/nikto_female.iff",
				"object/mobile/vendor/nikto_male.iff",
				"object/mobile/vendor/nikto_female.iff",
				"object/creature/player/ortolan_male.iff",
				"object/creature/player/ortolan_female.iff",
				"object/mobile/vendor/ortolan_male.iff",
				"object/mobile/vendor/ortolan_female.iff",
				"object/creature/player/quarren_male.iff",
				"object/creature/player/quarren_female.iff",
				"object/mobile/vendor/quarren_male.iff",
				"object/mobile/vendor/quarren_female.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/rodian_female.iff",
				"object/mobile/vendor/rodian_male.iff",
				"object/mobile/vendor/rodian_female.iff",
				"object/creature/player/sanyassan_male.iff",
				"object/creature/player/sanyassan_female.iff",
				"object/mobile/vendor/sanyassan_male.iff",
				"object/mobile/vendor/sanyassan_female.iff",
				"object/creature/player/smc_male.iff",
				"object/creature/player/smc_female.iff",
				"object/mobile/vendor/smc_male.iff",
				"object/mobile/vendor/smc_female.iff",
				"object/creature/player/sullustan_male.iff",
				"object/creature/player/sullustan_female.iff",
				"object/mobile/vendor/sullustan_male.iff",
				"object/mobile/vendor/sullustan_female.iff",
				"object/creature/player/talz_male.iff",
				"object/creature/player/talz_female.iff",
				"object/mobile/vendor/talz_male.iff",
				"object/mobile/vendor/talz_female.iff",
				"object/creature/player/togorian_male.iff",
				"object/creature/player/togorian_female.iff",
				"object/mobile/vendor/togorian_male.iff",
				"object/mobile/vendor/togorian_female.iff",
				"object/creature/player/togruta_male.iff",
				"object/creature/player/togruta_female.iff",
				"object/mobile/vendor/togruta_male.iff",
				"object/mobile/vendor/togruta_female.iff",
				"object/creature/player/toydarian_male.iff",
				"object/creature/player/toydarian_female.iff",
				"object/mobile/vendor/toydarian_male.iff",
				"object/mobile/vendor/toydarian_female.iff",
				"object/creature/player/trandoshan_male.iff",
				"object/creature/player/trandoshan_female.iff",
				"object/mobile/vendor/trandoshan_male.iff",
				"object/mobile/vendor/trandoshan_female.iff",
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/mobile/vendor/twilek_male.iff",
				"object/mobile/vendor/twilek_female.iff",
				"object/creature/player/weequay_male.iff",
				"object/creature/player/weequay_female.iff",
				"object/mobile/vendor/weequay_male.iff",
				"object/mobile/vendor/weequay_female.iff",
				"object/creature/player/wookiee_male.iff",
				"object/creature/player/wookiee_female.iff",
				"object/mobile/vendor/wookiee_male.iff",
				"object/mobile/vendor/wookiee_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" ,
				"object/mobile/vendor/zabrak_male.iff",
				"object/mobile/vendor/zabrak_female.iff" },

	-- RANGEDATTACK, MELEEATTACK, FORCEATTACK, TRAPATTACK, GRENADEATTACK, HEAVYACIDBEAMATTACK,
	-- HEAVYLIGHTNINGBEAMATTACK, HEAVYPARTICLEBEAMATTACK, HEAVYROCKETLAUNCHERATTACK, HEAVYLAUNCHERATTACK
	attackType = RANGEDATTACK,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, FORCE, LIGHTSABER
	damageType = ENERGY,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = NONE,

	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- combat_meleespecialize_twohandlightsaber, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "combat_rangedspecialize_carbine",

	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_carbine_cdef" },
	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "carbine_accuracy" },

	creatureAimModifiers = { "carbine_aim", "aim" },

	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "ranged_defense" },

	-- Leave as "dodge" for now, may have additions later
	defenderSecondaryDefenseModifiers = { "counterattack" },

	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "carbine_speed" },

	-- Leave blank for now
	damageModifiers = { },


	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 0,
	actionAttackCost = 0,
	mindAttackCost = 0,
	forceCost = 0,

	pointBlankRange = 0,
	pointBlankAccuracy = 100,

	idealRange = 50,
	idealAccuracy = 100,

	maxRange = 200,
	maxRangeAccuracy = 100,

	minDamage = 3000,
	maxDamage = 4000,

	attackSpeed = 1,

	woundsRatio = 80,

	numberExperimentalProperties = {1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2},
	experimentalProperties = {"XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "XX", "XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "expEffeciency", "exp_durability", "null", "null", "null", "expRange", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "roundsused", "hitpoints", "zerorangemod", "maxrangemod", "midrange", "midrangemod", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 17, 35, 4.6, 4, 5, 750, 0, -80, 35, 35, 10, 22, 10},
	experimentalMax = {0, 0, 32, 65, 3.2, 5, 20, 1500, 0, -80, 35, 65, 7, 15, 7},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_ranged_carbine_carbine_bothan_bola_generic, "object/weapon/ranged/carbine/carbine_bothan_bola_generic.iff")
