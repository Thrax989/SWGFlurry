black_sun_eventScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "black_sun_eventScreenPlay",
}

registerScreenPlay("black_sun_eventScreenPlay", true)

function black_sun_eventScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function black_sun_eventScreenPlay:spawnMobiles()

	-- Structures


	spawnSceneObject("tatooine","object/static/vehicle/static_speeder_bike.iff", -3264.0, 0.0, -4777.3, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine","object/static/vehicle/static_sandcrawler.iff", -3075.0, 0.0, -4838.3, 0, 0, 0, 0, 0)

	-- Center Mining Area
	spawnMobile("tatooine", "death_watch_miner", 30, -3251, 0, -4810, -165, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -3259, 0, -4819, -132, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -3262, 0, -4820, -71, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -3270, 0, -4859, -54, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -3308.4, 1, -4852.6, -84, 1)
--	spawnMobile("tatooine", "death_watch_miner", 30, -4831.1, 0, -4827.4, -138, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -4831.1, 0, -4827.4, 148, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -3240.9, 0, -4826.8, 167, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -3230.7, 0, -4865.0, -46, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -3296.1, 0, -4873.2, -45, 0)
	spawnMobile("tatooine", "death_watch_miner", 30, -3291.5, 0, -4805.7, -48, 0)
	spawnMobile("tatooine", "black_sun_assassin", 90, -3294.2, 0, -4809.3, 50, 0)
	spawnMobile("tatooine", "black_sun_assassin", 90, -3241.8, 0, -5819.7, 41, 0)
	spawnMobile("tatooine", "black_sun_assassin", 90, -3212.1, 0, -4873.0, -143, 0)
	spawnMobile("tatooine", "black_sun_assassin", 90, -3212.9 , 0, -4875.1, 27, 0)
	spawnMobile("tatooine", "black_sun_assassin", 90, -3212.1, 0, -4873.0, -143, 0)
	spawnMobile("tatooine", "black_sun_assassin", 90, -3214.9, 0, -4873.1, 103, 0)
	spawnMobile("tatooine", "black_sun_guard", 90, -3206.7, 0, -4803.9, -44, 0)
	spawnMobile("tatooine", "death_watch_mine_rat", 90, -3288.3, 0, -4855.2, -5, 0)
	spawnMobile("tatooine", "death_watch_mine_rat", 90, -3286.6, 0, -4855.0, -60, 0)
	spawnMobile("tatooine", "death_watch_mine_rat", 90, -3290.2, 0, -4855.3, 57, 0)
	spawnMobile("tatooine", "blastromech", 90, -3289.0, 0, -4853.5, 168, 0)
	spawnMobile("tatooine", "death_watch_bloodguard", 90, -3315.5, 0, -4864.0, 62, 0)
	spawnMobile("tatooine", "death_watch_bloodguard", 90, -3316.4, 0, -4861.0, 107, 0)
	spawnMobile("tatooine", "death_watch_bloodguard", 90, -3312.2, 0, -4860.2, -136, 0)
	spawnMobile("tatooine", "death_watch_wraith", 300, -3265.3, 0, -4843.8, -58, 0)
	spawnMobile("tatooine", "death_watch_wraith", 300, -3241.3, 0, -4865.7, -170, 0)
	spawnMobile("tatooine", "death_watch_wraith", 300, -3229.0, 0, -4824.1, -70, 0)
	spawnMobile("tatooine", "jawa_engineer", 10, -3279.7, 0, -4823.1, -70, 0)
	spawnMobile("tatooine", "r2", 10, -3280.1, 0, -4820.7, -91, 0)

--Black Sun Headquarters

	spawnMobile("tatooine", "death_watch_overlord", 900, 2.3, 1.0, -6.4, -20, 281475057677288)
	spawnMobile("tatooine", "black_sun_guard", 90, 3.7, 1.0, -3.8, 9, 281475057677288)
	spawnMobile("tatooine", "black_sun_guard", 90, 0.4, 1.0, -3.3, 9, 281475057677288)
	spawnMobile("tatooine", "black_sun_guard", 90, -7, 4.6, -6.1, -88, 281475057677285)
	spawnMobile("tatooine", "bounty_hunter_thug", 120, -11.5, 1.0, 2.4, -11, 281475057677302)
	spawnMobile("tatooine", "wookiee_brawler", 120, -9.2, 0.6, -12.6, 7, 281475057677302)
	spawnMobile("tatooine", "bounty_hunter_thug", 120, -7.8, 0.6, -11.2, -153, 281475057677302)
	spawnMobile("tatooine", "black_sun_guard", 120, -12.5, 3.0, 0.3, -4, 281475057677283)
	spawnMobile("tatooine", "black_sun_guard", 120, -6.2, 4.6, -7.2, -90, 281475057677285)
	spawnMobile("tatooine", "bounty_hunter_thug", 120, -7.9, 5.6, -0.1, 119, 281475057677289)
	spawnMobile("tatooine", "bounty_hunter_thug", 120, -6.6, 5.6, -0.1, 119, 281475057677289)
	spawnMobile("tatooine", "bounty_hunter_thug", 120, -4.6, 5.6, -0.1, 119, 281475057677289)
--Black Sun Medium House

	spawnMobile("tatooine", "death_watch_overlord", 900, -4.9, 0.6, -4.1, 97, 281475057684099)
	spawnMobile("tatooine", "kobola_foreman", 15, 2.1, 0.6, -3.6, -104, 281475057684099)

--Cantina

	spawnMobile("tatooine", "ig_88", 1, 12.4, 1.0, -13.6, -32, 281475001572519)
	spawnMobile("tatooine", "bossk", 1, 13.0, 1.0, -12.2, 118, 281475001572519)
	spawnMobile("tatooine", "bounty_hunter_thug", 30, 12.8, 1.0, -10.1, 87, 281475001572519)
	spawnMobile("tatooine", "entertainer",1, 3.9, 0.5, -16.4, 0, 281475001572519)
	spawnMobile("tatooine", "entertainer",1, -5.6, 0.5, -15.6, 0, 281475001572519)
	spawnMobile("tatooine", "max_rebo",1, -0.9, 0.5, -15.7, 0, 281475001572519)
	spawnMobile("tatooine", "droopy_mccool",1, 0.4, 0.5, -13.1, 0, 281475001572519)
	spawnMobile("tatooine", "sy_snootles", 1, -0.8, 0.5, -11.6, 0, 281475001572519)
	spawnMobile("tatooine", "roughneck",	5, -11.5, 1.0, -1.7, -176, 281475001572519)
	spawnMobile("tatooine", "assassin", 	5, -11.6, 1.0, -3.6, -25, 281475001572519)
	spawnMobile("tatooine", "bartender", 	1, -2.1, 0.8, 5.1, -161, 281475001572519)
	spawnMobile("tatooine", "bartender", 	1, 1.5, 0.8, 4.7, 139, 281475001572519)
	spawnMobile("tatooine", "jabba_the_hutt",1, -12.4, 1.0, -12.0, 85, 281475001572519)
	spawnMobile("tatooine", "jabba_enforcer",1, -10.4, 0.8, -14.0, 56, 281475001572519)
	spawnMobile("tatooine", "jabba_enforcer",1, -10.5, 0.8, -9.8, 19, 281475001572519)
	spawnMobile("tatooine", "gamorrean_guard",1, -9.6, 0.8, -17, 0, 281475001572519)
	spawnMobile("tatooine", "twilek_slave", 1,-12.5, 1, -9.9, 72, 281475001572519)
	spawnMobile("tatooine", "salacious_crumb",1,-10.8, 0.9, -10.8, 64, 281475001572519)
	spawnMobile("tatooine", "weequay_zealot", 1,-3.0, 0.7, 3.3, 17, 281475001572519)
	spawnMobile("tatooine", "gunrunner",  1, -0.5, 0.7, 2.4, -5, 281475001572519)
	spawnMobile("tatooine", "rodian_gladiator",  1, 2.4, 0.7, 3.1, -51, 281475001572519)
	spawnMobile("tatooine", "commoner_fat", 1, 4.0, -0.2, -12.6, 173, 281475001572519)

--City Creatures

	spawnMobile("tatooine", "bantha", 30, -3286.7, 0.0, -4765.7, 169, 0)
	spawnMobile("tatooine", "bantha", 30, -3280.5, 0.0, -4765.7, 169, 0)
	spawnMobile("tatooine", "bantha", 30, -3291.5, 0.0, -4765.7, 169, 0)

--Random City Spawns
	spawnMobile("tatooine", "masterful_ewok_warrior", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "rogue_marauder", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "wandering_desert_marauder", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "cu_pa", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "dune_stalker_scavenger", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "jabba_assassin", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "lesser_dewback", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "elite_sand_trooper", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "elite_sand_trooper", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "elite_sand_trooper", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "stranded_rebel_soldier", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "specforce_marine", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "force_crystal_hunter", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "dewback", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "jawa_smuggler", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "jawa_smuggler", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "brigand", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "fringer", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "rodian_thug", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "crimelord", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	spawnMobile("tatooine", "desert_demon_bodyguard", 11,math.random(210) + -3354.2, 0.0,math.random(210) + -4905.3, math.random(360), 0)
	
--Tusken Mining field
	
	spawnMobile("tatooine", "tusken_torture_lord", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_warrior", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_warrior", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_war_master", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_death_hunter", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_sniper", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_raider", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)	
	spawnMobile("tatooine", "tusken_torture_lord", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_elite_guard", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_executioner", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_savage", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_woman", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_witch_doctor", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_torture_lord", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_warrior", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_warrior", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_war_master", 24,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_death_hunter", 224,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_sniper", 224,math.random(110) + -3081.2, 0.0,math.random(110) + -4824.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_raider", 224,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)	
	spawnMobile("tatooine", "tusken_torture_lord", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_elite_guard", 22,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_executioner", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_savage", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_woman", 22,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)
	spawnMobile("tatooine", "tusken_witch_doctor", 24,math.random(110) + -3051.2, 0.0,math.random(110) + -4774.3, math.random(360), 0)

	spawnMobile("tatooine", "jawa_warlord", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_healer", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_avenger", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_engineer", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_leader", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_henchman", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_smuggler", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_warlord", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_warlord", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_healer", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_avenger", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_engineer", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_leader", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_henchman", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_smuggler", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)
	spawnMobile("tatooine", "jawa_warlord", 24,math.random(40) + -3099.2, 0.0,math.random(40) + -4841.7, math.random(360), 0)

end
