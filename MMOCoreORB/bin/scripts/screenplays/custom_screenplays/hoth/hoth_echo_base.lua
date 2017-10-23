
EchoBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "EchoBaseScreenPlay",
}
 
registerScreenPlay("EchoBaseScreenPlay", true)
 
function EchoBaseScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function EchoBaseScreenPlay:spawnSceneObjects()



end


function EchoBaseScreenPlay:spawnMobiles()
	
--Rebs

--hangar
spawnMobile("hoth", "rebel_echo_pilot", 300, -256.5, 73.3, 522.7, 147, 6452932)
spawnMobile("hoth", "rebel_echo_pilot", 300, -253.2, 73.3, 521.3, -141, 6452932)
spawnMobile("hoth", "rebel_echo_pilot", 300, -257, 73.3, 519.6, 91, 6452932)
spawnMobile("hoth", "rebel_echo_pilot", 300, -256.2, 73.3, 518.1, 49, 6452932)

spawnMobile("hoth", "rebel_echo_officer", 300, -252.2, 73.3, 519, -29, 6452932)



spawnMobile("hoth", "rebel_snow_trooper", 120, -207.6,73.3, 523.2, -44, 6452932)
spawnMobile("hoth", "rebel_snow_trooper", 120, -223.5,73.3, 549.3, 85, 6452932)
spawnMobile("hoth", "rebel_snow_trooper", 120, -255.7,73.3, 533.6, 111, 6452932)

spawnMobile("hoth", "snowtrooper", 120, -205, 73.3, 541, -141, 6452932)
spawnMobile("hoth", "snowtrooper", 120, -220, 73.4, 536, 166, 6452932)
spawnMobile("hoth", "snowtrooper", 120, -230.2, 73.2, 526.5, -155, 6452932)
spawnMobile("hoth", "snowtrooper", 120, -213.3, 73.3, 547.4, -173, 6452932)




--tauntauns

spawnMobile("hoth", "tauntaun", 300, -326.9, 78.6, 502.6, 128, 6452933)
spawnMobile("hoth", "tauntaun", 300, -330.9, 78.6, 498.6, 94, 6452933)

--officers 

--computer room
spawnMobile("hoth", "rebel_echo_officer", 300, -11.5, -21.8, 131.8, -126, 6452931)
spawnMobile("hoth", "rebel_echo_officer", 300, -8.1, -21.6, 130.1, -64, 6452931)
spawnMobile("hoth", "rebel_echo_officer", 300, -13.6, -20.7, 155.6, -44, 6452931)
spawnMobile("hoth", "rebel_echo_officer", 300, -5.2, -21, 153.7, -25, 6452931)
spawnMobile("hoth", "rebel_echo_officer", 300, -5.6, -21.1, 156.7, -176, 6452931)

--reactor room
spawnMobile("hoth", "rebel_echo_officer", 300, -65.6, -4.6, 7.3, 165, 6452945)
spawnMobile("hoth", "rebel_echo_officer", 300, -63.1, -4.6, 6.7, -150, 6452945)

spawnMobile("hoth", "rebel_echo_officer", 300, -62.4, -4.6, 33.4, -159, 6452944)
spawnMobile("hoth", "rebel_echo_officer", 300, -61, -4.6, 31.6, -93, 6452944)

--deep rooms
spawnMobile("hoth", "rebel_echo_officer", 300, -15.7, -18.3, -14.3, -139, 6452946)
spawnMobile("hoth", "rebel_echo_officer", 300, -16.5, -18.3, -17.1, 37, 6452946)

--troopers

--reactor room
spawnMobile("hoth", "rebel_snow_trooper", 300, -65.6, -4.6, 19.6, 169, 6452945)
spawnMobile("hoth", "rebel_snow_trooper", 300, -67.6, -4.6, 25, 1, 6452944)

--computer room
spawnMobile("hoth", "rebel_snow_trooper", 300, 8.9, -21.7, 167.4, -96, 6452931)
spawnMobile("hoth", "rebel_snow_trooper", 300, 18.8, -21.7, 137.5, -58, 6452931)
spawnMobile("hoth", "rebel_snow_trooper", 300, 13.6, -21.6, 119.5, -92, 6452931)

--corridor
spawnMobile("hoth", "rebel_snow_trooper", 300, -92.9, -0.6, 177.3, 123, 6452939)
spawnMobile("hoth", "rebel_snow_trooper", 300, -82.8, -2.3, 161.7, -9, 6452939)
spawnMobile("hoth", "rebel_snow_trooper", 300, -96.6, -1.3, 157.6, 51, 6452939)

spawnMobile("hoth", "rebel_snow_trooper", 300, -255.5, 62.4, 379.6, 102, 6452938)
spawnMobile("hoth", "rebel_snow_trooper", 300, -240.9, 56.8, 348, 33, 6452938)
spawnMobile("hoth", "rebel_snow_trooper", 300, -224.2, 56.2, 349.4, -73, 6452938)

--medbay
spawnMobile("hoth", "rebel_snow_trooper", 300, 84.9, -14.7, 270.1, -16, 6452949)
spawnMobile("hoth", "rebel_medic", 300, 89.8, -14.7, 289.7, 42, 6452949)

--storage
spawnMobile("hoth", "rebel_snow_trooper", 300, -89.6, 43.4, 365.8, -83, 6452941)
spawnMobile("hoth", "rebel_snow_trooper", 300, -92.4, 43.4, 340, 76, 6452941)
spawnMobile("hoth", "rebel_snow_trooper", 300, -107.8, 43.4, 378, -179, 6452941)
spawnMobile("hoth", "rebel_snow_trooper", 300, -109.3, 43.3, 365.8, 56, 6452941)

--wampa
spawnMobile("hoth", "wampa", 300, 7.3, -16.8, 340.6, 89, 6452959)

--Imp forces

spawnMobile("hoth", "at_at", 1800, -4198, 84.7, 5625, -96, 0)
spawnMobile("hoth", "at_at", 1800, -4166, 84.7, 5504.3, -89, 0)
spawnMobile("hoth", "at_at", 1800, -4156.8, 87.8, 5913.4, -128, 0)

spawnMobile("hoth", "at_st", 300, -4317.8, 81.6, 5734, -103, 0)
spawnMobile("hoth", "at_st", 300, -4283.8, 84.7, 5517.1, -84, 0)

spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5668, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5672, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5676, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5680, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5684, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5688, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5692, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5696, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5700, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5704, -90, 0)

spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5668, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5672, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5676, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5680, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5684, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5688, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5692, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5696, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5700, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5704, -90, 0)
	
	

end
