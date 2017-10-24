SFmeanies = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "SFmeanies"
}

registerScreenPlay("SFmeanies", true)

function SFmeanies:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end
function SFmeanies:spawnMobiles()
	--Mobiles
	
	spawnMobile("lok", "giant_dune_kimogila", 180, 4692.2, 20.9, -3591.1, -34, 0)
	spawnMobile("lok", "giant_dune_kimogila", 180, 4961.0, 21.4, -3482.0, -130, 0)
	spawnMobile("lok", "giant_dune_kimogila", 180, 5142.4, 11.9, -3932.1, 121, 0)

end