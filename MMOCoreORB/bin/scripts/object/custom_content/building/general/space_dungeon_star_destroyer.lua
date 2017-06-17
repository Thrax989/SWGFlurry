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


object_building_general_space_dungeon_star_destroyer = object_building_general_shared_space_dungeon_star_destroyer:new {
	customObjectName = "ISD",
	--spawningPoints = {
	----		{ x = -12.8, z = 0.6, y = -48.4, ow = 0.806, ox = 0, oz = 0, oy = -0.592, cellid = 14 },
	--		{ x = -18.1, z = 0.6, y = -46.7, ow = 0.597, ox = 0, oz = 0, oy = 0.802, cellid = 14 },
	--		{ x = -16.3, z = 0.6, y = -50.0, ow = 0.986, ox = 0, oz = 0, oy = 0.167, cellid = 14 },
	--		},
	templateType = CLONINGBUILDING,

	childObjects = {
	--elevator00 done
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", 54.44, 173.835, 20.1186, 4336903, -0.7, 0, 0.7, 0)
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", 54.4198, 181.335, 20.1185, 4336903, -0.7, 0, 0.7, 0)
	
	--elevator01 done
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", -54.4198, 173.835, 20.1647, 4336904, 0.7, 0, 0.7, 0)
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", -54.4908, 181.335, 20.1559, 4336904, 0.7, 0, 0.7, 0)
	
	--elevator02 done
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", 48.9851, 173.835, 205.601, 4336905, -0.7, 0, 0.7, 0)
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", 48.9717, 192.335, 205.611, 4336905, -0.7, 0, 0.7, 0)
	
	--elevator03 done
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", 19.9851, 170.585, 430.571, 4336914, 0, 0, -1, 0)
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", 20.0174, 453.359, 430.567, 4336914, 0, 0, -1, 0)
	
	--elevator04
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", 21.41, 448.607, 341.828, 4336921, -0.7, 0, 0.7, 0)
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", 21.41, 453.609, 341.828, 4336921, -0.7, 0, 0.7, 0)
	
	--elevator05 done
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", -21.42, 448.609, 341.822, 4336922, 0.7, 0, 0.7, 0)
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", -21.42, 453.609, 341.916, 4336922, 0.7, 0, 0.7, 0)
	
	--reactorlift done
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", 19.9601, 140.585, 347.612, 4336906, 1, 0, 0, 0)
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", 19.9884, 170.585, 347.603, 4336906, 1, 0, 0, 0)			
	}
}

ObjectTemplates:addTemplate(object_building_general_space_dungeon_star_destroyer, "object/building/general/space_dungeon_star_destroyer.iff")
