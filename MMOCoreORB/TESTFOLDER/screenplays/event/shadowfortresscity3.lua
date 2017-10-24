shadowfortresscity3ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "shadowfortresscity3ScreenPlay"
}

registerScreenPlay("shadowfortresscity3ScreenPlay", true)

function shadowfortresscity3ScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end
function shadowfortresscity3ScreenPlay:spawnMobiles()
	--Kens City Upgrades
	
	spawnSceneObject("lok", "object/building/tatooine/parking_garage_tatooine_style_1.iff", 4701.3, 11.9, -3880.5, 0, 0, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/general/palette_supply_01.iff", 4893.4, 13.2, -3700.7, 0, 37, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/general/palette_supply_01.iff", 4893.9, 13.1, -3685.8, 0, 11, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/general/palette_supply_01.iff", 4848.2, 13.0, -3557.7, 0, 59, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/general/palette_supply_01.iff", 5001.8, 13.4, -3638.1, 0, -151, 0, 0, 0)
	spawnSceneObject("lok", "object/static/structure/general/palette_supply_01.iff", 4854.2, 12.1, -3893.0, 0, 58, 0, 0, 0)

end