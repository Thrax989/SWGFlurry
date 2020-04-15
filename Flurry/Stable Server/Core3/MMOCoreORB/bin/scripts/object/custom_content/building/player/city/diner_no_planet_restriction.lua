object_building_player_city_diner_no_planet_restriction = object_building_player_city_shared_diner_no_planet_restriction:new {
	lotSize = 2,
	baseMaintenanceRate = 50,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "yavin4", "dathomir", "endor", "kashyyyk", "hoth", "mandalore", "taanab", "kaas", "moraban", "coruscant", "hutta", "chandrila", "jakku"},
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1}
	},
}
ObjectTemplates:addTemplate(object_building_player_city_diner_no_planet_restriction, "object/building/player/city/diner_no_planet_restriction.iff")
