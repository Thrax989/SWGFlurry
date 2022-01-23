--Copyright (C) 2007 <SWGEmu>

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
--which carries forward this exception.

-----------------------------------
--GENERAL PLAYER SETTINGS
-----------------------------------

onlineCharactersPerAccount = 1 --How many characters are allowed online from a single account.
allowSameAccountPvpRatingCredit = 0

--Blue frog / GM buff values
performanceBuff = 0
medicalBuff = 0
performanceDuration = 0 -- in seconds
medicalDuration = 0 -- in seconds

--Sets the experience multiplier while grouped
groupExpMultiplier = 1.2

--Sets a global experience multiplier
globalExpMultiplier = 1.0

--Sets the base number of control devices of each type that a player can have in their datapad at once
--For creature pets, A Creature Handler will have the base number + their stored pets skill mod as limit
baseStoredCreaturePets = 2
baseStoredFactionPets = 3
baseStoredDroids = 5
baseStoredVehicles = 3
baseStoredShips = 3
-----------------------------------
--VETERAN REWARDS CONFIG
-----------------------------------
veteranRewardMilestones = {0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110, 115, 120, 150, 180, 210, 240, 270, 300, 330, 360, 365, 450, 540, 630, 720, 810, 900, 990, 1080} --days, must be sorted low to high

veteranRewardAdditionalMilestones = 365 --frequency, in days, of additional milestones (beyond the established ones)

veteranRewards = {

		-- 1 Day Rewards
		{templateFile = "object/tangible/item/loot_crates/base_crate_01.iff", milestone=0, oneTime=true, description="New Player Crate"},
		{templateFile = "object/tangible/item/loot_crates/diamond_crate.iff", milestone=0, oneTime=false, description="Diamond Crate"},
		{templateFile = "object/tangible/item/loot_crates/plat_crate.iff", milestone=0, oneTime=false, description="Platinum Crate"},
		{templateFile = "object/tangible/item/loot_crates/gold_crate.iff", milestone=0, oneTime=false, description="Gold Crate"},
		{templateFile = "object/tangible/item/loot_crates/silver_crate.iff", milestone=0, oneTime=false, description="Silver Crate"},
		{templateFile = "object/tangible/item/loot_crates/xmas_crate.iff", milestone=0, oneTime=true, description="Xmas Crate"},
		{templateFile = "object/tangible/item/loot_crates/xmas_coal.iff", milestone=0, oneTime=true, description="Xmas Coal"},

		-- 5 Day Rewards
		{templateFile = "object/tangible/tcg/series1/consumable_hans_hydrospanner.iff", milestone=5, oneTime=false, description="Hans hydrospanner"},
		{templateFile = "object/tangible/tcg/series1/consumable_keelkana_tooth.iff", milestone=5, oneTime=false, description="Keelkana tooth"},
		{templateFile = "object/tangible/tcg/series1/consumable_lepese_dictionary.iff", milestone=5, oneTime=false, description="Lepese dictionary"},
		{templateFile = "object/tangible/tcg/series1/consumable_mandalorian_strongbox.iff", milestone=5, oneTime=false, description="Mandalorian strongbox"},
		{templateFile = "object/tangible/tcg/series1/consumable_nuna_ball_advertisement.iff", milestone=5, oneTime=false, description="Nuna Ball Adevertisement"},
		-- 10 Day Rewards
		{templateFile = "object/tangible/tcg/series1/consumable_radtrooper_badge.iff", milestone=10, oneTime=false, description="Radtrooper badge"},
		{templateFile = "object/tangible/tcg/series1/consumable_versafunction88_datapad.iff", milestone=10, oneTime=false, description="Versafunction88 datpad"},
		{templateFile = "object/tangible/tcg/series1/decorative_bas_relief.iff", milestone=10, oneTime=false, description="Bas relief"},
		{templateFile = "object/tangible/tcg/series1/decorative_chon_bust.iff", milestone=10, oneTime=false, description="Chon bust"},
		{templateFile = "object/tangible/tcg/series1/decorative_computer_console_01.iff", milestone=10, oneTime=false, description="Computer console 01"},
		-- 15 Day Rewards
		{templateFile = "object/tangible/tcg/series1/decorative_computer_console_02.iff", milestone=15, oneTime=false, description="Computer console 02"},
		{templateFile = "object/tangible/tcg/series1/decorative_display_case_01.iff", milestone=15, oneTime=false, description="Display case 01"},
		{templateFile = "object/tangible/tcg/series1/decorative_display_case_02.iff", milestone=15, oneTime=false, description="Display case 02"},
		{templateFile = "object/tangible/tcg/series1/decorative_dooku_bust.iff", milestone=15, oneTime=false, description="Dooku bust"},
		{templateFile = "object/tangible/tcg/series1/decorative_drink_dispenser.iff", milestone=15, oneTime=false, description="Drink dispenser"},
		-- 20 Day Rewards
		{templateFile = "object/tangible/tcg/series1/decorative_fish_tank.iff", milestone=20, oneTime=false, description="Fish tank"},
		{templateFile = "object/tangible/tcg/series1/decorative_indoor_fountain_01.iff", milestone=20, oneTime=false, description="Indoor fountain 01"},
		{templateFile = "object/tangible/tcg/series1/decorative_indoor_fountain_02.iff", milestone=20, oneTime=false, description="Indoor fountain 02"},
		{templateFile = "object/tangible/tcg/series1/decorative_indoor_garden_01.iff", milestone=20, oneTime=false, description="Indoor garden 01"},
		{templateFile = "object/tangible/tcg/series1/decorative_indoor_garden_02.iff", milestone=20, oneTime=false, description="Indoor garden 02"},
		-- 25 Day Rewards
		{templateFile = "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", milestone=25, oneTime=false, description="Jedi library bookshelf"},
		{templateFile = "object/tangible/tcg/series1/decorative_painting_alliance_propaganda.iff", milestone=25, oneTime=false, description="Painting allaince propaganda"},
		{templateFile = "object/tangible/tcg/series1/decorative_painting_darth_vader.iff", milestone=25, oneTime=false, description="Painting darth vader"},
		{templateFile = "object/tangible/tcg/series1/decorative_painting_imperial_propaganda.iff", milestone=25, oneTime=false, description="Painting imperial propaganda"},
		{templateFile = "object/tangible/tcg/series1/decorative_painting_jedi_crest.iff", milestone=25, oneTime=false, description="Painting jedi crest"},
		-- 30 Day Rewards
		{templateFile = "object/tangible/tcg/series1/decorative_painting_trooper.iff", milestone=30, oneTime=false, description="Painitng trooper"},
		{templateFile = "object/tangible/tcg/series1/decorative_statuette_darth_vader.iff", milestone=30, oneTime=false, description="Statuette darth vader"},
		{templateFile = "object/tangible/tcg/series1/decorative_statuette_princess_leia.iff", milestone=30, oneTime=false, description="Statuette princess leia"},
		{templateFile = "object/tangible/tcg/series5/furniture_tie_fighter_chair.iff", milestone=30, oneTime=false, description="Tie fighter chair"},
		{templateFile = "object/tangible/tcg/series6/combine_object_battle_droid_statuette.iff", milestone=30, oneTime=false, description="Battle droid statuette"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s1.iff", milestone=30, oneTime=false, description="@veteran_new:dataterminal1"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s2.iff", milestone=30, oneTime=false, description="@veteran_new:dataterminal2"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s3.iff", milestone=30, oneTime=false, description="@veteran_new:dataterminal3"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s4.iff", milestone=30, oneTime=false, description="@veteran_new:dataterminal4"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_protocol_droid_toy.iff", milestone=30, oneTime=false, description="@veteran_new:mini_protocoldroid"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_r2_toy.iff", milestone=30, oneTime=false, description="@veteran_new:mini_r2"},
		-- 35 Day Rewards
		{templateFile = "object/tangible/tcg/series6/combine_object_hk47_mustafar_diorama.iff", milestone=35, oneTime=false, description="Mustafar hk47 diorama"},
		{templateFile = "object/tangible/tcg/series6/combine_object_hk_droids_poster.iff", milestone=35, oneTime=false, description="Hk droids poster"},
		{templateFile = "object/tangible/tcg/series6/consumable_ponda_baba_arm.iff", milestone=35, oneTime=false, description="Ponda baby arm"},
		{templateFile = "object/tangible/tcg/series6/decorative_baby_colo_claw_fish.iff", milestone=35, oneTime=false, description="Baby colo claw fish"},
		{templateFile = "object/tangible/tcg/series1/house_capacity_beru_whitesuns_cookbook.iff", milestone=35, oneTime=false, description="House capacity beru whitesuns cookbook"},
		-- 40 Day Rewards
		{templateFile = "object/tangible/tcg/series1/house_capacity_housecleaning_kit.iff", milestone=40, oneTime=false, description="House capacity housecleaning kit"},
		{templateFile = "object/tangible/tcg/series1/house_capacity_organizational_datapad.iff", milestone=40, oneTime=false, description="House capacity organizational datapad"},
		{templateFile = "object/tangible/tcg/series1/reuseable_buff_item_gorax_ear.iff", milestone=40, oneTime=false, description="Buff item gorax ear"},
		{templateFile = "object/tangible/tcg/series1/reuseable_buff_item_morgukai_shadow_scroll.iff", milestone=40, oneTime=false, description="Buff item morgukai shadow scroll"},
		{templateFile = "object/tangible/tcg/series1/reuseable_buff_item_sanyassan_skull.iff", milestone=40, oneTime=false, description="Buff item sanyassan skull"},
		-- 45 Day Rewards
		{templateFile = "object/tangible/tcg/series1/reuseable_buff_item_tusken_talisman.iff", milestone=45, oneTime=false, description="Buff item tusken talisman"},
		{templateFile = "object/tangible/tcg/series1/target_creature_deed.iff", milestone=45, oneTime=false, description="Creature deed"},
		{templateFile = "object/tangible/tcg/series6/decorative_house_lamp.iff", milestone=45, oneTime=false, description="House lamp"},
		{templateFile = "object/tangible/tcg/series6/decorative_baby_colo_claw_fishtank.iff", milestone=45, oneTime=false, description="Baby colo claw fishtank"},
		-- 50 Day Rewards
		{templateFile = "object/tangible/tcg/series6/decorative_jabba_bed.iff", milestone=50, oneTime=false, description="Jabba bed"},
		{templateFile = "object/tangible/tcg/series6/dewback_armor_statue.iff", milestone=50, oneTime=false, description="Armor dewback statue"},
		{templateFile = "object/tangible/tcg/series6/diorama_han_greedo.iff", milestone=50, oneTime=false, description="Diorama han and greedo"},
		{templateFile = "object/tangible/tcg/series1/video_game_table.iff", milestone=50, oneTime=false, description="Video game table"},
		{templateFile = "object/tangible/tcg/series1/wearable_arc170_flightsuit.iff", milestone=50, oneTime=false, description="Arc170 flightsuit"},
		-- 55 Day Rewards
		{templateFile = "object/tangible/tcg/series1/wearable_black_corset_dress.iff", milestone=55, oneTime=false, description="Black corset dress"},
		{templateFile = "object/tangible/tcg/series1/wearable_glowing_blue_eyes.iff", milestone=55, oneTime=false, description="Glowing blue eyes"},
		{templateFile = "object/tangible/tcg/series1/wearable_glowing_red_eyes.iff", milestone=55, oneTime=false, description="Glowing red eyes"},
		{templateFile = "object/tangible/tcg/series1/wearable_imperial_flightsuit.iff", milestone=55, oneTime=false, description="Imperial flightsuit"},
		{templateFile = "object/tangible/tcg/series1/wearable_naboo_jacket.iff", milestone=55, oneTime=false, description="Naboo jacket"},
		-- 60 Day Rewards
		{templateFile = "object/tangible/tcg/series1/wearable_orange_flightsuit.iff", milestone=60, oneTime=false, description="Rrange flightsuit"},
		{templateFile = "object/tangible/tcg/series1/wearable_orange_flightsuit.iff", milestone=60, oneTime=false, description="Orange flightsuit"},
		{templateFile = "object/tangible/tcg/series3/combine_object_boba_fett_statue.iff", milestone=60, oneTime=false, description="Boba fett statue"},
		{templateFile = "object/tangible/tcg/series3/combine_object_jango_fett_memorial_statue.iff", milestone=60, oneTime=false, description="Jango fett memorial statue"},
		{templateFile = "object/tangible/tcg/series3/combine_object_mandalorian_skull_banner.iff", milestone=60, oneTime=false, description="Mandalorian skull banner"},
		{templateFile = "object/tangible/veteran_reward/frn_couch_falcon_corner_s01.iff", milestone=60, oneTime=false, description="@veteran_new:falconcouch"},
		{templateFile = "object/tangible/veteran_reward/frn_couch_falcon_section_s01.iff", milestone=60, oneTime=false, description="@veteran_new:falconchair"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_tie_fighter_toy.iff", milestone=60, oneTime=false, description="@veteran_new:mini_tiefighter"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_x_wing_toy.iff", milestone=60, oneTime=false, description="@veteran_new:mini_xwing"},
		-- 65 Day Rewards
		{templateFile = "object/tangible/tcg/series3/combine_object_merr_sonn_jt12_jetpack_blueprints.iff", milestone=65, oneTime=false, description="Merr sonn jt12 jetpack blueprints"},
		{templateFile = "object/tangible/tcg/series3/consumable_general_grievous_gutsack.iff", milestone=65, oneTime=false, description="General grievous gutsack"},
		{templateFile = "object/tangible/tcg/series3/consumable_hh_15_torpedo_warhead.iff", milestone=65, oneTime=false, description="Hh 15 torpedo warhead"},
		{templateFile = "object/tangible/tcg/series3/consumable_wookiee_ceremonial_pipe.iff", milestone=65, oneTime=false, description="Wookie ceremonial pipe"},
		{templateFile = "object/tangible/tcg/series3/decorative_boba_fett_statue.iff", milestone=65, oneTime=false, description="Boba fett statue"},
		-- 70 Day Rewards
		{templateFile = "object/tangible/tcg/series3/decorative_darth_vader_obi_wan_diorama.iff", milestone=75, oneTime=false, description="Darth vader obi wan diorama"},
		{templateFile = "object/tangible/tcg/series3/decorative_empal_surecon_center_medical_table.iff", milestone=75, oneTime=false, description="Surecon center medical table"},
		{templateFile = "object/tangible/tcg/series3/decorative_emperor_palpatine_statuette.iff", milestone=75, oneTime=false, description="Emperor palpatine statuette"},
		{templateFile = "object/tangible/tcg/series3/decorative_hoth_travel_advertisement.iff", milestone=75, oneTime=false, description="Hot trvel adertisement"},
		{templateFile = "object/tangible/tcg/series3/decorative_jango_fett_memorial_statue.iff", milestone=75, oneTime=false, description="Jango fett memorial statue"},
		-- 75 Day Rewards
		{templateFile = "object/tangible/tcg/series3/decorative_mandalorian_skull_banner.iff", milestone=75, oneTime=false, description="Mandalorian skull banner"},
		{templateFile = "object/tangible/tcg/series3/decorative_merr_sonn_jt12_jetpack_blueprints.iff", milestone=75, oneTime=false, description="Merr sonn jt12 jetpack blueprint"},
		{templateFile = "object/tangible/tcg/series3/decorative_mustafar_travel_advertisement.iff", milestone=75, oneTime=false, description="Mustafar travel advertisement"},
		{templateFile = "object/tangible/tcg/series3/decorative_swg_tcg_painting.iff", milestone=75, oneTime=false, description="Swg tcg painting"},
		{templateFile = "object/tangible/tcg/series3/decorative_wompa_skin_rug.iff", milestone=75, oneTime=false, description="Wompa skin rug"},
		-- 80 Day Rewards
		{templateFile = "object/tangible/tcg/series3/reuseable_buff_gargans_hands_of_seduction.iff", milestone=85, oneTime=false, description="Buff gargans hands of seduction"},
		{templateFile = "object/tangible/tcg/series3/wearable_guise_of_the_master.iff", milestone=85, oneTime=false, description="Guise of the master"},
		{templateFile = "object/tangible/tcg/series4/consumable_ball_of_peace.iff", milestone=85, oneTime=false, description="Ball of peace"},
		{templateFile = "object/tangible/tcg/series4/consumable_falleens_fist.iff", milestone=85, oneTime=false, description="Falleens fist"},
		{templateFile = "object/tangible/tcg/series4/consumable_t16_toy.iff", milestone=85, oneTime=false, description="T16 toy"},
		-- 85 Day Rewards
		{templateFile = "object/tangible/tcg/series4/decorative_chewbacca_statuette.iff", milestone=85, oneTime=false, description="Chewbacca statuette"},
		{templateFile = "object/tangible/tcg/series4/decorative_child_bed_01.iff", milestone=85, oneTime=false, description="Child bed 01"},
		{templateFile = "object/tangible/tcg/series4/decorative_droid_oil_bath.iff", milestone=85, oneTime=false, description="Droid oil bath"},
		{templateFile = "object/tangible/tcg/series4/decorative_han_solo_statuette.iff", milestone=85, oneTime=false, description="Han solo statuette"},
		{templateFile = "object/tangible/tcg/series4/decorative_kashyyyk_travel_advertisement.iff", milestone=85, oneTime=false, description="Kashyyyk travel advertisment"},
		-- 90 Day Rewards
		{templateFile = "object/tangible/tcg/series4/decorative_leia_r2_diorama.iff", milestone=95, oneTime=false, description="Leia r2 diorama"},
		{templateFile = "object/tangible/tcg/series4/decorative_medical_table_01.iff", milestone=95, oneTime=false, description="Medical table 01"},
		{templateFile = "object/tangible/tcg/series4/decorative_stuffed_tauntaun.iff", milestone=95, oneTime=false, description="Stuffed tauntaun"},
		{templateFile = "object/tangible/tcg/series4/decorative_stuffed_wampa.iff", milestone=95, oneTime=false, description="Stuffed wampa"},
		{templateFile = "object/tangible/tcg/series4/decorative_tatooine_travel_advertisement.iff", milestone=95, oneTime=false, description="Tatooine travel advertisement"},
		{templateFile = "object/tangible/deed/vehicle_deed/speederbike_flash_deed.iff", milestone=90, oneTime=true},
		{templateFile = "object/tangible/wearables/goggles/goggles_s01.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 1"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s02.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 2"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s03.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 3"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s04.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 4"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s05.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 5"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s06.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 6"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_darth_vader_toy.iff", milestone=90, oneTime=false, description="@veteran_new:mini_darthvader"},
		-- 95 Day Rewards
		{templateFile = "object/tangible/tcg/series4/decorative_tauntaun_ride.iff", milestone=95, oneTime=false, description="Tauntaun ride"},
		{templateFile = "object/tangible/tcg/series4/decorative_tcg_rug_01.iff", milestone=95, oneTime=false, description="Tcg rug 01"},
		{templateFile = "object/tangible/tcg/series4/video_game_table.iff", milestone=95, oneTime=false, description="Video game table"},
		{templateFile = "object/tangible/tcg/series4/wearable_chandrilan_dress.iff", milestone=95, oneTime=false, description="Chandrilan dress"},
		{templateFile = "object/tangible/tcg/series4/wearable_guise_of_vapaad.iff", milestone=95, oneTime=false, description="Guise of vapaad"},
		-- 100 Day Rewards
		{templateFile = "object/tangible/tcg/series5/wearable_ceremonial_travel_headdress.iffc", milestone=100, oneTime=false, description="Ceremonial travel deaddress"},
		{templateFile = "object/tangible/tcg/series5/varactyl_armor_statue.iff", milestone=100, oneTime=false, description="Varactyl armor statue"},
		{templateFile = "object/tangible/tcg/series5/nightsister_backpack.iff", milestone=100, oneTime=false, description="Nightsister backpack"},
		{templateFile = "object/tangible/tcg/series5/in_home_rain_storm.iff", milestone=100, oneTime=false, description="In home rain storm"},
		{templateFile = "object/tangible/tcg/series5/food_station_jabbas_roasting_spit.iff", milestone=100, oneTime=false, description="Food station jabbas roasting spit"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/awing.iff", milestone=100, oneTime=false, description="Awing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_heavy_01.iff", milestone=100, oneTime=false, description="Black sun heavy 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_heavy_02.iff", milestone=100, oneTime=false, description="Black sun heavy 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_light_01.iff", milestone=100, oneTime=false, description="Black sun light 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_light_02.iff", milestone=100, oneTime=false, description="Black sun light 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_medium_01.iff", milestone=100, oneTime=false, description="Black sun medium 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_medium_02.iff", milestone=100, oneTime=false, description="Black sun medium 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_transport.iff", milestone=100, oneTime=false, description="Black sun transport"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/bwing.iff", milestone=100, oneTime=false, description="Bwing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/grievous_starship.iff", milestone=100, oneTime=false, description="Grevious starship"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_heavy_01.iff", milestone=100, oneTime=false, description="Hutt fighter heavy 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_heavy_02.iff", milestone=100, oneTime=false, description="Hutt fighter heavy 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_heavy_03.iff", milestone=100, oneTime=false, description="Hutt fighter heavy 03"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_light_02.iff", milestone=100, oneTime=false, description="Hutt fighter light 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_medium_01.iff", milestone=100, oneTime=false, description="Hutt fighter medium 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_medium_02.iff", milestone=100, oneTime=false, description="Hutt fighter medium 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/imperial_gunboat.iff", milestone=100, oneTime=false, description="Imperial gunboat"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/jedi_fighter.iff", milestone=100, oneTime=false, description="Jedi fighter"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/kse_firespray.iff", milestone=100, oneTime=false, description="kse firespray "},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/naboo_n1.iff", milestone=100, oneTime=false, description="Naboo n1"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/rebel_gunboat.iff", milestone=100, oneTime=false, description="Rebel gunboat"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/sorosuub.iff", milestone=100, oneTime=false, description="Sorosuub"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_advanced.iff", milestone=100, oneTime=false, description="Tie advanced"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_aggressor.iff", milestone=100, oneTime=false, description="Tie aggresor"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_bomber.iff", milestone=100, oneTime=false, description="Tie bomber"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_fighter.iff", milestone=100, oneTime=false, description="Tie fighter"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_fighter_in.iff", milestone=100, oneTime=false, description="Tie fighter in"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_fighter_modified.iff", milestone=100, oneTime=false, description="Tie fighter modified"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_interceptor.iff", milestone=100, oneTime=false, description="Tie interceptor"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_interceptor_imperial_guard.iff", milestone=100, oneTime=false, description="Tie interceptor imperial guard"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_oppressor.iff", milestone=100, oneTime=false, description="Tie oppressor"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/vt49_decimator.iff", milestone=100, oneTime=false, description="Vt49 decimator"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/vwing.iff", milestone=100, oneTime=false, description="Vwing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/xwing.iff", milestone=100, oneTime=false, description="Xwing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/y8.iff", milestone=100, oneTime=false, description="Y8"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/ykl37r.iff", milestone=100, oneTime=false, description="Yk137"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/yt1300.iff", milestone=100, oneTime=false, description="Yt1300"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/yt2400.iff", milestone=100, oneTime=false, description="Yt2400"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/ywing.iff", milestone=100, oneTime=false, description="Ywing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/z95.iff", milestone=100, oneTime=false, description="Z95"},
		-- 105 Day Rewards
		{templateFile = "object/tangible/tcg/series6/diorama_jedi_council.iff", milestone=105, oneTime=false, description="Tauntaun ride"},
		{templateFile = "object/tangible/tcg/series6/hologram_cloud_city.iff", milestone=105, oneTime=false, description="Tcg rug 01"},
		{templateFile = "object/tangible/tcg/series6/multi_item_baby_colo_claw_set.iff", milestone=105, oneTime=false, description="Video game table"},
		{templateFile = "object/tangible/tcg/series6/painting_nightsister.iff", milestone=105, oneTime=false, description="Chandrilan dress"},
		{templateFile = "object/tangible/tcg/series6/painting_spined_rancor.iff", milestone=105, oneTime=false, description="Guise of vapaad"},
		-- 110 Day Rewards
		{templateFile = "object/tangible/tcg/series6/painting_travel_ad_coruscant.iff", milestone=110, oneTime=false, description="Tauntaun ride"},
		{templateFile = "object/tangible/tcg/series6/painting_travel_ad_ord_mantell.iff", milestone=110, oneTime=false, description="Tcg rug 01"},
		{templateFile = "object/tangible/tcg/series4/video_game_table.iff", milestone=110, oneTime=false, description="Video game table"},
		{templateFile = "object/tangible/tcg/series6/painting_winged_quenker.iff", milestone=110, oneTime=false, description="Chandrilan dress"},
		{templateFile = "object/tangible/tcg/series6/reuseable_buff_item_auto_feeder.iff", milestone=110, oneTime=false, description="Guise of vapaad"},
		-- 115 Day Rewards
		{templateFile = "object/tangible/tcg/series6/reuseable_buff_item_beast_muzzle.iff", milestone=115, oneTime=false, description="Tauntaun ride"},
		{templateFile = "object/tangible/tcg/series6/reuseable_buff_item_shock_collar.iff", milestone=115, oneTime=false, description="Tcg rug 01"},
		{templateFile = "object/tangible/tcg/series4/video_game_table.iff", milestone=115, oneTime=false, description="Video game table"},
		{templateFile = "object/tangible/tcg/series4/wearable_chandrilan_dress.iff", milestone=115, oneTime=false, description="Chandrilan dress"},
		{templateFile = "object/tangible/tcg/series4/wearable_guise_of_vapaad.iff", milestone=115, oneTime=false, description="Guise of vapaad"},
		-- 120 Day Rewards
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_a.iff", milestone=120, oneTime=false, description="@veteran_new:techconsole_a"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_b.iff", milestone=120, oneTime=false, description="@veteran_new:techconsole_b"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_c.iff", milestone=120, oneTime=false, description="@veteran_new:techconsole_c"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", milestone=120, oneTime=false, description="@veteran_new:techconsole_d"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_jabba_toy.iff", milestone=120, oneTime=false, description="@veteran_new:mini_jabba"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_stormtrooper_toy.iff", milestone=120, oneTime=false, description="@veteran_new:mini_stormtrooper"},
		-- 150 Day Rewards
		{templateFile = "object/tangible/camp/camp_spit_s2.iff", milestone=150, oneTime=false, description="Camp Center (Small)"},
		{templateFile = "object/tangible/camp/camp_spit_s3.iff", milestone=150, oneTime=false, description="Camp Center (Large)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_01.iff", milestone=150, oneTime=false, description="Gold Ornamental Vase (Style 1)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_02.iff", milestone=150, oneTime=false, description="Gold Ornamental Vase (Style 2)"},
		{templateFile = "object/tangible/furniture/decorative/foodcart.iff", milestone=150, oneTime=false, description="Foodcart"},
		{templateFile = "object/tangible/furniture/all/frn_bench_generic.iff", milestone=150, oneTime=false, description="Park Bench"},
		-- 180 Day Rewards
		{templateFile = "object/tangible/furniture/decorative/professor_desk.iff", milestone=180, oneTime=false, description="Professor Desk"},
		{templateFile = "object/tangible/furniture/decorative/diagnostic_screen.iff", milestone=180, oneTime=false, description="@frn_n:diagnostic_screen"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s2.iff", milestone=180, oneTime=false, description="Large Potted Plant (Style 2)"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s3.iff", milestone=180, oneTime=false, description="Large Potted Plant (Style 3)"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s4.iff", milestone=180, oneTime=false, description="Large Potted Plant (Style 4)"},
		-- 210 Day Rewards
		{templateFile = "object/tangible/furniture/modern/bar_counter_s1.iff", milestone=210, oneTime=false, description="Bar Countertop"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_curve_s1.iff", milestone=210, oneTime=false, description="Bar Countertop (Curved, Style 1)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_curve_s2.iff", milestone=210, oneTime=false, description="Bar Countertop (Curved, Style 2)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_straight_s1.iff", milestone=210, oneTime=false, description="Bar Countertop (Straight, Style 1)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_straight_s2.iff", milestone=210, oneTime=false, description="Bar Countertop (Straight, Style 2)"},
		-- 240 Day Rewards
		{templateFile = "object/tangible/furniture/all/frn_all_table_s01.iff", milestone=240, oneTime=false, description="Round Cantina Table (Style 1)"},
		{templateFile = "object/tangible/furniture/all/frn_all_table_s02.iff", milestone=240, oneTime=false, description="Round Cantina Table (Style 2)"},
		{templateFile = "object/tangible/furniture/all/frn_all_table_s03.iff", milestone=240, oneTime=false, description="Round Cantina Table (Style 3)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tatt_chair_cantina_seat_2.iff", milestone=240, oneTime=false, description="Large Cantina Sofa"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", milestone=240, oneTime=false, description="@frn_n:frn_tato_cafe_parasol"},
		-- 270 Day Rewards
		{templateFile = "object/tangible/furniture/modern/rug_oval_m_s02.iff", milestone=270, oneTime=false, description="Medium Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_oval_sml_s01.iff", milestone=270, oneTime=false, description="Small Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_m_s01.iff", milestone=270, oneTime=false, description="Medium Rectangular Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_sml_s01.iff", milestone=270, oneTime=false, description="Small Rectangular Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_m_s01.iff", milestone=270, oneTime=false, description="Medium Round Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_sml_s01.iff", milestone=270, oneTime=false, description="Small Round Rug"},
		-- 300 Day Rewards
		{templateFile = "object/tangible/loot/misc/loot_skull_bith.iff", milestone=300, oneTime=false, description="A Bith Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_human.iff", milestone=300, oneTime=false, description="A Human Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_ithorian.iff", milestone=300, oneTime=false, description="A Ithorian Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_thune.iff", milestone=300, oneTime=false, description="A Thune Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_voritor.iff", milestone=300, oneTime=false, description="A Voritor Lizard Skull"},
		{templateFile = "object/tangible/wearables/helmet/helmet_s06.iff", milestone=300, oneTime=true, description="Rebel Endor Helmet"},
		-- 330 Day Rewards
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s01.iff", milestone=330, oneTime=false, description="Large Rectangular Rug (Style 1)"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s02.iff", milestone=330, oneTime=false, description="Large Rectangular Rug (Style 2)"},
		{templateFile = "object/tangible/furniture/modern/rug_oval_lg_s01.iff", milestone=330, oneTime=false, description="Large Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_lg_s01.iff", milestone=330, oneTime=false, description="Large Round Rug"},
		{templateFile = "object/tangible/furniture/all/frn_all_desk_map_table.iff", milestone=330, oneTime=false, description="Round Data Terminal"},
		-- 360 Day Rewards
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_01.iff", milestone=360, oneTime=false, description="Painting: Cast Wing in Flight"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_02.iff", milestone=360, oneTime=false, description="Painting: Decimator"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_03.iff", milestone=360, oneTime=false, description="Painting: Tatooine Dune Speeder"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_04.iff", milestone=360, oneTime=false, description="Painting: Weapon of War"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_05.iff", milestone=360, oneTime=false, description="Painting: Fighter Study"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_06.iff", milestone=360, oneTime=false, description="Painting: Hutt Greed"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_07.iff", milestone=360, oneTime=false, description="Painting: Smuggler's Run"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_08.iff", milestone=360, oneTime=false, description="Painting: Imperial Oppression (TIE Oppressor)"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_09.iff", milestone=360, oneTime=false, description="Painting: Emperor's Eyes (TIE Sentinel)"},
		{templateFile = "object/tangible/wearables/armor/nightsister/armor_nightsister_bicep_r_s01.iff", milestone=360, oneTime=true, description="Nightsister Melee Armguard"},
		-- 365 Day Rewards
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s01.iff", milestone=365, oneTime=false, description="Large Rectangular Rug (Style 1)"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s02.iff", milestone=365, oneTime=false, description="Large Rectangular Rug (Style 2)"},
		{templateFile = "object/tangible/tcg/series6/multi_item_baby_colo_claw_set.iff", milestone=365, oneTime=false, description="Baby colo claw set"},
		{templateFile = "object/tangible/tcg/series6/painting_nightsister.iff", milestone=365, oneTime=false, description="Nightsister painting"},
		{templateFile = "object/tangible/tcg/series6/painting_spined_rancor.iff", milestone=365, oneTime=false, description="Spined rancor painting"},
		{templateFile = "object/tangible/tcg/series6/painting_travel_ad_coruscant.iff", milestone=365, oneTime=false, description="Coruscant ad painting"},
		{templateFile = "object/tangible/tcg/series6/decorative_jabba_bed.iff", milestone=365, oneTime=false, description="Jabba bed"},
		{templateFile = "object/tangible/tcg/series6/multi_item_baby_colo_claw_set.iff", milestone=365, oneTime=false, description="Baby Colo set"},
		{templateFile = "object/tangible/tcg/series6/painting_travel_ad_ord_mantell.iff", milestone=365, oneTime=false, description="Ord mantel travel painting"},
		{templateFile = "object/tangible/tcg/series6/painting_winged_quenker.iff", milestone=365, oneTime=false, description="Wingded quenker painting"},
		{templateFile = "object/tangible/tcg/series6/reuseable_buff_item_auto_feeder.iff", milestone=365, oneTime=false, description="Auto feeder"},
		{templateFile = "object/tangible/tcg/series6/reuseable_buff_item_beast_muzzle.iff", milestone=365, oneTime=false, description="Beast muzzel"},
		{templateFile = "object/tangible/tcg/series6/reuseable_buff_item_shock_collar.iff", milestone=365, oneTime=false, description="Shock collar"},
		{templateFile = "object/tangible/tcg/series6/statuette_lando.iff", milestone=365, oneTime=false, description="Lando statuette"},
		{templateFile = "object/tangible/tcg/series6/wearable_greedos_outfit.iff", milestone=365, oneTime=false, description="Greedos outfit"},
		{templateFile = "object/tangible/tcg/series6/wearable_guise_of_fire.iff", milestone=365, oneTime=false, description="Fire of guise"},
		{templateFile = "object/tangible/tcg/series6/wearable_guise_of_ice.iff", milestone=365, oneTime=false, description="Ice of guise"},
		{templateFile = "object/tangible/tcg/series5/wearable_ceremonial_travel_headdress.iff", milestone=365, oneTime=false, description="Ceremonial Headress"},
		{templateFile = "object/tangible/tcg/series6/combine_object_battle_droid_statuette.iff", milestone=365, oneTime=false, description="Battle droid statuette"},
		{templateFile = "object/tangible/tcg/series6/combine_object_hk47_mustafar_diorama.iff", milestone=365, oneTime=false, description="Hk47 diorama"},
		{templateFile = "object/tangible/tcg/series6/combine_object_hk47_statuette.iff", milestone=365, oneTime=false, description="Hk47 statuette"},
		{templateFile = "object/tangible/tcg/series6/combine_object_hk_droids_poster.iff", milestone=365, oneTime=false, description="Hk droid poster"},
		{templateFile = "object/tangible/tcg/series6/consumable_ponda_baba_arm.iff", milestone=365, oneTime=false, description="Baba ponda arm"},
		{templateFile = "object/tangible/tcg/series6/decorative_baby_colo_claw_fish.iff", milestone=365, oneTime=false, description="Claw fish"},
		{templateFile = "object/tangible/tcg/series6/decorative_baby_colo_claw_fishtank.iff", milestone=365, oneTime=false, description="Claw Fish tank"},
		{templateFile = "object/tangible/tcg/series6/decorative_house_lamp.iff", milestone=365, oneTime=false, description="House lamp"},
		{templateFile = "object/tangible/tcg/series6/dewback_armor_statue.iff", milestone=365, oneTime=false, description="Dewback armor statue"},
		{templateFile = "object/tangible/tcg/series6/diorama_han_greedo.iff", milestone=365, oneTime=false, description="Han greedo diorama"},
		{templateFile = "object/tangible/tcg/series6/diorama_jedi_council.iff", milestone=365, oneTime=false, description="Jedi council diorama"},
		{templateFile = "object/tangible/tcg/series6/hologram_cloud_city.iff", milestone=365, oneTime=false, description="Cloud city hologram"},
		{templateFile = "object/tangible/tcg/series7/wearable_backpack_armored.iff", milestone=365, oneTime=false, description="Armored backpack"},
		{templateFile = "object/tangible/tcg/series7/wearable_backpack_recon.iff", milestone=365, oneTime=false, description="Recon backpack"},
		{templateFile = "object/tangible/tcg/series7/wearable_gold_cape.iff", milestone=365, oneTime=false, description="Gold cape"},
		{templateFile = "object/tangible/tcg/series7/wearable_purple_cape.iff", milestone=365, oneTime=false, description="Purple cape"},
		{templateFile = "object/tangible/tcg/series7/wearable_sash_embroidered.iff", milestone=365, oneTime=false, description="Sash embroidered"},
		{templateFile = "object/tangible/tcg/series7/wearable_sash_handmade.iff", milestone=365, oneTime=false, description="Sash handmade"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/a1_deluxe_floater.iff", milestone=365, oneTime=false, description="A1 delux floater House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/air2_swoop_speeder.iff", milestone=365, oneTime=false, description="air2 swoop speeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/barc_speeder.iff", milestone=365, oneTime=false, description="Barc speeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/barc_speeder_imperial.iff", milestone=365, oneTime=false, description="Barc speeder imperial House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/barc_speeder_rebel.iff", milestone=365, oneTime=false, description="Barc speeder rebel House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/basilisk_war_droid.iff", milestone=365, oneTime=false, description="Basilisk war droid House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/fg_8t8_podracer.iff", milestone=365, oneTime=false, description="Fg 8t8 podracer House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/flare_s_swoop.iff", milestone=365, oneTime=false, description="Flare s swoop House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/geonosian_speeder.iff", milestone=365, oneTime=false, description="Geonosian speeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/grievous_wheel_bike.iff", milestone=365, oneTime=false, description="Grievous wheel bike House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/hoth_at_st.iff", milestone=365, oneTime=false, description="Hoth at st House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/hover_chair.iff", milestone=365, oneTime=false, description="Hover chair House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/hoverlifter_speeder.iff", milestone=365, oneTime=false, description="Hover lifter House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/jetpack.iff", milestone=365, oneTime=false, description="Jetpack House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/koro2_speeder.iff", milestone=365, oneTime=false, description="Koro2 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_ab1.iff", milestone=365, oneTime=false, description="Ab1 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_av21.iff", milestone=365, oneTime=false, description="Av21 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_desert_skiff.iff", milestone=365, oneTime=false, description="Desert skiff House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_lava_skiff.iff", milestone=365, oneTime=false, description="Lava skiff House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_tantive4.iff", milestone=365, oneTime=false, description="Tantive4 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_tantive4_adv.iff", milestone=365, oneTime=false, description="Tantive4 advance House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_usv5.iff", milestone=365, oneTime=false, description="Usv5 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_v35.iff", milestone=365, oneTime=false, description="V35 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_x31.iff", milestone=365, oneTime=false, description="X31 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_x34.iff", milestone=365, oneTime=false, description="X34 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/landspeeder_xp38.iff", milestone=365, oneTime=false, description="Xp38 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/light_bending_barc.iff", milestone=365, oneTime=false, description="Light bending barc House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/mechno_chair.iff", milestone=365, oneTime=false, description="Mechno chair House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/mustafar_panning_droid.iff", milestone=365, oneTime=false, description="Panning droid House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/pod_racer_balta_podracer.iff", milestone=365, oneTime=false, description="Podracer balta House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/pod_racer_ipg_longtail.iff", milestone=365, oneTime=false, description="Longtail IPR House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/pod_racer_light_bending.iff", milestone=365, oneTime=false, description="Light bending podracer House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/pod_racer_one.iff", milestone=365, oneTime=false, description="Podracer one House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/pod_racer_two.iff", milestone=365, oneTime=false, description="Podracer two House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/podracer_anakin.iff", milestone=365, oneTime=false, description="Anakins podracer House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/senate_pod.iff", milestone=365, oneTime=false, description="Senate pod House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/sith_speeder.iff", milestone=365, oneTime=false, description="Sith speeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/snowspeeder.iff", milestone=365, oneTime=false, description="Snowspeeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/speeder_ric_920.iff", milestone=365, oneTime=false, description="Ric 920 House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/speederbike.iff", milestone=365, oneTime=false, description="Speederbike House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/speederbike_flash.iff", milestone=365, oneTime=false, description="Flash speederbike House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/speederbike_swoop.iff", milestone=365, oneTime=false, description="Swoop speeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/stap_speeder.iff", milestone=365, oneTime=false, description="Stap speeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/swamp_speeder.iff", milestone=365, oneTime=false, description="Swamp speeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/tcg_8_air_speeder.iff", milestone=365, oneTime=false, description="Air speeder House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/tcg_at_pt_walker.iff", milestone=365, oneTime=false, description="Atpt walker House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/tcg_hk47_jetpack.iff", milestone=365, oneTime=false, description="Hk47 jetpack House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/tcg_merr_sonn_jt12_jetpack.iff", milestone=365, oneTime=false, description="Merr sonn jt12 jetpack House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/tcg_military_transport.iff", milestone=365, oneTime=false, description="Military transport House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/tcg_republic_gunship.iff", milestone=365, oneTime=false, description="Republic gunship House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/temp_walker1.iff", milestone=365, oneTime=false, description="Walkerl  House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/walker_at_rt_camo.iff", milestone=365, oneTime=false, description="Atrt camo House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/walker_at_rt_reg.iff", milestone=365, oneTime=false, description="Atrt reg House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/walker_at_xt.iff", milestone=365, oneTime=false, description="Atxt House Decoration"},
		{templateFile = "object/tangible/tcg/series7/garage_display_vehicles/xj6_air_speeder.iff", milestone=365, oneTime=false, description="Xj6 air speeder House Decoration"},
		-- 450 Day Rewards
		{templateFile = "object/tangible/camp/camp_spit_s2.iff", milestone=450, oneTime=false, description="Camp Center (Small)"},
		{templateFile = "object/tangible/camp/camp_spit_s3.iff", milestone=450, oneTime=false, description="Camp Center (Large)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_01.iff", milestone=450, oneTime=false, description="Gold Ornamental Vase (Style 1)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_02.iff", milestone=450, oneTime=false, description="Gold Ornamental Vase (Style 2)"},
		{templateFile = "object/tangible/furniture/decorative/foodcart.iff", milestone=450, oneTime=false, description="Foodcart"},
		{templateFile = "object/tangible/furniture/all/frn_bench_generic.iff", milestone=450, oneTime=false, description="Park Bench"},
		-- 540 Day Rewards
		{templateFile = "object/tangible/furniture/decorative/professor_desk.iff", milestone=540, oneTime=false, description="Professor Desk"},
		{templateFile = "object/tangible/furniture/decorative/diagnostic_screen.iff", milestone=540, oneTime=false, description="@frn_n:diagnostic_screen"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s2.iff", milestone=540, oneTime=false, description="Large Potted Plant (Style 2)"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s3.iff", milestone=540, oneTime=false, description="Large Potted Plant (Style 3)"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s4.iff", milestone=540, oneTime=false, description="Large Potted Plant (Style 4)"},
		-- 630 Day Rewards
		{templateFile = "object/tangible/furniture/modern/bar_counter_s1.iff", milestone=630, oneTime=false, description="Bar Countertop"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_curve_s1.iff", milestone=630, oneTime=false, description="Bar Countertop (Curved, Style 1)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_curve_s2.iff", milestone=630, oneTime=false, description="Bar Countertop (Curved, Style 2)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_straight_s1.iff", milestone=630, oneTime=false, description="Bar Countertop (Straight, Style 1)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_straight_s2.iff", milestone=630, oneTime=false, description="Bar Countertop (Straight, Style 2)"},
		-- 720 Day Rewards
		{templateFile = "object/tangible/furniture/all/frn_all_table_s01.iff", milestone=720, oneTime=false, description="Round Cantina Table (Style 1)"},
		{templateFile = "object/tangible/furniture/all/frn_all_table_s02.iff", milestone=720, oneTime=false, description="Round Cantina Table (Style 2)"},
		{templateFile = "object/tangible/furniture/all/frn_all_table_s03.iff", milestone=720, oneTime=false, description="Round Cantina Table (Style 3)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tatt_chair_cantina_seat_2.iff", milestone=720, oneTime=false, description="Large Cantina Sofa"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", milestone=720, oneTime=false, description="@frn_n:frn_tato_cafe_parasol"},
		-- 810 Day Rewards
		{templateFile = "object/tangible/furniture/modern/rug_oval_m_s02.iff", milestone=810, oneTime=false, description="Medium Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_oval_sml_s01.iff", milestone=810, oneTime=false, description="Small Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_m_s01.iff", milestone=810, oneTime=false, description="Medium Rectangular Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_sml_s01.iff", milestone=810, oneTime=false, description="Small Rectangular Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_m_s01.iff", milestone=810, oneTime=false, description="Medium Round Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_sml_s01.iff", milestone=810, oneTime=false, description="Small Round Rug"},
		-- 900 Day Rewards
		{templateFile = "object/tangible/loot/misc/loot_skull_bith.iff", milestone=900, oneTime=false, description="A Bith Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_human.iff", milestone=900, oneTime=false, description="A Human Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_ithorian.iff", milestone=900, oneTime=false, description="A Ithorian Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_thune.iff", milestone=900, oneTime=false, description="A Thune Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_voritor.iff", milestone=900, oneTime=false, description="A Voritor Lizard Skull"},
		{templateFile = "object/tangible/wearables/helmet/helmet_s06.iff", milestone=900, oneTime=true, description="Rebel Endor Helmet"},
		-- 990 Day Rewards
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s01.iff", milestone=990, oneTime=false, description="Large Rectangular Rug (Style 1)"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s02.iff", milestone=990, oneTime=false, description="Large Rectangular Rug (Style 2)"},
		{templateFile = "object/tangible/furniture/modern/rug_oval_lg_s01.iff", milestone=990, oneTime=false, description="Large Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_lg_s01.iff", milestone=990, oneTime=false, description="Large Round Rug"},
		{templateFile = "object/tangible/furniture/all/frn_all_desk_map_table.iff", milestone=990, oneTime=false, description="Round Data Terminal"},
		{templateFile = "object/tangible/wearables/armor/nightsister/armor_nightsister_bicep_r_s01.iff", milestone=990, oneTime=true, description="Nightsister Melee Armguard"},
		-- 1080 Day Rewards
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_01.iff", milestone=1080, oneTime=false, description="Painting: Cast Wing in Flight"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_02.iff", milestone=1080, oneTime=false, description="Painting: Decimator"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_03.iff", milestone=1080, oneTime=false, description="Painting: Tatooine Dune Speeder"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_04.iff", milestone=1080, oneTime=false, description="Painting: Weapon of War"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_05.iff", milestone=1080, oneTime=false, description="Painting: Fighter Study"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_06.iff", milestone=1080, oneTime=false, description="Painting: Hutt Greed"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_07.iff", milestone=1080, oneTime=false, description="Painting: Smuggler's Run"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_08.iff", milestone=1080, oneTime=false, description="Painting: Imperial Oppression (TIE Oppressor)"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_09.iff", milestone=1080, oneTime=false, description="Painting: Emperor's Eyes (TIE Sentinel)"},
}

-- { "stringId", "songFilePath" }
jukeboxSongs = {
	{ "@event_perk_jukebox_songs:emperors_theme", "sound/music_emperor_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:chamber_music", "sound/music_starport_a_loop.snd" },
	{ "@event_perk_jukebox_songs:hard_rock", "sound/music_starport_b_loop.snd" },
	{ "@event_perk_jukebox_songs:theed_palace", "sound/music_theed_palace_loop.snd" },
	{ "@event_perk_jukebox_songs:medley", "sound/music_autorun_loop.snd" },
	{ "@event_perk_jukebox_songs:otoh_gunga", "sound/music_otoh_gunga_loop.snd" },
	{ "@event_perk_jukebox_songs:star_wars_intro", "sound/music_intro_loop.snd" },
	{ "@event_perk_jukebox_songs:celeb_phantom_menace", "sound/music_celebration_a_loop.snd" },
	{ "@event_perk_jukebox_songs:celeb_rotj", "sound/music_celebration_b_loop.snd" },
	{ "@event_perk_jukebox_songs:pod_race", "sound/music_combat_bfield_loop.snd" },
	{ "@event_perk_jukebox_songs:figrin_dan_1", "sound/music_figrin_dan_1_loop.snd" },
	{ "@event_perk_jukebox_songs:figrin_dan_2", "sound/music_figrin_dan_2_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_corellia", "sound/music_id_tent_corellia_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_naboo", "sound/music_id_tent_naboo_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_tatooine", "sound/music_id_tent_tatooine_loop.snd" },
	{ "@event_perk_jukebox_songs:max_rebo_1", "sound/music_max_rebo_1_loop.snd" },
	{ "@event_perk_jukebox_songs:max_rebo_2", "sound/music_max_rebo_2_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_1", "sound/music_romance_a_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_2", "sound/music_romance_b_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_3", "sound/music_romance_c_loop.snd" },
	{ "@event_perk_jukebox_songs:satisfaction_1", "sound/music_satisfaction_a_loop.snd" },
	{ "@event_perk_jukebox_songs:satisfaction_2", "sound/music_satisfaction_b_loop.snd" },
	{ "@event_perk_jukebox_songs:exar_theme", "sound/music_exar_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:exploration", "sound/music_explore_a_loop.snd" },
	{ "@event_perk_jukebox_songs:humor_1", "sound/music_humor_a_loop.snd" },
	{ "@event_perk_jukebox_songs:humor_2", "sound/music_humor_b_loop.snd" },
	{ "@event_perk_jukebox_songs:leia_theme", "sound/music_leia_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:evil_ambiance", "sound/music_underground_loop.snd" },
	{ "@event_perk_jukebox_songs:eerie_ambiance", "sound/music_underwater_loop.snd" },
	{ "@event_perk_jukebox_songs:lok_theme", "sound/music_gloom_a_loop.snd" }
}
