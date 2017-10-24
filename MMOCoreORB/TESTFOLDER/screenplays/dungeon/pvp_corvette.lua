--[[NEUTRAL CORVETTE
Spawning scene objects which will include active areas, elevators
spawning mobiles to include droids, and possibly more
will work on getting a simple quest involed
also going to put a timer on the duration of which one will be in the vet

basic waypoint -20, 0, 0, 4336197]]

pvp_corvetteScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("pvp_corvetteScreenPlay", true)

function pvp_corvetteScreenPlay:start()
	if (isZoneEnabled("dungeon1")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function pvp_corvetteScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", 7553.5, 0, -613.5, 0, 0, 0, 1, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#FF0000Travel to the PvP Vette")
	createObserver(OBJECTRADIALUSED, "pvp_corvetteScreenPlay", "teleportPvCor", pCollector)

end
--[[spawnMobile("MOBILENAME", SPAWNTIMER, FIRST SET OF COORDS, HEIGHT, 2ND SET OF COORDS, DIRECTION, CELL (0 IF NOT IN ONE)]]
function pvp_corvetteScreenPlay:spawnMobiles()
--POINTER FOR MOBILE TO SPAWN OUT OF VET
	local pCollector2 = spawnMobile("dungeon1", "ramna", 120, 22.5, 0.0, 117.6, -48, 4336594)--Spawn him with a -> to pCollector (he is pCollector)
	local collector2 = LuaCreatureObject(pCollector2)--Setting him to collector (he is collector)
	collector2:setOptionsBitmask(264)--Set his options to be convo
	createObserver(OBJECTRADIALUSED, "pvp_corvetteScreenPlay", "teleportOut", pCollector2)--creating an observer, type,which screenplay, stringToRead, pointer
	if (pCollecter2~= nil) then -- if he is false, then return  false`
		return
	end

	local pCollector3 = spawnMobile("dungeon1", "ramna", 120, 5.2, -6.7, -45.6, 170, 4336597)--Spawn him with a -> to pCollector (he is pCollector)
	local collector3 = LuaCreatureObject(pCollector3)--Setting him to collector (he is collector)
	collector3:setOptionsBitmask(264)--Set his options to be convo
	createObserver(OBJECTRADIALUSED, "pvp_corvetteScreenPlay", "teleportOut", pCollector3)--creating an observer, type,which screenplay, stringToRead, pointer
	if (pCollecter3~= nil) then -- if he is false, then return  false`
		return
	end
	
	
--STARTING FLOOR
	--[[ENTRY ROOM CELL 4336197]]
	--spawnMobile("dungeon1","mandalorian_atiniir", 1, -40, 0, 2, -153, 4336197)


	--[[Load in 4336532]]
	spawnMobile("dungeon1","rebel_recruiter", 120, 1.6, -6.7, -45.7, -179, 4336555)
	spawnMobile("dungeon1","imperial_recruiter", 120, 13.7, 0, 118.7, 54, 4336594)
--	spawnMobile("dungeon1","crowley", 820, 4.5, -12.0, 5.3, 87, 4336564)
--	spawnMobile("dungeon1","emperors_hand", 820, -3.5, -12.0, 8.4, -102, 4336569)



end

function pvp_corvetteScreenPlay:teleportPvCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon1", 13.7, 0, 118.7, 4336594)
end

function pvp_corvetteScreenPlay:teleportOut(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("tatooine", -1445, 0, -5663, 85)
end




