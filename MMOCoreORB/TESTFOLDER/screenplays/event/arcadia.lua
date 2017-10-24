arcadiaScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "arcadiaScreenPlay",
}

registerScreenPlay("arcadiaScreenPlay", true)

function arcadiaScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function arcadiaScreenPlay:spawnSceneObjects()

	-- Structures


	spawnSceneObject("tatooine","object/ship/player/player_tieoppressor.iff", -1465.7, 2, -5688.1, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine","object/ship/player/player_awing.iff", -1425.4, 1, -5674.6, 0, 0, 0, 0, 0)
	spawnSceneObject("naboo","object/ship/player/player_tiebomber.iff", -1923.9, -192.5, 5105.0, 0, 0, 0, 1, 0)
	spawnSceneObject("naboo","object/ship/player/player_tieinterceptor.iff", -1924.1, -193.7, 5175.9, 0, 0, 0, 1, 0)
	spawnSceneObject("naboo","object/ship/player/player_tiefighter.iff", -1896.6, -191.2, 5139.8, 0, 0, 0, 1, 0)
	spawnSceneObject("naboo","object/ship/player/player_tieoppressor.iff", -1950.4, -194.6, 5139.8, 0, 0, 0, 1, 0)	
--	spawnSceneObject("tatooine","object/building/tatooine/starport_tatooine.iff", -1552.4, 5.0, -5663.2, 0, 0, 0, 0, 0)	
	
end

function arcadiaScreenPlay:spawnMobiles()
	
--Imperial Headquarters

--	spawnMobile("corellia", "imperial_recruiter", 1, -0.5, 2.3, -15.0, -4, 281475094658655)
--	spawnMobile("corellia", "stormtrooper", 60, 1.8, 2.7, 14.6, -32, 281475094658646)
--	spawnMobile("corellia", "stormtrooper", 60, -1.1, 2.7, 14.8, -2, 281475094658646)
--	spawnMobile("corellia", "dark_trooper", 60, 4.2, 2.3, -13.3, -10, 281475094658655)
--	spawnMobile("corellia", "dark_trooper", 60, -3.5, 2.3, -12.8, 20  281475094658655)
--	spawnMobile("corellia", "stormtrooper_captain", 60, -2.1, -8.5, -8.1, 33, 281475094658657) 
--	spawnMobile("corellia", "imperial_staff_sergeant", 60, 0.4, -8.5, -15.2, -169, 281475094658658) 
--	spawnMobile("corellia", "imperial_warrant_officer_ii", 60, -1.3, -8.5, -15.3, 118, 281475094658658) 
--	spawnMobile("corellia", "imperial_army_captain", 60, 3.2, -8.5, -15.7, -129, 281475094658658) 
--	spawnMobile("corellia", "imperial_noncom", 60, 11.7, 2.2, -2.8, -99, 281475094658655) 
--	spawnMobile("corellia", "scout_trooper", 60, 8.2, -8.5, 7.2, -110, 281475094658660) 
--	spawnMobile("corellia", "dark_jedi_master", 60, -7.9, -8.5, -6.9, 2, 281475094658661)
--	spawnMobile("corellia", "lord_hethrir", 60, -8.2, -8.5, -1.4, 172, 281475094658661) 
--	spawnMobile("corellia", "stormtrooper", 60, 2.9, -8.5, -8.5, -25, 281475094658657) 
--	spawnMobile("corellia", "ig_88", 1, -11.2, 2,8, 3.0, 41, 281475094658655)
--	spawnMobile("corellia", "bossk", 1, -10.2, 2.8, 4.5, -143, 281475094658655)
--	spawnMobile("corellia", "stormtrooper", 60, -4.2, 2.8, 10.2, 167, 281475094658647)
--	spawnMobile("corellia", "stormtrooper", 60, 4.0, 2.8, 9.3, -169, 281475094658647)
--	spawnMobile("corellia", "informant_npc_lvl_3", 60, -8.6, 1.7, -0.2, 54, 281475094658655)
	
--Rebel Headquarters

--	spawnMobile("corellia", "rebel_recruiter", 1, 0.4, 2.3, -13.5, 15, 281475101324987)
--	spawnMobile("corellia", "rebel_trooper", 60, 3.8, 2.3, -13.6, 2,  281475101324987)
--	spawnMobile("corellia", "rebel_trooper", 60, -4.0, 2.3, -13.1, 19, 281475101324987)
--	spawnMobile("corellia", "rebel_corporal", 60, 2.1, 0.6, -3.6, -104, 281475101324987)
--	spawnMobile("corellia", "rebel_medic", 60, 2.1, 0.6, -3.6, -104, 281475101324987)
--	spawnMobile("corellia", "rebel_general", 60, -2.0, 1.7, -8.0, 33, 281475101324987)
--	spawnMobile("corellia", "luke_skywalker", 1, -2.7, -8.5, -17.9, 52, 281475101324990)
--	spawnMobile("corellia", "mon_mothma", 1, 0.2, -8.5, -19.5, -4, 281475101324990)
----	spawnMobile("corellia", "general_dodonna", 1, 2.1, -8.5, -18.6, -50, 281475101324990)
--	spawnMobile("corellia", "rebel_coordinator", 1, 8.2, -8.5, -17.2, 89, 281475101324990)
--	spawnMobile("corellia", "rebel_coordinator", 1, 7.0, -8.5, -19.0, 157, 281475101324990)
--	spawnMobile("corellia", "rebel_trooper", 60, 0.1, 2.7, 14.9, -2, 281475101324978)
--	spawnMobile("corellia", "rebel_trooper", 60, -1.5, -8.5, -7.6, -6, 281475101324989)
--	spawnMobile("corellia", "rebel_trooper", 60, 1.9, -8.5, -7.6, -11, 281475101324989)
--	spawnMobile("corellia", "bartender", 1, -8.6, -8.5, 14.8, 132, 281475101324994)
--	spawnMobile("corellia", "bothan_diplomat", 1, -8.0, -8.5, 9.6, 36, 281475101324994)
--	spawnMobile("corellia", "noble", 1, -7.3, -8.5, 12.1, -159, 281475101324994)
--	spawnMobile("corellia", "noble", 1, -9.2, -8.5, 7.4, -82, 281475101324994)
	
	
--Cantina
--	spawnMobile("corellia", "max_rebo", 1, 3.2, 0.0, -16.2, -12, 281475094660229)
--	spawnMobile("corellia", "droopy_mccool", 1, -2.7, 0.0, -16.0, -79, 281475094660229)
--	spawnMobile("corellia", "sy_snootles", 1, -0.3, 0.0, -13.2, -4, 281475094660229)
--	spawnMobile("corellia", "wuher", 1, 0.0, 0.3, 4.2, 171, 281475094660229)
--	spawnMobile("corellia", "gamorrean_guard", 1, 2.2, 1.3, 9.4, -55, 281475094660228)
--	spawnMobile("corellia", "gamorrean_guard", 1, -3.8, 1.3, 9.2, 50, 281475094660228)



end
