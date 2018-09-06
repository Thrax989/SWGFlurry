
HothEchoBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "HothEchoBaseScreenPlay",
}
 
registerScreenPlay("HothEchoBaseScreenPlay", true)
 
function HothEchoBaseScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function HothEchoBaseScreenPlay:spawnSceneObjects()


local pCollector1 = spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff",82.6,-14.6,265.8,14201134,0,0,0,0)

	local collector1 = LuaSceneObject(pCollector1)
	collector1:setCustomObjectName("\\#FF0000Up")
	createObserver(OBJECTRADIALUSED, "HothEchoBaseScreenPlay", "teleportupcommand", pCollector1)
	if (pCollecter1~= nil) then 
		return
	end
end
function HothEchoBaseScreenPlay:teleportupcommand(pCollector, pPlayer)--current
	local player = LuaSceneObject(pPlayer)
	player:switchZone("dungeon2", -1.1, -64.3, 101.8, 14201113)
	return 0


end




function HothEchoBaseScreenPlay:spawnMobiles()

--command (boss)
spawnMobile("dungeon2", "dressed_rebel_general_rieekan_01", 3600, -18.1, 64.3, 118.7, 166, 14201113)


--hangar
--spawnMobile("dungeon2", "rebel_echo_pilot", 300, -256.5, 73.3, 522.7, 147, 14201117)
--spawnMobile("dungeon2", "rebel_echo_pilot", 300, -253.2, 73.3, 521.3, -141, 14201117)
--spawnMobile("dungeon2", "rebel_echo_pilot", 300, -257, 73.3, 519.6, 91, 14201117)
--spawnMobile("dungeon2", "rebel_echo_pilot", 300, -256.2, 73.3, 518.1, 49, 14201117)

--spawnMobile("dungeon2", "rebel_echo_officer", 300, -252.2, 73.3, 519, -29, 14201117)



--spawnMobile("dungeon2", "rebel_snow_trooper", 120, -207.6,73.3, 523.2, -44, 14201117)
--spawnMobile("dungeon2", "rebel_snow_trooper", 120, -223.5,73.3, 549.3, 85, 14201117)
--spawnMobile("dungeon2", "rebel_snow_trooper", 120, -255.7,73.3, 533.6, 111, 14201117)

--spawnMobile("dungeon2", "snowtrooper", 120, -205, 73.3, 541, -141, 14201117)
--spawnMobile("dungeon2", "snowtrooper", 120, -220, 73.4, 536, 166, 14201117)
--spawnMobile("dungeon2", "snowtrooper", 120, -230.2, 73.2, 526.5, -155, 14201117)
--spawnMobile("dungeon2", "snowtrooper", 120, -213.3, 73.3, 547.4, -173, 14201117)




--tauntauns

spawnMobile("dungeon2", "tauntaun", 300, -326.9, 78.6, 502.6, 128, 14201118)
spawnMobile("dungeon2", "tauntaun", 300, -330.9, 78.6, 498.6, 94, 14201118)

--officers 

--computer room
spawnMobile("dungeon2", "rebel_echo_officer", 300, -11.5, -21.8, 131.8, -126, 14201116)
spawnMobile("dungeon2", "rebel_echo_officer", 300, -8.1, -21.6, 130.1, -64, 14201116)
spawnMobile("dungeon2", "rebel_echo_officer", 300, -13.6, -20.7, 155.6, -44, 14201116)
spawnMobile("dungeon2", "rebel_echo_officer", 300, -5.2, -21, 153.7, -25, 14201116)
spawnMobile("dungeon2", "rebel_echo_officer", 300, -5.6, -21.1, 156.7, -176, 14201116)

--reactor room
spawnMobile("dungeon2", "rebel_echo_officer", 300, -65.6, -4.6, 7.3, 165, 14201130)
spawnMobile("dungeon2", "rebel_echo_officer", 300, -63.1, -4.6, 6.7, -150, 14201130)

spawnMobile("dungeon2", "rebel_echo_officer", 300, -62.4, -4.6, 33.4, -159, 14201129)
spawnMobile("dungeon2", "rebel_echo_officer", 300, -61, -4.6, 31.6, -93, 14201129)

--deep rooms
spawnMobile("dungeon2", "rebel_echo_officer", 300, -15.7, -18.3, -14.3, -139, 14201131)
spawnMobile("dungeon2", "rebel_echo_officer", 300, -16.5, -18.3, -17.1, 37, 14201131)

--troopers

--reactor room
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -65.6, -4.6, 19.6, 169, 14201130)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -67.6, -4.6, 25, 1, 14201129)

--computer room
spawnMobile("dungeon2", "rebel_snow_trooper", 300, 8.9, -21.7, 167.4, -96, 14201116)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, 18.8, -21.7, 137.5, -58, 14201116)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, 13.6, -21.6, 119.5, -92, 14201116)

--corridor
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -92.9, -0.6, 177.3, 123, 14201124)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -82.8, -2.3, 161.7, -9, 14201124)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -96.6, -1.3, 157.6, 51, 14201124)

spawnMobile("dungeon2", "rebel_snow_trooper", 300, -255.5, 62.4, 379.6, 102, 14201123)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -240.9, 56.8, 348, 33, 14201123)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -224.2, 56.2, 349.4, -73, 14201123)

--medbay
--spawnMobile("dungeon2", "rebel_snow_trooper", 300, 84.9, -14.7, 270.1, -16, 14201134)
--spawnMobile("dungeon2", "rebel_medic", 300, 89.8, -14.7, 289.7, 42, 14201134)

--storage
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -89.6, 43.4, 365.8, -83, 14201126)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -92.4, 43.4, 340, 76, 14201126)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -107.8, 43.4, 378, -179, 14201126)
spawnMobile("dungeon2", "rebel_snow_trooper", 300, -109.3, 43.3, 365.8, 56, 14201126)

--wampa
spawnMobile("dungeon2", "wampa", 300, 7.3, -16.8, 340.6, 89, 14201144)


end
