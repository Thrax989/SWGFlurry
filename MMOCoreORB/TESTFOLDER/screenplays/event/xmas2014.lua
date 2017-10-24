xmas2014 = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "xmas2014"
}

registerScreenPlay("xmas2014",  true)

function xmas2014:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
    end
end

function xmas2014:spawnMobiles()
	--Set the tabe...Structure Placement

	--spawnSceneObject("corellia","object/mobile/nerf.iff", -157.0, 28.0, -4709.0, 0, 0, 0, -1, 0)
	spawnSceneObject("corellia","object/mobile/lifeday_monkey_lizard_2.iff", -158.0, 28.0, -4710.0, 0, 0, 0, -1, 0)
	spawnSceneObject("corellia","object/mobile/wookiee_lifeday_elder.iff", -165.0, 28.0, -4737.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/mobile/wookiee_lifeday_female1.iff", -166.0, 28.0, -4736.0, 0, 0, 0, 0, 0)
	spawnSceneObject("corellia","object/mobile/wookiee_lifeday_female2.iff", -164.0, 28.0, -4738.0, 0, 0, 0, 0, 0)
	spawnSceneObject("corellia","object/mobile/wookiee_lifeday_male1.iff", -163.0, 28.0, -4738.0, 0, 0, 0, 0, 0)
	spawnSceneObject("corellia","object/mobile/wookiee_lifeday_male2.iff", -167.0, 28.0, -4735.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/furniture/lifeday/lifeday_proton_chair.iff", -159.0, 28.0, -4715.0, 0, 1, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/furniture/decorative/event_lifeday07_lamp.iff", -125.0, 28.0, -4730.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/furniture/decorative/event_lifeday07_lamp.iff", -133.0, 28.0, -4715.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/furniture/decorative/event_lifeday07_lamp.iff", -172.0, 28.0, -4717.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/furniture/decorative/event_lifeday07_lamp.iff", -172.0, 28.0, -4730.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/furniture/decorative/event_lifeday07_lamp.iff", -161.0, 28.0, -4739.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/furniture/decorative/event_lifeday07_lamp.iff", -167.0, 28.0, -4734.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/storyteller/prop/pr_lifeday_incense_burner.iff", -163.0, 28.0, -4735.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/storyteller/prop/pr_lifeday_fireplace_02.iff", -160.0, 28.0, -4713.0, 0, 0.8, 0, 0.7, 0)
        spawnSceneObject("corellia","object/tangible/storyteller/prop/pr_lifeday_decorated_tree.iff", -160.0, 28.0, -4708.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/storyteller/prop/pr_lifeday_decorated_tree.iff", -170.0, 28.0, -4730.0, 0, 0, 0, -1, 0)
        spawnSceneObject("corellia","object/tangible/storyteller/prop/pr_lifeday_decorated_tree.iff", -170.0, 28.0, -4720.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/storyteller/prop/pr_lifeday_decorated_tree.iff", -133.0, 28.0, -4726.0, 0, 0, 0, -1, 0)
        spawnSceneObject("corellia","object/tangible/storyteller/prop/pr_lifeday_decorated_tree.iff", -132.0, 28.0, -4720.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/holiday/life_day/rewards_09/lifeday_ornament.iff", -172.0, 28.0, -4715.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/holiday/life_day/rewards_09/lifeday_ornament.iff", -172.0, 28.0, -4720.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/holiday/life_day/rewards_09/lifeday_ornament.iff", -172.0, 28.0, -4728.0, 0, 0, 0, 0, 0)
        spawnSceneObject("corellia","object/tangible/holiday/life_day/rewards_09/lifeday_ornament.iff", -172.0, 28.0, -4733.0, 0, 0, 0, 0, 0)
	
end






