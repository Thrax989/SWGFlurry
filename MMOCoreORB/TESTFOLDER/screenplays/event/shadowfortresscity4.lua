shadowfortresscity4ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "shadowfortresscity4ScreenPlay"
}

registerScreenPlay("shadowfortresscity4ScreenPlay", true)

function shadowfortresscity4ScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end
function shadowfortresscity4ScreenPlay:spawnMobiles()
	--Kens City Upgrades
	
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_gate_tatooine_wide_style_01.iff", 4628.5, 12.4, -3843.3, 0, -179, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_gate_tatooine_wide_style_01.iff", 5216.2, 11.8, -3855.8, 0, 0, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", 5216.5, 11.8, -3840.4, 0, 0, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", 5216.5, 11.8, -3871.2, 0, 0, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", 4628.5, 12.4, -3858.7, 0, -179, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/tatooine/wall_pristine_tatooine_large_style_02.iff", 4628.5, 12.4, -3827.9, 0, -179, 0, 0, 0)

end