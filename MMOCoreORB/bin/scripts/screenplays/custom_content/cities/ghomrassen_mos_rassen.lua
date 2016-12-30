GhomrassenMosRassenScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "GhomrassenMosRassenScreenPlay"
}

registerScreenPlay("GhomrassenMosRassenScreenPlay", true)

function GhomrassenMosRassenScreenPlay:start()
	if (isZoneEnabled("ghomrassen")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function GhomrassenMosRassenScreenPlay:spawnSceneObjects()
 
	-- Starport
    spawnSceneObject("ghomrassen", "object/static/particle/particle_distant_ships.iff", -3383, 200, -5176, 0, 1, 0, 0, 0)
	-- Shuttleport
    spawnSceneObject("ghomrassen", "object/static/particle/particle_distant_ships.iff", -3198, 200, -5294, 0, 1, 0, 0, 0)    

end

function GhomrassenMosRassenScreenPlay:spawnMobiles()

	spawnMobile("ghomrassen", "commoner",60,-3302,0,-5148.5,103,0)


	
	
	
	
	
	
	

end
