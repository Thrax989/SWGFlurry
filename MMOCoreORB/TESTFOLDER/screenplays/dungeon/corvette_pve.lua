--[[NEUTRAL CORVETTE
Spawning scene objects which will include active areas, elevators
spawning mobiles to include droids, and possibly more
will work on getting a simple quest involed
also going to put a timer on the duration of which one will be in the vet

basic waypoint -20, 0, 0, 4336197]]

corvette_pveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("corvette_pveScreenPlay", true)

function corvette_pveScreenPlay:start()
	if (isZoneEnabled("dungeon1")) then
		self:spawnMobiles()
		self:spawnSceneObjects() 
	end
end

--TODO: use a pointer on a mobile.

function corvette_pveScreenPlay:spawnSceneObjects()

--	local pCollector = spawnSceneObject("tatooine", "object/tangible/furniture/imperial/data_terminal_s1.iff", -1441, 0, -5657, 0, 0, 0, 1, 0)
--	local collector = LuaSceneObject(pCollector)
--	local col2creo = LuaCreatureObject(pCollector)
--	col2creo:setOptionsBitmask(264)
--	collector:setCustomObjectName("\\#FF0000Travel to General Grievous's Corvette!")
--	createObserver(OBJECTRADIALUSED, "corvette_pveScreenPlay", "teleportCor", pCollector)
end

--[[spawnMobile("MOBILENAME", SPAWNTIMER, FIRST SET OF COORDS, HEIGHT, 2ND SET OF COORDS, DIRECTION, CELL (0 IF NOT IN ONE)]]
function corvette_pveScreenPlay:spawnMobiles()

	local pCollector1 = spawnMobile("space_corellia", "eg6_port", 120, 0.0, 172.3, 233.3, 0, 281475109221054)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to Coronet, Corellia")
	createObserver(OBJECTRADIALUSED, "corvette_pveScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
--[[	local pCollector1 = spawnMobile("tatooine", "droidekaport", 120, 3483.1, 5.0, -4838, 119, 0)
	local collector1 = LuaCreatureObject(pCollector1)
	collector1:setOptionsBitmask(264)
	collector1:setCustomObjectName("\\#FF0000Travel to General Grievous's Corvette")
	createObserver(OBJECTRADIALUSED, "corvette_pveScreenPlay", "teleportCor", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end --]]
--POINTER FOR MOBILE TO SPAWN OUT OF VET
	local pCollector3 = spawnMobile("dungeon1", "eg6_port", 120, -33.1, 0.0, -0.7, 90, 281475060670031)--Spawn him with a -> to pCollector (he is pCollector)
	local collector3 = LuaCreatureObject(pCollector3)--Setting him to collector (he is collector)
	collector3:setOptionsBitmask(264)--Set his options to be convo
	collector3:setCustomObjectName("\\#FF0000Transport off the Grievous Corvette")	
	createObserver(OBJECTRADIALUSED, "corvette_pveScreenPlay", "teleportOut", pCollector3)--creating an observer, type,which screenplay, stringToRead, pointer
	if (pCollecter3~= nil) then -- if he is false, then return  false`
		return
	end
	
--STARTING FLOOR
	--[[ENTRY ROOM CELL 4336197]]
	--spawnMobile("dungeon1","mandalorian_atiniir", 1, -40, 0, 2, -153, 4336197)

	--[[CELL 281475060670031]]
	spawnMobile("dungeon1","vette_security_force", 240, -3.3, 0.0, 0.7, -60, 281475060670031)

	--[[CELL 281475060670032]]
	spawnMobile("dungeon1","vette_security_force", 240, 0.0, 0.0, 26.4, 177, 281475060670032)
	spawnMobile("dungeon1","vette_security_force", 240, 0.0, 0.0, 12.5, 177, 281475060670032)


	--[[DUNGEONHALL4 CELL 281475060670033]]
	spawnMobile("dungeon1","vette_battle_droid", 120,   -10, 0, 37,   0, 281475060670033)
	spawnMobile("dungeon1","vette_battle_droid", 120,   -10, 0, 26,  -2, 281475060670033)
	spawnMobile("dungeon1","vette_battle_droid", 120,   -12, 0, 18, -94, 281475060670033)
	spawnMobile("dungeon1","corvette_sbd", 180,    -4, 0, 17,  67, 281475060670033)
	spawnMobile("dungeon1","vette_battle_droid", 120,    -4, 0, 19, 104, 281475060670033)
	spawnMobile("dungeon1","vette_battle_droid", 120,    -10, 0, 14,   2, 281475060670033)
	spawnMobile("dungeon1","vette_battle_droid", 120,   -10, 0,  6, 179, 281475060670033)

	--[[CELL 281475060670034]]
	spawnMobile("dungeon1","vette_security_force", 240, 5.0, 0.0, 17.9, 0, 281475060670034)

	--[[BARACKS CELL 281475060670036]]
	spawnMobile("dungeon1","vette_battle_droid", 120,   -10, 0,  47,  175, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,    -7, 0,  46,   -1, 281475060670036)
	spawnMobile("dungeon1","corvette_sbd", 180,    -4, 0,  46,  179, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,   -10, 0,  60,    3, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,    -7, 0,  59,  177, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,    -4, 0,  60,   -4, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,     3, 0,  46,    0, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,     7, 0,  46,   -3, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,    11, 0,  46,   -1, 281475060670036)
	spawnMobile("dungeon1","corvette_sbd", 180,    10, 0,  53,  -91, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,    12, 0,  58,   75, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,     8, 0,  59,  177, 281475060670036)
	spawnMobile("dungeon1","vette_battle_droid", 120,     4, 0,  59, -178, 281475060670036)

	--[[CELL 281475060670040]]
	spawnMobile("dungeon1","vette_droideka", 240, 12.2, 0.0, -0.9, -17, 281475060670040)

	--[[CELL 281475060670041]]
	spawnMobile("dungeon1","vette_battle_droid", 120,   10, 0, 37,   0, 281475060670041)
	spawnMobile("dungeon1","vette_battle_droid", 120,   10, 0, 26,  -2, 281475060670041)
	spawnMobile("dungeon1","corvette_sbd", 180,   10, 0, 18, -94, 281475060670041)
	spawnMobile("dungeon1","vette_battle_droid", 120,    10, 0, 14,   2, 281475060670041)
	spawnMobile("dungeon1","vette_battle_droid", 120,   10, 0,  6, 179, 281475060670041)

	--[[CELL 281475060670042]]
	spawnMobile("dungeon1","corvette_sbd", 180, -10.2, 0.0, -18.0, -2, 281475060670042)
	spawnMobile("dungeon1","corvette_sbd", 180, -10.2, 0.0, -6.1, -2, 281475060670042)

	--[[CELL 281475060670043]]
	spawnMobile("dungeon1","corvette_sbd", 180, 20.2, 0.0, -18.0, -2, 281475060670043)
	spawnMobile("dungeon1","corvette_sbd", 180, 20.2, 0.0, -6.1, -2, 281475060670043)

	--[[CELL 281475060670046]]
	spawnMobile("dungeon1","vette_droideka", 240, 5.1, 0.0, -30.1, -1, 281475060670046)

	--[[CELL 281475060670049]]
	spawnMobile("dungeon1","vette_security_force", 240, -0.5, 12,  25.9, -167, 281475060670049)
	spawnMobile("dungeon1","corvette_sbd", 240, -1.8, 12,  7.1, -98, 281475060670049)
	spawnMobile("dungeon1","corvette_sbd", 240, -1.8, 12,  -4.8, -104, 281475060670049)
	spawnMobile("dungeon1","vette_security_force", 240, -1.7, 12,  -23.0, 36, 281475060670049)

	--[[BARRACKS CLOSET QUEST GIVER CELL 4336205]]	
	--spawnMobile("dungeon1","corvette_crew", 120,   , 0,  , , 4336203)


	--[[BARRACKS CLOSET NO USE YET CELL 4336204]]
	--spawnMobile("dungeon1","mandalorian_rogue", 120, , 0, , , 4336204)

	--[[CELL 281475060670052]]
	spawnMobile("dungeon1","vette_security", 900, 2.0, 15.0, 34.8, -1, 281475060670052)--Boss Mob
	spawnMobile("dungeon1","vette_battle_droid", 30, 9.7, 15.0, 35.2, 85, 281475060670052)
	spawnMobile("dungeon1","corvette_sbd", 60, 2.1, 15.0, 32.7, -165, 281475060670052)
	spawnMobile("dungeon1","vette_battle_droid", 90, 7.6, 15.0, 37.7, 4, 281475060670052)

	--[[THURSTER CELL 281475060670053]]
	spawnMobile("dungeon1","vette_battle_droid", 120, -6.0, 0, -38,  86, 281475060670053)
	spawnMobile("dungeon1","vette_battle_droid", 120, -0.1, 0, -37, 177, 281475060670053)
	spawnMobile("dungeon1","vette_battle_droid", 120,  6.0, 0, -38, -93, 281475060670053)
	spawnMobile("dungeon1","vette_battle_droid", 120,  4.0, 0, -41, 177, 281475060670053)
	spawnMobile("dungeon1","vette_battle_droid", 120,   -3, 0, -41, 179, 281475060670053)

	--[[LOWER THURSTER ROOM LEFT CELL 281475060670053]]
	spawnMobile("dungeon1","vette_security_probe", 120, -15.1, -12, -42.1, -62, 281475060670053)
	spawnMobile("dungeon1","vette_security_probe", 120, -21.3, -12, -49.3, -31, 281475060670053)
	spawnMobile("dungeon1","vette_droideka", 240, -27.7, -12, -60.4, -5, 281475060670053)
	spawnMobile("dungeon1","vette_droideka", 240, -29.7, -12, -38.5, 41, 281475060670053)

	--[[LOWER-THURSTER ROOM RIGHT CELL 281475060670053]]
	spawnMobile("dungeon1","vette_battle_droid", 120, 12, -12, -40, -50, 281475060670053)
	spawnMobile("dungeon1","vette_battle_droid", 120,  27, -12, -39,  -1, 281475060670053)
	spawnMobile("dungeon1","vette_battle_droid", 120,   8, -12, -54, -84, 281475060670053)
	spawnMobile("dungeon1","vette_battle_droid", 120, 23,  -12, -58,   5, 281475060670053)
	spawnMobile("dungeon1","vette_battle_droid", 120, 27,  -12, -59,  -6, 281475060670053)
	spawnMobile("dungeon1","vette_droideka", 240, 14.1, -12, -48.8, 47, 281475060670053)
	spawnMobile("dungeon1","vette_droideka", 240, 15.3, -12, -59.5, 18, 281475060670053)

	--[[THRUSTERROOM ENGINEERING CELL 281475060670056]]
	spawnMobile("dungeon1","corvette_engineer_2", 900, -4.6, -6.7, -38.3, -109, 281475060670056)--Boss Mob
	spawnMobile("dungeon1","vette_battle_droid", 60, -7.1, -6.7, -41.0, -99, 281475060670056)
	spawnMobile("dungeon1","vette_battle_droid", 60,  -6.8, -6.7, -35.5, -146, 281475060670056)
	spawnMobile("dungeon1","vette_droideka", 300, 7.9, -6.7, -41.9, -75, 281475060670056)
	spawnMobile("dungeon1","vette_droideka", 180, 8.1, -6.7, -35.1, -114, 281475060670056)

	--[[THRUSTERROOM ENGINEERING CELL 281475060670057]]
	spawnMobile("dungeon1","vette_battle_droid", 120,    8, -14, -33,  -1, 281475060670057)
	spawnMobile("dungeon1","vette_battle_droid", 120, -0.4, -14, -33,  10, 281475060670057)
	spawnMobile("dungeon1","corvette_engineer", 900,    0, -14, -41, 178, 281475060670057)--Boss Mob
	spawnMobile("dungeon1","vette_droideka", 300,   -3, -14, -36,  90, 281475060670057)
	spawnMobile("dungeon1","vette_security_force", 240,   7.6, -14, -40,  179, 281475060670057)

	--[[MESSHALL CELL 281475060670062]]
	spawnMobile("dungeon1","vette_battle_droid", 120, 6, -12, 0, 11, 281475060670062)
	spawnMobile("dungeon1","vette_battle_droid", 120, 12, -12, 9, -94, 281475060670062)
	spawnMobile("dungeon1","vette_battle_droid", 120, 4, -12, 2, 177, 281475060670062)
	spawnMobile("dungeon1","vette_battle_droid", 120, 7, -12, 11, 171, 281475060670062)

	--[[ESCAPEPODS CELL 281475060670063]]
	spawnMobile("dungeon1","corvette_sbd", 180, 18, -12,  28,  -90, 281475060670063)
	spawnMobile("dungeon1","vette_battle_droid", 120, 26, -12,  28,   92, 281475060670063)
	spawnMobile("dungeon1","vette_battle_droid", 120, 25, -12,  35,    0, 281475060670063)
	spawnMobile("dungeon1","vette_battle_droid", 120, 25, -12,  16,    0, 281475060670063)
	spawnMobile("dungeon1","vette_security_force", 300, 25, -12,   4, -179, 281475060670063)
	spawnMobile("dungeon1","vette_battle_droid", 120, 25, -12, -12,  178, 281475060670063)
	spawnMobile("dungeon1","vette_battle_droid", 120, 25, -12, -19,  175, 281475060670063)
	spawnMobile("dungeon1","corvette_sbd", 180, 22, -12, -16,  -92, 281475060670063)
	spawnMobile("dungeon1","vette_battle_droid", 120,  7, -12, -15, -108, 281475060670063)
	spawnMobile("dungeon1","vette_battle_droid", 120,  7, -12, -17,  -68, 281475060670063)

	--[[ CELL 281475060670064]]
	spawnMobile("dungeon1","vette_security_force", 240, 3.1, -12, -24.7, 29, 281475060670064)
	spawnMobile("dungeon1","vette_security_force", 240, 5.3, -12,  -5.1, 112, 281475060670064)
	spawnMobile("dungeon1","vette_security_force", 240, 15.9, -12, 3.5, -53, 281475060670061)

	--[[ESCAPEPODS CELL 281475060670067]]
	spawnMobile("dungeon1","corvette_sbd", 180, -3.5, -12,  7.9, 87, 281475060670067)
	spawnMobile("dungeon1","vette_battle_droid", 120, -7.3, -12,  2.9, 178, 281475060670067)
	spawnMobile("dungeon1","vette_battle_droid", 120, -4.3, -12,  9.2, 108, 281475060670067)
	spawnMobile("dungeon1","vette_battle_droid", 120, -6.1, -12,  16.3, -48, 281475060670067)

	--[[ESCAPEPODS CELL 281475060670068]]
	spawnMobile("dungeon1","corvette_sbd", 180, -18, -12,  28,  -90, 281475060670068)
	spawnMobile("dungeon1","vette_battle_droid", 120, -26, -12,  28,   92, 281475060670068)
	spawnMobile("dungeon1","vette_battle_droid", 120,- 25, -12,  35,    0, 281475060670068)
	spawnMobile("dungeon1","vette_battle_droid", 120, -25, -12,  16,    0, 281475060670068)
	spawnMobile("dungeon1","vette_security_force", 240, -25, -12,   4, -179, 281475060670068)
	spawnMobile("dungeon1","vette_battle_droid", 120, -25, -12, -12,  178, 281475060670068)
	spawnMobile("dungeon1","vette_battle_droid", 120, -25, -12, -19,  175, 281475060670068)
	spawnMobile("dungeon1","corvette_sbd", 180, -22, -12, -16,  -92, 281475060670068)
	spawnMobile("dungeon1","vette_battle_droid", 120,  -7, -12, -15, -108, 281475060670068)
	spawnMobile("dungeon1","vette_battle_droid", 120,  -7, -12, -17,  -68, 281475060670068)

	--[[CELL 281475060670069]]
	spawnMobile("dungeon1","vette_security_force", 180, -0.1, -12.0, 58.4, 178, 281475060670069)
	spawnMobile("dungeon1","corvette_sbd", 240, -0.0, -12.0, 47.1, 173, 281475060670069)

	--[[CELL 281475060670070]]
	spawnMobile("dungeon1","vette_security_force", 240, 6.5, -12.0, 42.4, 140, 281475060670070)

	--[[CELL 281475060670071]]
	spawnMobile("dungeon1","vette_security_force", 240, -6.8, -12.0, 41.9, -147, 281475060670071)

	--[[CELL 281475060670076]]
	spawnMobile("dungeon1","vette_battle_droid", 120, 3.2, -12, 75.3, -2, 281475060670076)
	spawnMobile("dungeon1","vette_battle_droid", 120, -3.3, -12, 74.7, -63, 281475060670076)
	spawnMobile("dungeon1","vette_battle_droid", 120, 3.3, -12, 66.8, 179, 281475060670076)
	spawnMobile("dungeon1","corvette_sbd", 180, -2.1, -12, 70.0, 52, 281475060670076)

	--[[CELL 281475060670081]]
	spawnMobile("dungeon1","corvette_sbd", 180, 1.2, -12.0, 97.9, -100, 281475060670081)
	spawnMobile("dungeon1","corvette_sbd", 180, -1.2, -12.0, 97.9, 80, 281475060670081)
	spawnMobile("dungeon1","corvette_sbd", 180, -1.2, -12.0, 86.3, 80, 281475060670081)
	spawnMobile("dungeon1","corvette_sbd", 180, 1.2, -12.0, 86.3, -92, 281475060670081)	

	--[[CELL 281475060670082]]
	spawnMobile("dungeon1","vette_security_force", 240, -15.8, -12.0, 110.1, -44, 281475060670082)
	spawnMobile("dungeon1","vette_security_force", 240, 15.2, -12.0, 110.1, 27, 281475060670082)

	--[[BRIDGE ARMORY CELL 281475060670083]]
	spawnMobile("dungeon1","vette_battle_droid", 120,   10, -12, 120.0,  -1, 281475060670083)
	spawnMobile("dungeon1","vette_battle_droid", 120,  8.4, -12, 120.0,  10, 281475060670083)
	spawnMobile("dungeon1","vette_battle_droid", 120,   6.8, -12, 120.0, 178, 281475060670083)
	spawnMobile("dungeon1","corvette_sbd", 180,   3.9, -12, 120.0,  90, 281475060670083)
	spawnMobile("dungeon1","vette_battle_droid", 120,   0, -12, 120.0,  -1, 281475060670083)
	spawnMobile("dungeon1","vette_battle_droid", 120, -2.4, -12, 120.0,  10, 281475060670083)
	spawnMobile("dungeon1","vette_battle_droid", 120,   -4.8, -12, 120.0, 178, 281475060670083)
	spawnMobile("dungeon1","vette_battle_droid", 120,   -6.9, -12, 120.0,  90, 281475060670083)
	spawnMobile("dungeon1","vette_security_force", 240, 0.1, -12.0, 126.8, 178, 281475060670083)

	--[[CELL 281475060670087]]
	spawnMobile("dungeon1","vette_security_force", 120, 1.4, -24.0, 110.8, 82, 281475060670087)
	spawnMobile("dungeon1","corvette_sbd", 120, 1.1, -24.0, 98.0, -92, 281475060670087)
	spawnMobile("dungeon1","corvette_sbd", 120, -1.2, -24.0, 98.0, 85, 281475060670087)
	spawnMobile("dungeon1","vette_battle_droid", 240, 18.7, -24.0, 113.0, -23, 281475060670087)
	spawnMobile("dungeon1","vette_security_force", 240, 14.5, -24.0, 110.6, 33, 281475060670087)

	--[[CELL 281475060670089]]
	spawnMobile("dungeon1","vette_battle_droid", 120, -3.4, -27.0, 76.0, -157, 281475060670089)
	spawnMobile("dungeon1","vette_battle_droid", 900, -4.7, -27.0, 78.6, -96, 281475060670089)
	spawnMobile("dungeon1","r2_blaster", 240,  3.6, -27.0, 80.3, 26, 281475060670089)--Boss Mob
	spawnMobile("dungeon1","vette_battle_droid", 240,  3.3, -27.0, 75.7, 161, 281475060670089)

	--[[CELL 281475060670090]]
	spawnMobile("dungeon1","vette_security_force", 240, -15.3, 0, 110.1,  20, 281475060670090)
	spawnMobile("dungeon1","vette_security_force", 240, 15.5, 0, 110.2,  -43, 281475060670090)

	--[[CELL 281475060670091]]
	spawnMobile("dungeon1","vette_security_force", 240,    0, 0, 128.0,  178, 281475060670091)
	spawnMobile("dungeon1","vette_security_force", 240,    -0.2, 0, 139.2,  178, 281475060670091)
	spawnMobile("dungeon1","vette_security_force", 240,    0.1, 0, 115.2,  178, 281475060670091)	

	--[[CELL 281475060670092]]
	spawnMobile("dungeon1","vette_security_probe", 30, 21.0, 0, 119.0, -1, 281475060670092)
	spawnMobile("dungeon1","vette_security_probe", 60, 20.4, 0, 124.9, 10, 281475060670092)
	spawnMobile("dungeon1","vette_security_probe", 90, 14.8, 0, 123.8, 178, 281475060670092)
	spawnMobile("dungeon1","vette_security_probe", 120, 16.9, 0, 120.3, 90, 281475060670092)
	spawnMobile("dungeon1","ig_72_assassin_droid", 900, 18.0, 0, 125.2, 168, 281475060670092)--Boss Mob	

	--[[CELL 281475060670093]]
	spawnMobile("dungeon1","corvette_sbd", 240,    6.1, 0.0, 135.1,  178, 281475060670093)
	spawnMobile("dungeon1","vette_battle_droid", 240,    7.5, 0.0, 128.0,  85, 281475060670093)

	--[[CELL 281475060670094]]
	spawnMobile("dungeon1","corvette_sbd", 240,    -7.5, 0.0, 131.9,  -101, 281475060670094)
	spawnMobile("dungeon1","vette_battle_droid", 240,    -7.6, 0.0, 126.3,  -21, 281475060670094)

	--[[CELL 281475060670095]]	
	spawnMobile("dungeon1","corvette_boss", 900,    -0.1, 0.0, 148.7,  -1, 281475060670095)--Boss Mob
	spawnMobile("dungeon1","vette_battle_droid", 30, -6.1, 0.0, 149.0,  -87, 281475060670095)
	spawnMobile("dungeon1","corvette_sbd", 60, -4.6, 0, 145.5, -165, 281475060670095)
	spawnMobile("dungeon1","vette_battle_droid", 90,   6.1, 0, 149.3,  88, 281475060670095)

end

function corvette_pveScreenPlay:teleportCor(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon1", -30, 0, 0, 281475060670031)
	return 0
end

function corvette_pveScreenPlay:teleportOut(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("corellia", -162.0, 28.0, -4738.0, 0)
	return 0
end

function corvette_pveScreenPlay:teleportOut(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("tatooine", 3531.4, 5.0, -4802, 0)
	return 0
end

function corvette_pveScreenPlay:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then

		local x1 = 0.0
		local y1 = 148.9
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 9
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "You will not take this ship from me!")
--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setOptionsBitmask(264)
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)			
			createEvent(3500, "corvette_pveScreenPlay", "resetScreenplayStatus", pPlayer)
--			boss:setOptionsBitmask(128)			
		end
        end
	return 0
end

