pvp2ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "pvp2ScreenPlay",
}

registerScreenPlay("pvp2ScreenPlay", true)

function pvp2ScreenPlay:start()
	if (isZoneEnabled("kaas")) then
		self:spawnSceneObjects()
	end
end

function pvp2ScreenPlay:spawnSceneObjects()

--Added teleport system
spawnSceneObject("kaas", "object/tangible/terminal/terminal_gcw_publish_gift.iff", -5096.62, 81.7005, -2109.66, 0, 0.992833, 0, 0.119509, 0) 

spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5091.28, 81.2486, -2098.31, 0, 0.999048, 0, 0.0436194, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5083.45, 81.2486, -2099.26, 0, 0.996917, 0, 0.0784591, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5075.54, 81.2486, -2100.51, 0, 0.996917, 0, 0.0784591, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5073.33, 81.493, -2105.71, 0, -0.649448, -0, -0.760406, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5074.69, 81.4996, -2113.6, 0, 0.636078, 0, 0.771625, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5076, 81.501, -2121.45, 0, 0.656059, 0, 0.75471, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5076.97, 81.507, -2129.33, 0, 0.669131, 0, 0.743145, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5077.96, 81.4971, -2137.3, 0, 0.649448, 0, 0.760406, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5083.3, 81.7082, -2139.56, 0, 0.0697564, 0, -0.997564, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5091.25, 81.7006, -2138.59, 0, -0.99863, 0, -0.052336, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5099.16, 81.6706, -2137.76, 0, -0.99863, 0, -0.052336, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5130.59, 81.6706, -2134.45, 0, 0.052336, 0, -0.99863, -0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5138.33, 81.306, -2133.58, 0, -0.0610487, 0, 0.998135, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5146.26, 81.3042, -2132.6, 0, -0.0610486, 0, 0.998135, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5149.48, 81.5573, -2128.3, 0, -0.766044, 0, 0.642788, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5148.08, 81.4993, -2120.63, 0, -0.771625, 0, 0.636078, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5146.68, 81.4993, -2113.06, 0, -0.766044, 0, 0.642788, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5145.38, 81.4993, -2105.29, 0, -0.760406, 0, 0.649448, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5144.35, 81.4993, -2097.92, 0, -0.748956, 0, 0.66262, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5140.79, 81.4993, -2093.23, 0, -0.999048, 0, -0.0436193, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5132.96, 81.4393, -2094.04, 0, -0.998135, 0, -0.0610485, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5125.15, 81.4393, -2094.94, 0, -0.998629, 0, -0.052336, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5117.23, 81.4392, -2095.84, 0, 0.998135, 0, 0.0610485, 0) 
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5099.23, 81.3604, -2097.65, 0, 0.999391, 0, 0.0348995, 0)
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5104.18, 81.6712, -2097.21, 0, -0.0436194, 0, 0.999048, 0)
spawnSceneObject("kaas", "object/installation/battlefield/destructible/bfield_wall_strong.iff", -5109.29, 81.5604, -2096.77, 0, 0.99863, 0, 0.052336, 0)
spawnSceneObject("kaas", "object/building/general/mun_all_landing_pad_s01.iff", -5109.77, 81.75, -2119.95, 0, 0.0523359, 0, -0.99863, 0)
spawnSceneObject("kaas", "object/tangible/beta/beta_terminal_wound.iff", -5127.86, 81.6384, -2133.43, 0, 0.999027, 0, 0.0440986, 0)
spawnSceneObject("kaas", "object/tangible/beta/beta_terminal_wound.iff", -5101.65, 81.4893, -2136.18, 0, 0.999516, 0, 0.0311125, 0)
spawnSceneObject("tatooine", "object/tangible/terminal/terminal_mission_bounty.iff", 3470.85, 5, -4851.38, 0, 0.0398828, 0, 0.999204, 0)
spawnSceneObject("tatooine", "object/tangible/terminal/terminal_mission_rebel.iff", 3481.96, 5, -4863.64, 0, 0.921229, 0, -0.389022, 0)
spawnSceneObject("tatooine", "object/tangible/terminal/terminal_mission_rebel.iff", 3483.12, 5, -4864.69, 0, -0.372665, 0, -0.927966, 0)
spawnSceneObject("tatooine", "object/tangible/terminal/terminal_mission.iff", 3485.66, 5, -4861.97, 0, -0.339595, 0, -0.940571, 0)
spawnSceneObject("tatooine", "object/tangible/terminal/terminal_mission.iff", 3483.21, 5, -4860.19, 0, 0.902962, 0, -0.429719, 0)
spawnSceneObject("tatooine", "object/tangible/terminal/terminal_mission_imperial.iff", 3487.89, 5, -4860.06, 0, 0.934876, 0, -0.354976, 0)
spawnSceneObject("tatooine", "object/tangible/terminal/terminal_mission_imperial.iff", 3488.32, 5, -4860.71, 0, -0.33106, 0, -0.94361, 0)
	--[[--elevator00 done
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", 54.44, 173.835, 20.1186, 4336903, -0.7, 0, 0.7, 0)
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", 54.4198, 181.335, 20.1185, 4336903, -0.7, 0, 0.7, 0)
	
	--elevator01 done
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_up.iff", -54.4198, 173.835, 20.1647, 4336904, 0.7, 0, 0.7, 0)
        spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", -54.3557, 181.335, 20.0478, 4336904, -0.707107, 0, -0.707107, 0)	
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
	spawnSceneObject("dungeon1", "object/tangible/terminal/terminal_elevator_down.iff", 19.9884, 170.585, 347.603, 4336906, 1, 0, 0, 0)]]--	





--Mandalore Galacitc Travel system

spawnSceneObject("mandalore", "object/tangible/terminal/terminal_gcw_publish_gift.iff", 6297.01, 1.75803, -6223.27, 0, -0.0908972, 0, 0.99586, 0)

spawnSceneObject("mandalore", "object/tangible/terminal/terminal_gcw_publish_gift.iff", 1577.03, 4, -6409.68, 0, 0.25294, 0, 0.967482, 0) 

spawnSceneObject("mandalore", "object/tangible/terminal/terminal_gcw_publish_gift.iff", -5677.32, 0.149077, -5016.6, 0, 0.433096, 0, 0.901348, 0)

spawnSceneObject("mandalore", "object/tangible/terminal/terminal_gcw_publish_gift.iff", -6649.92, 30, 5596.3, 0, 0.798931, 0, -0.601423, 0) 

spawnSceneObject("mandalore", "object/tangible/terminal/terminal_gcw_publish_gift.iff", 1075.33, 2.82873, 2755.1, 0, 0.494831, 0, 0.86899, 0) 
 
spawnSceneObject("mandalore", "object/tangible/terminal/terminal_gcw_publish_gift.iff", 4713.71, 2.03845, 7169.93, 0, -0.0409269, 0, 0.999162, 0) 

end
