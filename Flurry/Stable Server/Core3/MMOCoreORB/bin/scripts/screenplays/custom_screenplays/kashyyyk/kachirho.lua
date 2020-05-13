KachirhoScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "KachirhoScreenPlay",

	planet = "kashyyyk",

}

registerScreenPlay("KachirhoScreenPlay", true)

function KachirhoScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
		self:spawnSceneObjects()

	end
end

function KachirhoScreenPlay:spawnSceneObjects()

	--spawnSceneObject("kashyyyk", "object/building/military/outpost_starport.iff", -669.73, 18.85, -148.48, 0, 1, 0, 0, 0) 
	--spawnSceneObject("kashyyyk", "object/building/kashyyyk/mun_kash_tree_lg_s01.iff", -478.05, 20.48, 24.96, 0, 1, 0, 0, 0) 
	--spawnSceneObject("kashyyyk", "object/building/general/cave_morag.iff", -1764.17, 42.49, 1850.28, 0, 1.47)

end

function KachirhoScreenPlay:spawnMobiles()

	
end
