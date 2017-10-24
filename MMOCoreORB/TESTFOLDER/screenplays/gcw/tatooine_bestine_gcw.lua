local ObjectManager = require("managers.object.object_manager")

tatooine_bestine_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "tatooine_bestine_gcw"
}

registerScreenPlay("tatooine_bestine_gcw", true)

function tatooine_bestine_gcw:start()
	if (isZoneEnabled("tatooine")) then
	if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function tatooine_bestine_gcw:spawnImperials()

	spawnMobile("tatooine", "imperial_recruiter",0,-1138,98,-3897,0,0)

	--Imperial Npc's Outside
	--{"coa2_imperial_coordinator",60,-1131.72,12,-3660.15,18.1873,0, "npc_imperial", ""},
	--{"commander_dkrn",60,-1157.74,12,-3525.5,200.331,0, "npc_imperial", "Commander D`krn"},
	spawnMobile("tatooine", "crackdown_command_security_guard",400,-1278.5,12.5279,-3643.1,165.005,0)
	spawnMobile("tatooine", "crackdown_command_security_guard",400,-1243.9,12,-3550.55,301.01,0)
	spawnMobile("tatooine", "crackdown_command_security_guard",400,-1150.5,12,-3547.1,26,0)
	spawnMobile("tatooine", "crackdown_command_security_guard",400,-1097,12,-3525.3,121.004,0)
	--{"crackdown_dark_trooper",400,-1430.36,12,-3728.58,141.26,0, "npc_imperial", ""},
	--{"crackdown_dark_trooper",400,-1004.6,12,-3710.8,132,0, "npc_imperial", ""},
	--{"crackdown_elite_dark_trooper",400,-1428.52,12,-3730.88,141.264,0, "npc_imperial", ""},
	--{"crackdown_elite_dark_trooper",400,-983.59,12,-3748.85,33.65,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_elite_dark_trooper",400,-1453,12,-3646.95,42.076,0)
	spawnMobile("tatooine", "crackdown_elite_dark_trooper",400,-1133.2,12.1958,-3614.6,125.004,0)
	spawnMobile("tatooine", "crackdown_elite_dark_trooper",400,-1130.9,12.1964,-3611.6,125.004,0)
	--{"crackdown_elite_dark_trooper",400,-1428.52,12,-3730.88,141.264,0, "npc_imperial", ""},
	--{"crackdown_elite_dark_trooper",400,-1002.9,12,-3705.4,-55,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,-1284,12,-3486,180,0)
	--{"crackdown_elite_sand_trooper",400,-1368.48,12,-3725.42,268.991,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,-1276,12,-3487,180,0)
	--{"crackdown_elite_sand_trooper",400,-1348.2,12,-3712.7,315,0, "npc_imperial", ""},
	--{"crackdown_elite_sand_trooper",400,-1429.92,12,-3731.49,141.268,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,-1275,12,-3507.5,315,0)
	--{"crackdown_elite_sand_trooper",400,-1378.4,12,-3712.53,119.74,0, "npc_imperial", ""},
	--{"crackdown_elite_sand_trooper",400,-984.262,12,-3742.5,126.391,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,-1454.87,12,-3651.05,45.2754,0)
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,-1455.96,12,-3650.25,42.1254,0)
	--{"crackdown_elite_sand_trooper",400,-1058.39,12,-3671.09,222.747,0, "npc_imperial", ""},
	--{"crackdown_elite_sand_trooper",400,-1093.52,12,-3647.32,308.036,0, "npc_imperial", ""},
	--{"crackdown_elite_sand_trooper",400,-1049.04,12,-3660.19,249.5,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-983.8,12,-3746.5,116.003,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-980.4,12,-3742.8,119,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1169.8,12,-3692.1,235.007,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1283.8,12,-3480.4,306.486,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1275.6,12,-3479.9,0,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1016.9,12,-3741.2,97.0029,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1018.3,12,-3736.2,272.008,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1089.8,12,-3704.2,116.003,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1154.1,12,-3650,-111,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1083.6,12,-3594.2,169.005,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-1181.3,12,-3537.9,198.006,0)
	spawnMobile("tatooine", "crackdown_storm_commando",400,-1231.81,12,-3605.85,127.312,0)
	spawnMobile("tatooine", "crackdown_storm_commando",400,-1292.8,12,-3585.5,133.004,0)
	spawnMobile("tatooine", "crackdown_storm_commando",400,-1115.14,12,-3639.18,263.058,0)
	spawnMobile("tatooine", "crackdown_stormtrooper_sniper",400,-1093.7,14,-3660.2,41.0012,0)
	--{"imperial_army_captain",400,-1307.46,12,-3662.44,218.566,0, "npc_imperial", ""},
	spawnMobile("tatooine", "imperial_recruiter",60,-1072.7,12,-3594,220,0)
	spawnMobile("tatooine", "imperial_recruiter",60,-1275.75,12,-3594.28,-73,0)
	--{"lt_sabol",60,-1291.67,12,-3539,118,0, "npc_imperial", "Lt. Sabol"},
	--{"tk_471",400,-1048.04,12,-3699.53,275.497,0, "npc_imperial", "TK-471"},

end

function tatooine_bestine_gcw:spawnRebels()

        spawnMobile("tatooine", "rebel_recruiter",0,-1138,98,-3897,0,0)

	--Rebel Npc's Outside
	--{"coa2_rebel_coordinator",60,-1131.72,12,-3660.15,18.1873,0, "npc_rebel", ""},
	--{"commander_dkrn",60,-1157.74,12,-3525.5,200.331,0, "npc_imperial", "Commander D`krn"},
	spawnMobile("tatooine", "sentry_specforce_squad_leader",400,-1278.5,12.5279,-3643.1,165.005,0)
	spawnMobile("tatooine", "sentry_specforce_squad_leader",400,-1243.9,12,-3550.55,301.01,0)
	spawnMobile("tatooine", "sentry_specforce_squad_leader",400,-1150.5,12,-3547.1,26,0)
	spawnMobile("tatooine", "sentry_specforce_squad_leader",400,-1097,12,-3525.3,121.004,0)
	--{"rebel_trooper",400,-1430.36,12,-3728.58,141.26,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-1004.6,12,-3710.8,132,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-1428.52,12,-3730.88,141.264,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-983.59,12,-3748.85,33.65,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_trooper",400,-1453,12,-3646.95,42.076,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1133.2,12.1958,-3614.6,125.004,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1130.9,12.1964,-3611.6,125.004,0)
	--{"rebel_trooper",400,-1428.52,12,-3730.88,141.264,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-1002.9,12,-3705.4,-55,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_trooper",400,-1284,12,-3486,180,0)
	--{"rebel_trooper",400,-1368.48,12,-3725.42,268.991,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_trooper",400,-1276,12,-3487,180,0)
	--{"rebel_trooper",400,-1348.2,12,-3712.7,315,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-1429.92,12,-3731.49,141.268,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_trooper",400,-1275,12,-3507.5,315,0)
	--{"rebel_trooper",400,-1378.4,12,-3712.53,119.74,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-984.262,12,-3742.5,126.391,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_trooper",400,-1454.87,12,-3651.05,45.2754,0)
	spawnMobile("tatooine", "sentry_specforce",400,-1455.96,12,-3650.25,42.1254,0)
	--{"sentry_specforce",400,-1058.39,12,-3671.09,222.747,0, "npc_rebel", ""},
	--{"sentry_specforce",400,-1093.52,12,-3647.32,308.036,0, "npc_rebel", ""},
	--{"sentry_specforce",400,-1049.04,12,-3660.19,249.5,0, "npc_rebel", ""},
	spawnMobile("tatooine", "sentry_specforce_squad_leader",400,-983.8,12,-3746.5,116.003,0)
	spawnMobile("tatooine", "rebel_trooper",400,-980.4,12,-3742.8,119,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1169.8,12,-3692.1,235.007,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1283.8,12,-3480.4,306.486,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1275.6,12,-3479.9,0,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1016.9,12,-3741.2,97.0029,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1018.3,12,-3736.2,272.008,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1089.8,12,-3704.2,116.003,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1154.1,12,-3650,-111,0)
	spawnMobile("tatooine", "rebel_trooper",400,-1083.6,12,-3594.2,169.005,0)
	spawnMobile("tatooine", "sentry_specforce_squad_leader",400,-1181.3,12,-3537.9,198.006,0)
	spawnMobile("tatooine", "sentry_specforce",400,-1231.81,12,-3605.85,127.312,0)
	spawnMobile("tatooine", "sentry_specforce",400,-1292.8,12,-3585.5,133.004,0)
	spawnMobile("tatooine", "sentry_specforce",400,-1115.14,12,-3639.18,263.058,0)
	spawnMobile("tatooine", "sentry_specforce_sniper",400,-1093.7,14,-3660.2,41.0012,0)
	--{"sentry_specforce_squad_leader",400,-1307.46,12,-3662.44,218.566,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_recruiter",60,-1072.7,12,-3594,220,0)
	spawnMobile("tatooine", "rebel_recruiter",60,-1275.75,12,-3594.28,-73,0)
	--{"lt_sabol",60,-1291.67,12,-3539,118,0, "npc_imperial", "Lt. Sabol"},
	--{"tk_471",400,-1048.04,12,-3699.53,275.497,0, "npc_imperial", "TK-471"},
end
