particle_animationsScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "particle_animationsScreenPlay"
}

registerScreenPlay("particle_animationsScreenPlay",  true)

function particle_animationsScreenPlay:start()
	if (isZoneEnabled("tatooine")) and (isZoneEnabled("naboo"))  then
		self:spawnParticles()
	end
end

function particle_animationsScreenPlay:spawnParticles()
	spawnSceneObject("tatooine","object/static/space/ship/cargo_freighter.iff", -1475.4, 70.0, -5693.8, 0, 0, 0, 0, 0)
--	spawnSceneObject("tatooine","object/static/space/asteroid/asteroid_molten_small_01.iff", 2000.2, 242.2, 2000.8, 0, 0, 0, 0, 0)	
	spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_tb_vs_bw_3.iff", -1366.5, 0.0, -5719.5, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_t_vs_x_3.iff", -1458.2, 0.0, -5703.7, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_3.iff", -1418.5, 0.0, -5762.5, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_imperial.iff", -1356.5, 0.0, -5712.5, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_imperial.iff", -1361.5, 0.0, -5700.5, 0, 0, 0, 0, 0)	
	spawnSceneObject("tatooine","object/static/particle/particle_distant_ships_rebel.iff", -1351.5, 0.0, -5720.5, 0, 0, 0, 0, 0)	
	spawnSceneObject("naboo","object/static/particle/particle_distant_ships_dogfight_ti_vs_aw_3.iff", -5030.5, -106.9, 6082.5, 0, 0, 0, 0, 0)
	spawnSceneObject("naboo","object/static/particle/particle_distant_ships_imperial.iff", -5031.5, -106.9, 6081.5, 0, 0, 0, 0, 0)	
	spawnSceneObject("naboo","object/static/particle/particle_distant_ships_imperial.iff", -4892.5, 6.9, 4143.5, 0, 0, 0, 0, 0)	
	spawnSceneObject("naboo","object/static/particle/particle_distant_ships_imperial.iff", -4891.5, 6.9, 4142.5, 0, 0, 0, 0, 0)	
	spawnSceneObject("naboo","object/static/particle/particle_distant_ships_imperial.iff", -5058.5, 6.9, 4241.5, 0, 0, 0, 0, 0)	
	spawnSceneObject("naboo","object/static/particle/particle_distant_ships_dogfight_t_vs_x_3.iff", -5113.5, 6.9, 4279.5, 0, 0, 0, 0, 0)	
	spawnSceneObject("naboo","object/static/space/ship/corellian_corvette.iff", -4892.4, 78.0, 4109.8, 0, 0, 0, 0, 0)	
end
