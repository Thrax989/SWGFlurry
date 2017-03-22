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
	spawnMobile("corellia", "outbreak_boss_two", 300, -92,31,-5005,-27, 0)
	spawnMobile("corellia", "woolamander_boss", 300, -91,28,-4858,-96, 0)
	spawnMobile("corellia", "reclusive_gurk_king", 300, -269,28,-4834,101, 0)
end
