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


object_tangible_beta_beta_terminal_food = object_tangible_beta_shared_beta_terminal_food:new {
	gameObjectType = 16400,

	maxCondition = 0,

	customName = "Galactic Travel Service",

	templateType = CHARACTERBUILDERTERMINAL,

	itemList = {
		        "corellia",
		   {
			"Bela Vistal Shuttleport A (5,000 Credits)", "corellia_bela_vistal_a_shuttleport_travel",
			"Bela Vistal Shuttleport B (5,000 Credits)", "corellia_bela_vistal_b_shuttleport_travel",
			"Coronet Starport (5,000 Credits)", "corellia_coronet_starport_travel",
			"Coronet Shuttle A (5,000 Credits)", "corellia_coronet_a_shuttle_travel",
			"Coronet Shuttle B (5,000 Credits)", "corellia_coronet_b_shuttle_travel",
			"Doaba Guerfel Shuttleport (5,000 Credits)", "doaba_guerfel_shuttleport_travel",
			"Doaba Guerfel Starport (5,000 Credits)", "doaba_guerfel_starport_travel",
			"Kor Vella Shuttleport (5,000 Credits)", "kor_vella_shuttleport_travel",
			"Kor Vella Stareport (5,000 Credits)", "kor_vella_starport_travel",
			"Tyrena Shuttle A (5,000 Credits)", "tyrena_a_shuttle_travel",
			"Tyrena Shuttle B (5,000 Credits)", "tyrena_b_shuttle_travel",
			"Tyrena Starport (5,000 Credits)", "tyrena_starport_travel",
			"Vreni Island Shuttle (5,000 Credits)", "vreni_island_shuttle_travel",
			"POI Argilat Swamp Badge (5,000 Credits)", "argilat_swamp_badge",
			"POI Bela Vistal Fountain Badge (5,000 Credits)", "bela_vistal_fountain_badge",
			"POI Rebel Hideout (5,000 Credits)", "rebel_hideout_badge",
			"POI Rogue Corsec Base Badge (5,000 Credits)", "rogue_corsec_base_badge",
			"POI Tyrena Theater Badge (5,000 Credits)", "tyrena_theater_badge",
		   },
			"dantooine",
		   {
			"Dantooine Agro Outpost Stareport (5,000 Credits)", "dantooine_agro_outpost_starport_travel",
			"Dantooine Imperial Outpost Stareport (5,000 Credits)", "dantooine_imperial_outpost_starport_travel",
			"Dantooine Mining Outpost Stareport (5,000 Credits)", "dantooine_mining_outpost_startport_travel",
		   },
			"dathomir",
		   {
			"Dathomir Trade Outpost Stareport (5,000 Credits)", "dathomir_trade_outpost_starport_travel",
			"Dathomir Science Outpost Stareport (5,000 Credits)", "dathomir_science_outpost_starport_travel",
			"Dathomir Village Shuttleport (5,000 Credits)", "dathomir_village_shuttleport_travel",
		   },
			"hoth",
		   {
			"Scavenger Stareport (5,000 Credits)", "scavenger_starport_travel",
		   },
		  	"lok",
		   {
			"Nym's Stronghold Stareport (5,000 Credits)", "nyms_stronghold_starport_travel",
		   },
			"mandalore",
		   {
			"Sundari Stareport (5,000 Credits)", "sundari_starport_travel",
			"Keldabe Stareport (5,000 Credits)", "keldabe_starport_travel",
			"Bralsin Stareport (5,000 Credits)", "bralsin_starport_travel",
			"Norg Bral Stareport (5,000 Credits)", "norg_bral_starport_travel",
			"Shuror Stareport (5,000 Credits)", "shuror_starport_travel",
			"Enceri Stareport (5,000 Credits)", "enceri_starport_travel",
		   },
			"naboo",
		   {
			"Test", "Test",
		   },
		 	"rori",
		   {
			"Test", "Test",
		   },
		 	"taanab",
		   {
			"Test", "Test",
		   },
		 	"talus",
		   {
			"Test", "Test",
		   },
		 	"tatooine",
		   {
			"Test", "Test",
		   },
		 	"yavin4",
		   {
			"Test", "Test",
		   },
		 	"kaas",
		   {
			"Test", "Test",
		   },
			"coruscant",
		   {
			"test", "Test",
		   },
			"jakku",
		   {
			"Test", "Test",
		   },
			"chandrila",
		   {
			"Test", "Test",
		   },
			"nal hutta",
		   {
			"Test", "Test",
		   },
			"moraband",
		   {
			"Test", "Test",
		   },
	}
}

ObjectTemplates:addTemplate(object_tangible_beta_beta_terminal_food, "object/tangible/beta/beta_terminal_food.iff")
