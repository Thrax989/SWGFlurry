tatooine_eisley_deco_ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "tatooine_eisley_deco_ScreenPlay",
	
}

registerScreenPlay("tatooine_eisley_deco_ScreenPlay", true)

function tatooine_eisley_deco_ScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnParticles()		
		self:spawnMobiles()
	end
end

function tatooine_eisley_deco_ScreenPlay:spawnParticles()

spawnSceneObject("tatooine","object/static/flora/flora_tree_palm_sm.iff", 3515.6,5.0,-4796.2,0,math.rad(152))
spawnSceneObject("tatooine","object/static/flora/flora_tree_palm_sm.iff", 3516.9,5.0,-4794.5,0,math.rad(298))
spawnSceneObject("tatooine","object/static/flora/flora_tree_palm_sm.iff", 3504.9,5.0,-4798.4,0,math.rad(74))
spawnSceneObject("tatooine","object/static/flora/flora_tree_palm_sm.iff", 3516.8,5.0,-4783.2,0,math.rad(247))


end

function tatooine_eisley_deco_ScreenPlay:spawnMobiles()

spawnMobile("tatooine", "trainer_chef", 60,3528.4,5.0,-4774.8,233,0)
spawnMobile("tatooine", "trainer_creaturehandler", 60,3459.6,5.0,-4861.2,134,0)

spawnMobile("tatooine", "trainer_tailor", 60,3504.8,5.0,-4810.7,58,0) 
spawnMobile("tatooine", "trainer_bioengineer", 60,3531.2,5.0,-4776.7,273,0)
spawnMobile("tatooine", "trainer_politician", 60,3247.4,7.0,-4883.5,0,0)
spawnMobile("tatooine", "trainer_commando", 60,3357.9,5.0,-4838.3,174,0)
spawnMobile("tatooine", "trainer_ranger", 60,3749.7,5.0,-4814.6,87,0)
spawnMobile("tatooine", "trainer_polearm", 60,-7.6,1.1,-13.2,324,1189639)
spawnMobile("tatooine", "trainer_squadleader", 60,-7.1,1.1,-10.9,-94,1189639)
spawnMobile("tatooine", "trainer_squadleader", 60,-7,1.1,-10.9,-94,1189639)
spawnMobile("tatooine", "trainer_unarmed", 60,-14.1,1.1,-13.0,33,1189639)

spawnMobile("tatooine", "trainer_lightsaber", 60,-4.7,-5.5,-7.2,50,1498888)
spawnMobile("tatooine", "trainer_powers", 60,-4.7,-5.5,-0.7,129,1498888)
spawnMobile("tatooine", "trainer_defender", 60,1.4,-5.5,-0.8,217,1498888)
spawnMobile("tatooine", "trainer_enhancer", 60,2.4,-5.5,-7.3,310,1498888)
spawnMobile("tatooine", "trainer_healer", 60,-4.7,-5.5,-3.9,89,1498888)

end
