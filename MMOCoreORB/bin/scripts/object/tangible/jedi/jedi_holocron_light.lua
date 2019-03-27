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


object_tangible_jedi_jedi_holocron_light = object_tangible_jedi_shared_jedi_holocron_light:new {
	gameObjectType = 16400,

	maxCondition = 0,

	customName = "Gray Holocron",

	templateType = CHARACTERBUILDERTERMINAL,

	itemList = {
		     "Gray Chapter 1",
		   {
			"Gray Chapter 1", "Gray_Chapter_1",
		   },
			"Gray Chapter 2",
		   {
			"Gray Chapter 2", "Gray_Chapter_2",
		   },
			"Gray Chapter 3",
		   {
			"Gray Chapter 3", "Gray_Chapter_3",
		   },
		  	"Gray Chapter 4",
		   {
			"Gray Chapter 4", "Gray_Chapter_4",
		   },
			"Gray Chapter 5",
		   {
			"Gray Chapter 5", "Gray_Chapter_5",
		   },
		 	"Gray Chapter 6",
		   {
			"Gray Chapter 6", "Gray_Chapter_6",
		   },
		 	"Gray Chapter 7",
		   {
			"Gray Chapter 7", "Gray_Chapter_7",
		   },
		 	"Gray Chapter 8",
		   {
			"Gray Chapter 8", "Gray_Chapter_8",
		   },
		 	"Gray Chapter 9",
		   {
			"Gray Chapter 9", "Gray_Chapter_9",
		   },
		 	"Gray Chapter 10",
		   {
			"Gray Chapter 10", "Gray_Chapter_10",
		   },
		 	"Gray Chapter 11",
		   {
			"Gray Chapter 11", "Gray_Chapter_11",
		   },
		 	"Gray Chapter 12",
		   {
			"Gray Chapter 12", "Gray_Chapter_12",
		   },
		 	"Gray Chapter 13",
		   {
			"Gray Chapter 13", "Gray_Chapter_13",
		   },
		 	"Gray Chapter 14",
		   {
			"Gray Chapter 14", "Gray_Chapter_14",
		   },
		 	"Gray Chapter 15",
		   {
			"Gray Chapter 15", "Gray_Chapter_15",
		   },
		 	"Gray Chapter 16",
		   {
			"Gray Chapter 16", "Gray_Chapter_16",
		   },
		 	"Gray Chapter 17",
		   {
			"Gray Chapter 17", "Gray_Chapter_17",
		   },
		 	"Gray Chapter 18",
		   {
			"Gray Chapter 18", "Gray_Chapter_18",
		   },
		 	"Gray Chapter 19",
		   {
			"Gray Chapter 19", "Gray_Chapter_19",
		   },
		 	"Gray Chapter 20",
		   {
			"Gray Chapter 20", "Gray_Chapter_20",
		   },
		 	"Gray Chapter 21",
		   {
			"Gray Chapter 21", "Gray_Chapter_21",
		   },
		 	"Gray Chapter 22",
		   {
			"Gray Chapter 22", "Gray_Chapter_22",
		   },
		 	"Gray Chapter 23",
		   {
			"Gray Chapter 23", "Gray_Chapter_23",
		   },
		 	"Gray Chapter 24",
		   {
			"Gray Chapter 24", "Gray_Chapter_24",
		   },
		 	"Gray Chapter 25",
		   {
			"Gray Chapter 25", "Gray_Chapter_25",
		   },
		 	"Gray Chapter 26",
		   {
			"Gray Chapter 26", "Gray_Chapter_26",
		   },  
		 	"Gray Chapter 27",
		   {
			"Gray Chapter 27", "Gray_Chapter_27",
		   },
		 	"Gray Chapter 28",
		   {
			"Gray Chapter 28", "Gray_Chapter_28",
		   },
		 	"Gray Chapter 29",
		   {
			"Gray Chapter 29", "Gray_Chapter_29",
		   },
		 	"Gray Chapter 30",
		   {
			"Gray Chapter 30", "Gray_Chapter_30",
		   },
		 	"Start Gray Jedi Quest",
		   {
			"Begin The Gray Jedi Quest Line", "Gray_Chapter_32",
		   },
		 	"Complete The Gray Jedi Quest Line",
		   {
			"Have You Completed All 30 Quests?", "Gray_Chapter_31",
		   },
	}
}

ObjectTemplates:addTemplate(object_tangible_jedi_jedi_holocron_light, "object/tangible/jedi/jedi_holocron_light.iff")
