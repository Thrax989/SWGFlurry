starport_objects = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "starport_objects"
}

registerScreenPlay("starport_objects",  true)

function starport_objects:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
   	end
end

function starport_objects:spawnMobiles()
	--Set destroyed shuttle objects

--	spawnSceneObject("corellia", "object/creature/npc/theme_park/event_transport.iff", -48.7, 28, -4734.3, 0, math.rad(90))
--	spawnSceneObject("naboo", "object/creature/npc/theme_park/event_transport.iff", -4794.1, 16.9, 4240.2, 0, math.rad(0))
--	spawnSceneObject("tatooine", "object/creature/npc/theme_park/event_transport.iff", -1371.5, 12, -3576.2, 0, math.rad(0))
	
	
end






