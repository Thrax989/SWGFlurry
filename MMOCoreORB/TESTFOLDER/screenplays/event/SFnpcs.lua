SFnpcs = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "SFnpcs"
}

registerScreenPlay("SFnpcs", true)

function SFnpcs:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
	end
end
function SFnpcs:spawnMobiles()
	--Mobiles
	
	spawnMobile("lok", "imperial_recruiter", 1, -18.6, 2.8, 19.7, 176, 281475302352949)
	spawnMobile("lok", "junk_dealer", 1, 4914.3, 12.8, -3711.9, 174, 0)
	spawnMobile("lok", "informant_npc_lvl_1", 1, 4819.1, 15.0, -3678.3, 146, 0)
	spawnMobile("lok", "bothan_information_broker", 1, 5015.2, 14.2, -3730.0, -137, 0)
	spawnMobile("lok", "moisture_farmer", 1, 4856.8, 13.1, -3557.5, -125, 0)
	spawnMobile("lok", "figrin_dan", 1, -5.2, -0.2, -12.2, 33, 281475275106416)
	spawnMobile("lok", "rebel_recruiter", 1, 8.3, -8.5, 15.3, 179, 281475302352958)
	spawnMobile("lok", "informant_npc_lvl_1", 1, -6.8, -8.5, 5.7, 89, 281475302374872)
	spawnMobile("lok", "patron", 1, -11.4, 1.0, -5.0, 62, 281475275106416)
	spawnMobile("lok", "criminal", 900, -10.4, -8.5, 8.0, 122, 281475302374872)
	spawnMobile("lok", "commoner_tatooine", 1, 4919.9, 13.2, -3755.1, 175, 0)
	spawnMobile("lok", "bounty_hunter", 1, 4811.3, 17.1, -3744.9, 38, 0)
	spawnMobile("lok", "bounty_hunter", 1, 5.1, 1.7, -1.6, -32, 281475302365371)
	spawnMobile("lok", "corsec_agent", 1, 5.9, 2.2, -18.0, 120, 281475302352954)
	spawnMobile("lok", "surgical_droid_21b", 1, 0.2, 0.2, -0.3, -39, 281475287621804)
	spawnMobile("lok", "imperial_medic", 1, -6.4, 1.2, 6.2, 89, 281475291558542)
	spawnMobile("lok", "commoner_technician", 1, 4701.9, 12.8, -3875.4, 34, 0)
	spawnMobile("lok", "imperial_master_sergeant", 1, 10.2, 2.8, 2.4, -126, 281475302374865)
	spawnMobile("lok", "stormtrooper_colonel", 1, 1.7, -8.5, 4.1, -56, 281475302374867)
	spawnMobile("lok", "corsec_detective", 1, -10.0, 2.2, -8.3, 54, 281475302374865)
	spawnMobile("lok", "eg6_power_droid", 1, 4995.9, 13.4, -3636.0, 143, 0)
	spawnMobile("lok", "cll8_binary_load_lifter", 1, 4894.0, 12.9, -3680.6, -159, 0)
	spawnMobile("lok", "smuggler", 1, 4893.5, 13.3, -3688.7, -120, 0)
	spawnMobile("lok", "commoner", 1, 5004.3, 12.0, -3838.0, -158, 0)
	spawnMobile("lok", "miner", 1, 5014.3, 12.0, -3904.2, -45, 0)
	spawnMobile("lok", "commoner", 1, 4935.5, 12.0, -3884.8, -62, 0)
	spawnMobile("lok", "commoner", 1, 4929.6, 12.0, -3880.9, 129, 0)
	

end
