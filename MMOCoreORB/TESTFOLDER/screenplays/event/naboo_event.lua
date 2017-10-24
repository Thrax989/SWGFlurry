naboo_eventScreenPlay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "naboo_eventScreenPlay",
}

registerScreenPlay("naboo_eventScreenPlay", true)

function naboo_eventScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function naboo_eventScreenPlay:spawnMobiles()
	-- Outside spot 1
--	spawnMobile("naboo", "v3_fx", 1180, -5508, 6, 4406, 180, 0)
--	spawnMobile("naboo", "v3_fx", 1180, -5481, 6, 4406, 180, 0)
--	spawnMobile("naboo", "v3_fx", 1180, -5486, 14, 4463, 180, 0)
	-- Right tent
--	spawnMobile("naboo", "v3_fx", 1180, -5505, 14, 4464, 180, 0)
--	spawnMobile("naboo", "dark_jedi_master", 300, 7.6, 12, 73.2, -80, 1688852)
--	spawnMobile("naboo", "v3_fx", 1300, -7.6, 12, 73.2, 80, 1688852)
	-- Green factory
--	spawnMobile("naboo", "dark_jedi_master", 300, 0, 12, 31.2, 360, 1688859)
--	spawnMobile("yavin4", "pashna", 900, 0.0, -47.4, -84.8, -1, 3435643)
	-- Right tower
--	spawnMobile("naboo", "palpatine", 1, 0, 12, 13.2, 360, 1688859)
--	spawnMobile("naboo", "v3_fx", 1180, -5493, 14, 4472, 180, 0)
	-- Central lawn
--	spawnMobile("naboo", "v3_fx", 1180, -5499, 14, 4472, 180, 0)
--	spawnMobile("naboo", "v3_fx", 1180, -5494, 6, 4406, 180, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5483, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5485, 6, 4361, 360, 0)
	-- Left supplies
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5487, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5489, 6, 4361, 360, 0)
	-- Left tower
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5491, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5493, 6, 4361, 360, 0)
	-- Left tent with food table
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5495, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5497, 6, 4361, 360, 0)
	-- Ion-fusion generator
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5499, 6, 4361, 360, 0)
	-- Central tower
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5501, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5503, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5505, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5507, 6, 4361, 360, 0)
	-- Right building
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5509, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5511, 6, 4361, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5511, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5509, 6, 4356, 360, 0)
	-- Left building
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5507, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5505, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5503, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5501, 6, 4356, 360, 0)
	-- Outside spot 2
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5499, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5497, 6, 4356, 360, 0)
	-- Outside viewpoint hill
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5495, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5493, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5491, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5489, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5487, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5485, 6, 4356, 360, 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5483, 6, 4356, 360, 0)
--	spawnMobile("naboo", "at_st", 180, -5506, 6, 4342, 360, 0)
--	spawnMobile("naboo", "at_st", 180, -5496, 6, 4342, 360, 0)
--	spawnMobile("naboo", "at_st", 180, -5481, 6, 4342, 360, 0)
	spawnMobile("naboo", "at_at", 180, -5494, 6, 4309, 360, 0)
	spawnMobile("naboo", "royal_imperial_guard", 180, -5507, 6, 4365, 360, 0)
	spawnMobile("naboo", "royal_imperial_guard", 180, -5509, 6, 4365, 360, 0)
	spawnMobile("naboo", "stormtrooper_captain", 180, -5508, 6, 4367, 180, 0)
--	spawnMobile("naboo", "stormtrooper_rifleman", 180, -5509, 6, 4356, 360, 0)




end
