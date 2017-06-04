outbreak_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "outbreak_screenplay ",

}

registerScreenPlay("outbreak_screenplay", true)

function outbreak_screenplay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
	end
end

function outbreak_screenplay:spawnMobiles()
  	spawnMobile("lok", "outbreak_boss", 1800, 3479,71,2467,15, 0)
	spawnMobile("dathomir", "outbreak_boss_two", 1800, 2540,100,-6480,3, 0)
end
