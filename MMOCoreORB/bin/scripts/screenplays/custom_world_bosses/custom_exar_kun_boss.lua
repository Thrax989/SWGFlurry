custom_exar_kun_boss_shard_1 = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("custom_exar_kun_boss_shard_1", true)

function custom_exar_kun_boss_shard_1:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function custom_exar_kun_boss_shard_1:spawnMobiles()


	local pCultist = spawnMobile("yavin4", "custom_exar_kun_cultist", 6000, 5068, 73, 5493, 15, 0)
			self:setMoodString(pCultist, "brooding")
		     	createObserver(OBJECTDESTRUCTION, "custom_exar_kun_boss_shard_1", "notifyCultistDead", pCultist)
end

function custom_exar_kun_boss_shard_1:notifyCultistDead(pCultist, pKiller)
	local player = LuaCreatureObject(pKiller)
  local pBoss = spawnMobile("yavin4", "custom_exar_kun_boss", 0, 5068, 73, 5493, 15, 0) print("spawned POTDS")
			spatialChat(pBoss, "I AM RELEASED! NOW YOU WILL DIE!")
        return 0
end