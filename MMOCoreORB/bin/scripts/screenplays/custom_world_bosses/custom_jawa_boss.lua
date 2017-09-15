custom_jawa_boss_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "custom_jawa_boss_screenplay",

}

registerScreenPlay("custom_jawa_boss_screenplay", true)

function custom_jawa_boss_screenplay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function custom_jawa_boss_screenplay:spawnMobiles()
  	spawnMobile("tatooine", "custom_jawa_boss", 1800, -6180, 7, 1956, 15, 0)
	spawnMobile("tatooine", "custom_jawa_bodyguard", 1800, -6157, 6, 1959, 15, 0)
	spawnMobile("tatooine", "custom_jawa_bodyguard", 1800, -6190, 10, 1925, 15, 0)
	spawnMobile("tatooine", "custom_jawa_bodyguard", 1800, -6262, 12, 1914, 15, 0)
	spawnMobile("tatooine", "custom_jawa_bodyguard", 1800, -6214, 10, 1990, 15, 0)
end
