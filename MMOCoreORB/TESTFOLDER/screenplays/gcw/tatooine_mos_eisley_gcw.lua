local ObjectManager = require("managers.object.object_manager")

tatooine_mos_eisley_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "tatooine_mos_eisley_gcw"
}

registerScreenPlay("tatooine_bestine_gcw", true)

function tatooine_mos_eisley_gcw:start()
	if (isZoneEnabled("tatooine")) then
	if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function tatooine_mos_eisley_gcw:spawnImperials()

	--Imperial Npc's Outside
	spawnMobile("tatooine", "crackdown_comm_operator",400,3410.5,5,-4735.8,-154,0)
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,3500.8,8,-4683.9,143,0)
	--{"crackdown_elite_sand_trooper",400,3496.81,5.52789,-4923.13,352.589,0, "neutral", ""},
	spawnMobile("tatooine", "crackdown_imperial_noncom",400,3760.6,5,-4802,68,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,3322.23,4.77649,-4623.57,331.647,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,3304.54,5,-4602.49,86.0652,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,3288.68,4.72215,-4636.09,61.7463,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,3278.49,4.75246,-4676.19,22.0117,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,3290.4,5,-4696.4,137,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,3427.14,5,-4952.92,91.6772,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,3417.99,5,-4974.46,-54,0)
	spawnMobile("tatooine", "crackdown_sand_trooper",400,3538.04,5.12541,-4806.46,312.721,0)
	--{"crackdown_sand_trooper",400,3516.17,5,-4879.7,80,0, "neutral", ""},
	spawnMobile("tatooine", "crackdown_sand_trooper_hard",400,3279.95,5,-4835.74,40,0)
	spawnMobile("tatooine", "crackdown_sand_trooper_hard",400,3341.8,5,-4750.9,124,0)
	spawnMobile("tatooine", "crackdown_scout_trooper",400,3585.84,5,-4719.95,281.969,0)
	spawnMobile("tatooine", "crackdown_scout_trooper_hard",400,3288.12,4.9981,-4842.11,27.4222,0)
	spawnMobile("tatooine", "crackdown_scout_trooper_hard",400,3377.5,0,-4709,156,0)
	--{"crackdown_stormtrooper",400,3242.3,5,-4532.3,151,0, "npc_imperial", ""},
	spawnMobile("tatooine", "crackdown_stormtrooper_rifleman",400,3756.71,5,-4845.03,78.2181,0)
	--{"imperial_colonel",400,3490.5,5,-4733.94,305,0, "npc_imperial", ""},

end

function tatooine_mos_eisley_gcw:spawnRebels()

        --Rebel Npc's Outside
	spawnMobile("tatooine", "sentry_specforce_bombardier",400,3410.5,5,-4735.8,-154,0)
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,3500.8,8,-4683.9,143,0)
	--{"crackdown_elite_sand_trooper",400,3496.81,5.52789,-4923.13,352.589,0, "neutral", ""},
	spawnMobile("tatooine", "crackdown_imperial_noncom",400,3760.6,5,-4802,68,0)
	spawnMobile("tatooine", "sentry_specforce",400,3322.23,4.77649,-4623.57,331.647,0)
	spawnMobile("tatooine", "sentry_specforce",400,3304.54,5,-4602.49,86.0652,0)
	spawnMobile("tatooine", "sentry_specforce",400,3288.68,4.72215,-4636.09,61.7463,0)
	spawnMobile("tatooine", "sentry_specforce",400,3278.49,4.75246,-4676.19,22.0117,0)
	spawnMobile("tatooine", "sentry_specforce",400,3290.4,5,-4696.4,137,0)
	spawnMobile("tatooine", "sentry_specforce",400,3427.14,5,-4952.92,91.6772,0)
	spawnMobile("tatooine", "sentry_specforce",400,3417.99,5,-4974.46,-54,0)
	spawnMobile("tatooine", "sentry_specforce",400,3538.04,5.12541,-4806.46,312.721,0)
	--{"sentry_specforce",400,3516.17,5,-4879.7,80,0, "neutral", ""},
	spawnMobile("tatooine", "sentry_specforce_captain",400,3279.95,5,-4835.74,40,0)
	spawnMobile("tatooine", "sentry_specforce_captain",400,3341.8,5,-4750.9,124,0)
	spawnMobile("tatooine", "sentry_specforce",400,3585.84,5,-4719.95,281.969,0)
	spawnMobile("tatooine", "specforce_marine",400,3288.12,4.9981,-4842.11,27.4222,0)
	spawnMobile("tatooine", "specforce_marine",400,3377.5,0,-4709,156,0)
	--{"sentry_specforce",400,3242.3,5,-4532.3,151,0, "npc_rebel", ""},
	spawnMobile("tatooine", "sentry_rebel_major",400,3756.71,5,-4845.03,78.2181,0)
	--{"rebel_colonel",400,3490.5,5,-4733.94,305,0, "npc_rebel", ""},
end
