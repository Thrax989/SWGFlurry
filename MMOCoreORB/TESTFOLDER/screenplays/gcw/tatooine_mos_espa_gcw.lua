local ObjectManager = require("managers.object.object_manager")

tatooine_mos_espa_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "tatooine_mos_espa_gcw"
}

registerScreenPlay("tatooine_mos_espa_gcw", true)

function tatooine_mos_espa_gcw:start()
	if (isZoneEnabled("tatooine")) then
	if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function tatooine_mos_espa_gcw:spawnImperials()

	--Imperial Npc's Outside
	--{"crackdown_comm_operator",400,-2960.4,5,1973.9,74,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_dark_trooper",400,-3028.58,5.11515,2618.21,39.6237,0)
	spawnMobile("tatooine", "crackdown_elite_dark_trooper",400,-2636.4,5,2254.3,81,0)
	--{"crackdown_elite_dark_trooper",400,-2953.88,5,1933.16,344.533,0, "npc_imperial", ""},
	--{"crackdown_imperial_master_sergeant",400,-2954.65,5,1935.93,344.531,0, "npc_imperial", ""},
	--{"crackdown_imperial_master_sergeant",400,-3115,5,2199.8,-75,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_imperial_master_sergeant",400,-3204.52,5,2091.93,204.135,0)
	spawnMobile("tatooine", "crackdown_imperial_master_sergeant",400,-3029.53,5.07697,2617.06,39.7527,0)
	--{"crackdown_imperial_noncom",400,-2648.9,5,2290.2,67,0, "npc_imperial", ""},
	--{"crackdown_imperial_noncom",400,-3027.01,5.06395,2617.66,289.047,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_imperial_warrant_officer_ii",400,-3207,5,2097.52,347.895,0)
	--{"crackdown_sand_trooper",400,-2985.75,5,1978.7,74.49,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,-2963.4,5,1978.6,75,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,-2988.1,5,1978.04,74.4903,0, "npc_imperial", ""},
	--{"crackdown_sand_trooper",400,-2960.1,5,1968.6,67,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-2695.6,5,1982.9,122,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-3170.7,5,2137.7,-30,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,-3028.33,5.01162,2616.08,294.927,0)
	spawnMobile("tatooine", "crackdown_scout_trooper",400,-2982.5,5,1956.8,73,0)
	spawnMobile("tatooine", "crackdown_scout_trooper",400,-3029.2,5,2614.8,-52,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,-3207.39,5,2099.33,347.898,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,-3203.5,5,2091.5,-159,0)
	--{"crackdown_stormtrooper_captain",400,-3026.34,5.10198,2618.73,289.047,0, "npc_imperial", ""},
	--{"crackdown_stormtrooper_squad_leader",400,-2979.8,5,1957.6,67,0, "npc_imperial", ""},

end

function tatooine_mos_espa_gcw:spawnRebels()

        --Rebel Npc's Outside
	--{"rebel_first_lieutenant",400,-2960.4,5,1973.9,74,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_first_lieutenant",400,-3028.58,5.11515,2618.21,39.6237,0)
	spawnMobile("tatooine", "rebel_first_lieutenant",400,-2636.4,5,2254.3,81,0)
	--{"rebel_trooper",400,-2953.88,5,1933.16,344.533,0, "npc_rebel", ""},
	--{"rebel_staff_sergeant",400,-2954.65,5,1935.93,344.531,0, "npc_rebel", ""},
	--{"rebel_staff_sergeant",400,-3115,5,2199.8,-75,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_staff_sergeant",400,-3204.52,5,2091.93,204.135,0)
	spawnMobile("tatooine", "rebel_staff_sergeant",400,-3029.53,5.07697,2617.06,39.7527,0)
	--{"rebel_first_lieutenant",400,-2648.9,5,2290.2,67,0, "npc_rebel", ""},
	--{"rebel_first_lieutenant",400,-3027.01,5.06395,2617.66,289.047,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_first_lieutenant",400,-3207,5,2097.52,347.895,0)
	--{"rebel_trooper",400,-2985.75,5,1978.7,74.49,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-2963.4,5,1978.6,75,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-2988.1,5,1978.04,74.4903,0, "npc_rebel", ""},
	--{"rebel_trooper",400,-2960.1,5,1968.6,67,0, "npc_rebel", ""},
	spawnMobile("tatooine", "rebel_trooper",400,-2695.6,5,1982.9,122,0)
	spawnMobile("tatooine", "rebel_trooper",400,-3170.7,5,2137.7,-30,0)
	spawnMobile("tatooine", "rebel_trooper",400,-3028.33,5.01162,2616.08,294.927,0)
	spawnMobile("tatooine", "rebel_trooper",400,-2982.5,5,1956.8,73,0)
	spawnMobile("tatooine", "rebel_trooper",400,-3029.2,5,2614.8,-52,0)
	spawnMobile("tatooine", "rebel_trooper",400,-3207.39,5,2099.33,347.898,0)
	spawnMobile("tatooine", "rebel_trooper",400,-3203.5,5,2091.5,-159,0)
	--{"rebel_first_lieutenant",400,-3026.34,5.10198,2618.73,289.047,0, "npc_rebel", ""},
	--{"rebel_first_lieutenant",400,-2979.8,5,1957.6,67,0, "npc_rebel", ""},
end
