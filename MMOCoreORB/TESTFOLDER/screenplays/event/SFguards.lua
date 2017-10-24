SFguards = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "SFguards"
}

registerScreenPlay("SFguards", true)

function SFguards:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end
function SFguards:spawnMobiles()
	--Mobiles
	
	spawnMobile("lok", "elite_sand_trooper", 120, 5217.2, 12.0, -3850.2, 85, 0)
	spawnMobile("lok", "elite_sand_trooper", 120, 5217.2, 12.0, -3861.2, 85, 0)
	spawnMobile("lok", "elite_sand_trooper", 120, 4627.5, 12.0, -3848.7, -89, 0)
	spawnMobile("lok", "elite_sand_trooper", 120, 4627.5, 12.0, -3838.7, -89, 0)

end