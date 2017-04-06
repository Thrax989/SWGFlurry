tatooine_tusken_bunker_boss= ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("tatooine_tusken_bunker_boss", true)

function tatooine_tusken_bunker_boss:start()
	if (isZoneEnabled("tatooine")) then
		print("tatooine Enabled: Spawning tatooine_tusken_bunker_boss")
		self:spawnMobiles()
	end
end

function tatooine_tusken_bunker_boss:spawnMobiles()


	local pMoff = spawnMobile("tatooine", "taiken_moff", 1200, 1, -20, 33, -2, 4235606)
        	createObserver(OBJECTDESTRUCTION, "tatooine_tusken_bunker_boss", "notifyMoffDead", pMoff)
end

function tatooine_tusken_bunker_boss:notifyMoffDead(pMoff, pKiller)
	local player = LuaCreatureObject(pKiller)
  local pBoss = spawnMobile("tatooine", "taiken_bunker_boss", 0, -3, -20, 15, 48, 4235606) print("spawned POTDS")
			spatialChat(pBoss, "NOW YOU WILL DIE!")
        return 0
end
