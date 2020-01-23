--[[
INFO


--]]

local ObjectManager = require("managers.object.object_manager")

mosEisleyLegacyMobsScreenplay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("mosEisleyLegacyMobsScreenplay", true)

function mosEisleyLegacyMobsScreenplay:start()
	if (isZoneEnabled("tatooine")) then	
		self:spawnMobiles()
	end
end

function mosEisleyLegacyMobsScreenplay:spawnMobiles()

	spawnMobile("tatooine", "vourk_verzremp", 1, 3520.7, 5, -4822.18, 3, 0)
	
	spawnMobile("tatooine", "pall", 1, 3526.47, 5, -4619.67, 57, 0)
	
	spawnMobile("tatooine", "niko_brehe", 1, 3506, 5, -4795, 136, 0)
	
	spawnMobile("tatooine", "niko_brehe", 1, 3521.6, 5, -4683.34, 157, 0)
	
	spawnMobile("tatooine", "toggi_bok", 1, 2757.942, 7.007, -4570.06, 93, 0)
	
	spawnMobile("tatooine", "reimos_taligg", 1, 3619.45, 5, -4711.25, 60, 0)
	
	spawnMobile("tatooine", "carhla_bastra", 1, 128.831, 52, -5429.132, -33, 0)
	
	spawnMobile("tatooine", "cuan_talon", 1, -161.44, 65, -55322.71, 76, 0)
	
	spawnMobile("tatooine", "sorna", 1, -135.77, 65, -5331.47, 36, 0)--side quest, shmi's grave
	
	spawnMobile("tatooine", "zef_ando", 1, -2575, 0, -5517, -50, 0)
	
	spawnMobile("tatooine", "fa_2po", 1, -3804.721, 30.913, -4723.62, -50, 0)
	
	spawnMobile("tatooine", "draci", 1, -304.11, 48.205, -6940.35, 1, 0)
	
	spawnMobile("tatooine", "jem_lavar", 1, -487.37, 43.6, -7119.54, 1, 0)
	
	--spawnMobile("tatooine", "watto", 1, -487.37, 43.6, -7119.54, 1, 0)-- in junkshop
	
	spawnMobile("tatooine", "peggin_dulin", 1, -2975.55, 5, 1910.64, -29, 0)
	
	spawnMobile("tatooine", "c4_zx", 1, -6152.08, 23.6275, 1810.5, -106, 0)
	
	spawnMobile("tatooine", "wounded_miner", 1, -5576.42, 322.588, 1736.14, -37, 0)
	
	spawnMobile("tatooine", "downed_pilot", 1, -7217.388, 309.789, 3869.83, 33, 0)
	
	spawnMobile("tatooine", "ankwee", 1, 1351.03, 11, 3108.34, -15, 0)
	
	spawnMobile("tatooine", "draknus", 1, 1328.7, 7, 3265.39, 176, 0)

end























