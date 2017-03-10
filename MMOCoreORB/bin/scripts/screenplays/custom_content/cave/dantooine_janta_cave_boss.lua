dantooine_janta_cave_boss= ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("dantooine_janta_cave_boss", true)

function dantooine_janta_cave_boss:start()
	if (isZoneEnabled("dantooine")) then
		print("dantooine Enabled: Spawning dantooine_janta_cave_boss")
		self:spawnMobiles()
	end
end

function dantooine_janta_cave_boss:spawnMobiles()


	local pChief = spawnMobile("dantooine", "janta_chieftain", 900, -123, -69, -169, 92, 529330)
        	createObserver(OBJECTDESTRUCTION, "dantooine_janta_cave_boss", "notifyChiefDead", pChief)
end

function dantooine_janta_cave_boss:notifyChiefDead(pChief, pKiller)
	local player = LuaCreatureObject(pKiller)
  local pBoss = spawnMobile("dantooine", "janta_cave_boss", 0, -91, -99, -89, 177, 529333) print("spawned POTDS")
			spatialChat(pBoss, "NOW YOU WILL DIE!")
        return 0
end
