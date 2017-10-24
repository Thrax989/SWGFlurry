JakkuReestkiiScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "JakkuReestkiiScreenPlay"
}

registerScreenPlay("JakkuReestkiiScreenPlay", true)

function JakkuReestkiiScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:setMoodString()
		pNpc = spawnMobile()
	end
end

function JakkuReestkiiScreenPlay:spawnSceneObjects()
	--front of bank terminal
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_droid_thieves_camp_large2.iff", 2208.9, 9.1, -3231.2, 0, math.rad(129) )
	--behind building on right building 
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_large_1.iff", 2015.1, 6.4, -3264.0, 1, 0)
	--infront of building on right
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_medium1.iff", 2050.1, 5.4, -3175.7, -76, 0)
	--right of circle building
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_large1.iff", 2117.5, 7.9, -3250.2, 24, 0)
	--behind circle building
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_large2.iff", 2167.2, 7.6, -3361.3, 77, 0)
	spawnSceneObject("jakku", "object/building/poi/tatooine_mineral_farmer_medium1.iff", 2117.2, 8.3, -3339.1, -121, 0)
	
	spawnSceneObject("jakku", "object/tangible/terminal/terminal_mission.iff", 2201.9, 9.1, -3190.5, 176, 0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_weapon_station.iff", 2189.6, 9.1, -3237.8, 77, 0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_structure_station.iff", 2029.2, 6.4, -3275.3, -26, 0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_clothing_station.iff", 2027.5, 6.4, -3255.1, 167, 0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_food_station.iff", 2047.1, 5.4, -3163.2, -11, 0)




end

function JakkuReestkiiScreenPlay:spawnMobiles()

	--front of bank terminal
	spawnMobile("jakku", "trainer_droidengineer", 0, 2223.7, 9.1, -3230.9, -89, 0)
	spawnMobile("jakku", "trainer_weaponsmith", 0, 2196.1, 9.1, -3223.6, 124, 0)
	spawnMobile("jakku", "trainer_armorsmith", 0, 2205.5, 9.1, -3248.2, 27, 0)

	--right of circle building
	spawnMobile("jakku", "trainer_marksman", 0, 2112.9, 7.9, -3248.2, 94, 0)
	spawnMobile("jakku", "trainer_rifleman", 0, 2127.1, 7.9, -3252.1, -38, 0)
	spawnMobile("jakku", "trainer_pistol", 0, 2117.9, 7.9, -3243.4, 2, 0)

	--infront of building on right
	spawnMobile("jakku", "trainer_chef", 0, 2043.5, 5.4, -3175.6, 102, 0)

	--behind building on right
	spawnMobile("jakku", "trainer_medic", 0, 2008.5, 6.4, -3254.9, 120, 0)
	spawnMobile("jakku", "trainer_combatmedic", 0, 2016.4, 6.4, -3254.1, 145, 0)
	spawnMobile("jakku", "trainer_doctor", 0, 2006.9, 6.4, -3262.6, 132, 0)
	spawnMobile("jakku", "trainer_architect", 0, 2004.6, 6.4, -3272.2, 86, 0)
	spawnMobile("jakku", "trainer_tailor", 0, 2019.7, 6.4, -3275.6, -2, 0)

	--behind circle building
	spawnMobile("jakku", "trainer_carbine", 0, 2164.3, 7.6, -3354.5, 155, 0)
	spawnMobile("jakku", "trainer_commando", 0, 2157.4, 7.6, -3360.2, 92, 0)
	spawnMobile("jakku", "trainer_scout", 0, 2168.8, 7.6, -3352.4, -145, 0)
	spawnMobile("jakku", "trainer_creaturehandler", 0, 2172.3, 7.6, -3361.2, -69, 0)
	spawnMobile("jakku", "trainer_bioengineer", 0, 2165.0, 7.6, -3366.3, -11, 0)
	spawnMobile("jakku", "trainer_bountyhunter", 0, 2113.5, 8.3, -3345.0, -2, 0)
	spawnMobile("jakku", "trainer_smuggler", 0, 2125.4, 8.3, -3347.0, -71, 0)

--	left side of circle building
	spawnMobile("jakku", "trainer_polearm", 0, 2195.4, 7.3, -3307.8, 88, 0)
	spawnMobile("jakku", "trainer_1hsword", 0, 2190.2, 7.5, -3305.2, 80, 0)
	spawnMobile("jakku", "trainer_2hsword", 0, 2190.5, 7.5, -3309.3, 88, 0)

	spawnMobile("jakku", "cll8_binary_load_lifter", 60, 2210.6, 9.1, -3217.3, -176, 0)






end
