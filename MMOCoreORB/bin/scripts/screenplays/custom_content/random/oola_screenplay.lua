oola_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "oola_screenplay",
}

registerScreenPlay("oola_screenplay", true)

function oola_screenplay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
	end
end

function oola_screenplay:spawnMobiles()
       spawnMobile("corellia", "oola_boss", 900, -391,28,-4487,15, 0)
       spawnMobile("tatooine", "oola_boss", 900, 3515,5,-4858,15, 0)
       spawnMobile("naboo", "oola_boss", 900, -5173,6,4139,15, 0)
       spawnMobile("tatooine", "watto_boss", 450, -2931,5,2447,15, 0)
end
