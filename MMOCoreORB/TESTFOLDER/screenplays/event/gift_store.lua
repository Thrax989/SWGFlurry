gift_store = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "gift_store"
}

registerScreenPlay("gift_store",  true)

function gift_store:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
   	end
end

function gift_store:spawnMobiles()
	--Set the tabe...Structure Placement

	spawnSceneObject("corellia","object/static/structure/corellia/corl_tent_small.iff", -127.0, 28.0, -4667.0, 0, 0, 0, -1, 0)
        spawnSceneObject("corellia","object/static/structure/general/palette_supply_02.iff", -127.0, 28.0, -4662.0, 0, 0, 0, -1, 0)
        spawnSceneObject("corellia","object/static/structure/general/palette_supply_01.iff", -124.0, 28.0, -4667.0, 0, 0, 0, -1, 0)
        spawnSceneObject("corellia","object/tangible/item/entertainer_console/stage_generated_backdrop_09.iff", -131.0, 28.0, -4661.0, 0, 0, 0, -1, 0)
        spawnSceneObject("corellia","object/tangible/item/entertainer_console/stage_generated_backdrop_01.iff", -124.0, 28.0, -4661.0, 0, 0, 0, 1, 0)
	
	
end






