KaasSeparatistScreenPlay = ScreenPlay:new {
	numberOfActs = 1;
	
	lootContainers = {
		

	},

	lootLevel = 100,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 700000},
				{group = "junk", chance = 7500000},
				{group = "rifles", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}
	},
}

registerScreenPlay("KaasSeparatistScreenPlay", true)

function KaasSeparatistScreenPlay:start()
	self:spawnMobiles()
end

function KaasSeparatistScreenPlay:spawnMobiles()
-- Entrance
	spawnMobile("kaas", "alert_droideka", 200, 10.3, 10.2, -4.1, -116, 35791497)
	spawnMobile("kaas", "alert_droideka", 200, 37.3, 10.3, -14.0, 0, 35791498)	
	spawnMobile("kaas", "death_watch_battle_droid", 200, 25.1, 4.5, -27.0, 90, 35791499)
	spawnMobile("kaas", "death_watch_battle_droid", 200, 0.8, 1.9, -28.3, 90, 35791499)
	spawnMobile("kaas", "death_watch_battle_droid", 200, 25.1, 4.5, -27.0, 179, 35791540)
	spawnMobile("kaas", "death_watch_battle_droid", 200, 19.7, -8.0, -8.4, -90, 35791540)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -14.3, -17.8, -27.8, 90, 35791500)
	spawnMobile("kaas", "alert_droideka", 200, -54.8, -18.0, -43.0, 90, 35791501)
	spawnMobile("kaas", "alert_droideka", 200, -39.7, -18.0, -52.3, -45, 35791501)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -48.4, -18.0, -59.0, 0, 35791502)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -61.4, -18.0, -64.2, 90, 35791502)
	spawnMobile("kaas", "alert_droideka", 200, -75.8, -17.8, -67.8, 90, 35791503)
	spawnMobile("kaas", "enhanced_force_kliknik", 200, -75.7, -18.9, -39.6, 179, 35791504)
	spawnMobile("kaas", "enhanced_force_kliknik", 200, -69.3, -18.9, -39.4, 179, 35791504)
	spawnMobile("kaas", "enhanced_force_kliknik", 200, -75.2, -18.9, -44.3, 179, 35791504)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -89.5, -18.1, -68.0, 90, 35791505)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -107.2, -18.0, -34.2, 179, 35791506)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -131.9, -18.0, -56.5, 90, 35791506)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -56.3, -18.0, -81.7, -90, 35791507)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -61.7, -21.8, -110.2, 0, 35791508)
	spawnMobile("kaas", "alert_droideka", 200, -42.6, -22.0, -110.0, -90, 35791511)
	spawnMobile("kaas", "alert_droideka", 200, -42.3, -21.9, -98.0, -179, 35791511)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -4.0, -30.1, -98.0, -90, 35791512)
	spawnMobile("kaas", "alert_droideka", 200, 25.2, -30.1, -97.9, -90, 35791513)
	spawnMobile("kaas", "alert_droideka", 200, -62.3, -21.8, -123.5, 0, 35791513)
	spawnMobile("kaas", "dark_jedi_knight", 200, -20, -22.0, -114.2, 179, 35791518)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -78.0, -22.0, -160.0, 0, 35791521)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -81.3, -22.0, -155.5, 90, 35791521)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -103.9, -26.0, -182.5, 0, 35791523)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -100.1, -33.8, -228.1, 0, 35791525)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -60.0, -34.0, -275.2, 0, 35791528)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -71.8, -34.0, -275.2, 0, 35791528)
	spawnMobile("kaas", "alert_droideka", 200, -130.1, -33.8, -227.8, 90, 35791529)
	spawnMobile("kaas", "alert_droideka", 200, -48.2, -21.8, -136.2, 90, 35791516)
	spawnMobile("kaas", "alert_droideka", 200, -134.1, -34.0, -184.3, 179, 35791531)
	spawnMobile("kaas", "alert_droideka", 200, -126.0, -34.0, -251.8, 0, 35791529)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -122, -33.8, -281.6, 0, 35791532)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -139.6, -33.8, -321.0, 0, 35791533)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -131.2, -34.0, -320.5, 0, 35791533)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -136.0, -33.8, -323.9, 0, 35791533)
	spawnMobile("kaas", "dark_jedi_knight", 200, -117.8, -34.0, -349.9, -90, 35791534)
	spawnMobile("kaas", "alert_droideka", 200, -122.6, -34.1, -369.4, -90, 35791534)
	spawnMobile("kaas", "alert_droideka", 200, -113.9, -34.0, -364.5, -90, 35791534)
	spawnMobile("kaas", "alert_droideka", 200, -113.2, -34.1, -372.0, -90, 35791534)
	spawnMobile("kaas", "crazed_geonosian_guard", 200, 14.2, -34.0, -369.9, -179, 35791538)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -65.7, -33.8, -375.1, 0, 35791535)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -71.2, -33.9, -404.9, 0, 35791536)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -56.6, -34.0, -408.2, -90, 35791536)
	spawnMobile("kaas", "death_watch_battle_droid", 200, -26.8, -34.1, -407.8, -90, 35791536)
	spawnMobile("kaas", "death_watch_s_battle_droid", 200, -10.9, -34.0, -416.0, -90, 35791535)
	spawnMobile("kaas", "crazed_geonosian_guard", 200, 19.7, -34.0, -353.5, -179, 35791538)
	spawnMobile("kaas", "crazed_geonosian_guard", 200, 14.2, -34.0, -369.9, -179, 35791538)
	spawnMobile("kaas", "crazed_geonosian_guard", 200, 22.2, -34.0, -374.9, -179, 35791538)
	spawnMobile("kaas", "crazed_geonosian_guard", 200, 16.2, -34.0, -383.9, -179, 35791538)
	spawnMobile("kaas", "crazed_geonosian_guard", 200, -109.3, -22.2, -111.9, 90, 35791509)
   end
