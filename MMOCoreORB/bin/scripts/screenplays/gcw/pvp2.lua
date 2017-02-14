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
end