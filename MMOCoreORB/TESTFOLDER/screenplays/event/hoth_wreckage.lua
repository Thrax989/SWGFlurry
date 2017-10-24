hoth_wreckage = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "hoth_wreckage"
}

registerScreenPlay("hoth_wreckage", true)

function hoth_wreckage:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
	end
end
function hoth_wreckage:spawnMobiles()
	--Hoth Transport Wreckage
	
	spawnSceneObject("hoth", "object/static/structure/general/transport_debris_01.iff", 6313.9, 86.3, 2838.8, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/transport_debris_02.iff", 6315.7, 84.8, 2799.2, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/debris_deathstar_conduit.iff", 6331.9, 86.1, 2799.4, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/debris_deathstar_large_tube.iff", 6344.0, 86.3, 2805.4, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/debris_deathstar_small_chunk.iff", 6306.5, 87.2, 2846.1, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/debris_deathstar_small_tube.iff", 6299.7, 81.3, 2875.5, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/debris_deathstar_storage.iff", 6323.3, 73.2, 2891.4, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/debris_deathstar_tractorbeam.iff", 6331.6, 61.5, 2911.2, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/debris_deathstar_turbolaser.iff", 6358.9, 83.7, 2846.6, 0, 0, 0, 0, 0)
	spawnSceneObject("hoth", "object/static/structure/general/escape_pod.iff", 6400.8, 86.9, 2869.8, 0, 0, 0, 0, 0)

end

function hoth_wreckage:spawnMobiles()
	--Hoth Escape Pod Survivor
	
	spawnMobile("hoth", "crazed_scientist", 90, 6393.9, 86.9, 2874.5, -68, 0)
	
end	
