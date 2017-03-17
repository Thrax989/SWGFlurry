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
  	spawnMobile("corellia", "outbreak_boss", 300, -218,36,-5010,5, 0)
end
