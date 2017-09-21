custom_exar_kun_boss_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "custom_exar_kun_boss_screenplay",

}

registerScreenPlay("custom_exar_kun_boss_screenplay", true)

function custom_exar_kun_boss_screenplay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function custom_exar_kun_boss_screenplay:spawnMobiles()
  	spawnMobile("yavin4", "custom_exar_kun_boss", 1800, 5063, 73, 5487, 15, 0)
	
end
