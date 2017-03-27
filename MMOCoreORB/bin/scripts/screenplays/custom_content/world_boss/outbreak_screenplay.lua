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
  	spawnMobile("lok", "outbreak_boss", 3000, 3473,73,2417,15, 0)
	spawnMobile("dathomir", "outbreak_boss_two", 3000, 2540,100,-6480,3, 0)
end
