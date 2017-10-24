--[[River Test
Spawning scene objects which will include active areas, elevators
spawning mobiles to include droids, and possibly more
will work on getting a simple quest involed
also going to put a timer on the duration of which one will be in the vet

basic waypoint -20, 0, 0, 4336197]]

river_partyScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("river_partyScreenPlay", true)

function river_partyScreenPlay:start()
	if (isZoneEnabled("rivertest")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function river_partyScreenPlay:spawnSceneObjects()

	local pCollector = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -146.0, 28.0, -4706.0, 0,math.rad(178))
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#FF0000Travel to Bloodfin Anniversary Party")
	createObserver(OBJECTRADIALUSED, "river_partyScreenPlay", "teleportPvCor", pCollector)


	local pCollector = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4874.7, 6.0, 4141.0, 0,math.rad(25))
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#FF0000Travel to Bloodfin Anniversary Party")
	createObserver(OBJECTRADIALUSED, "river_partyScreenPlay", "teleportPvCor", pCollector)

end
--[[spawnMobile("MOBILENAME", SPAWNTIMER, FIRST SET OF COORDS, HEIGHT, 2ND SET OF COORDS, DIRECTION, CELL (0 IF NOT IN ONE)]]
function river_partyScreenPlay:spawnMobiles()
--POINTER FOR MOBILE TO SPAWN OUT OF VET
	local pCollector3 = spawnMobile("rivertest", "figrin_dan", 120, 5.2, -6.7, -45.6, 170, 0)--Spawn him with a -> to pCollector (he is pCollector)
	local collector3 = LuaCreatureObject(pCollector3)--Setting him to collector (he is collector)
	collector3:setOptionsBitmask(264)--Set his options to be convo
	collector:setCustomObjectName("\\#FF0000Travel to Coronet City")
	createObserver(OBJECTRADIALUSED, "river_partyScreenPlay", "teleportOut", pCollector3)--creating an observer, type,which screenplay, stringToRead, pointer
	if (pCollecter3~= nil) then -- if he is false, then return  false`
		return
	end
	
	
--STARTING FLOOR

	--[[Load in 281475199510306]]
	spawnMobile("rivertest","rebel_recruiter", 120, 45.2, 0.1, -4.6, -10, 281475199510306)
	spawnMobile("rivertest","imperial_recruiter", 120, 43.4, 0.1, -4.6, -20, 281475199510306)
	spawnMobile("rivertest","rebel_recruiter", 120, -4.1, 26.4, 11.0, -10, 281475199510869)
	spawnMobile("rivertest","imperial_recruiter", 120, -3.8, 26.7, 13.1, -10, 281475199510869)




end

function river_partyScreenPlay:teleportPvCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("rivertest", -205.2, 1.3, 537.9, 0)
	return 0
end

function river_partyScreenPlay:teleportOut(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("corellia", -148.3, 28.0, -4721.5, 0)
	return 0
end




