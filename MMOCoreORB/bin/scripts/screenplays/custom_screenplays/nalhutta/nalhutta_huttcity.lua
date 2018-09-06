NalHuttaHuttCityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NalHuttaHuttCityScreenPlay"
}

registerScreenPlay("NalHuttaHuttCityScreenPlay", true)

function NalHuttaHuttCityScreenPlay:start()
	if (isZoneEnabled("nalhutta")) then
		self:spawnMobiles()
	end
end


function NalHuttaHuttCityScreenPlay:spawnMobiles()

	spawnMobile("nalhutta", "rebel_recruiter", 0, -800, 8, 1190, 0, 0)	
	spawnMobile("nalhutta", "imperial_recruiter", 0, -805, 8, 1190, 0, 0)

	
end
