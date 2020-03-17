EndorMarauderStrongholdScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "EndorMarauderStrongholdScreenPlay",

}

registerScreenPlay("EndorMarauderStrongholdScreenPlay", true)

function EndorMarauderStrongholdScreenPlay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles()
	end
end

function EndorMarauderStrongholdScreenPlay:spawnMobiles()

	local pNpc = spawnMobile("endor", "marauder_warrior", 450, -4702.4, 82.0, -2284.3, -179, 0)
	self:setMoodString(pNpc, "angry")
	pNpc = spawnMobile("endor", "marauder_soldier", 900, -4715.4, 82.0, -2272.4, -48, 0)
	self:setMoodString(pNpc, "npc_sitting_table_eating")
	spawnMobile("endor", "marauder_warrior", 450, -4668.1, 82.2, -2276.4, -85, 0)
	spawnMobile("endor", "marauder_warroir", 450, -4667.7, 82.3, -2270.5, -85, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4623.3, 92.0, -2277.5, -23, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4598.4, 98.8, -2268.2, -127, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4598.0, 98.9, -2277.2, -69, 0)
	spawnMobile("endor", "marauder_boss", 3600, -4556, 99, -2290, -85, 0)
	spawnMobile("endor", "marauder_soldier", 900, -4697, 82, -2262, -85, 0)
	spawnMobile("endor", "marauder_soldier", 900, -4703, 82, -2292, -23, 0)
	spawnMobile("endor", "marauder_soldier", 900, -4769, 82, -2299, -127, 0)
	spawnMobile("endor", "marauder_soldier", 900, -4628, 89, -2293, -69, 0)
	spawnMobile("endor", "marauder_soldier", 900, -4591, 99, -2254, -85, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4694, 82, -2264, -85, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4699, 82, -2263, -23, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4708, 82, -2285, -127, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4696, 82, -2286, -69, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4773, 82, -2294, -85, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4776, 82, -2289, -85, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4590, 99, -2250, -23, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4588, 99, -2250, -127, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4572, 99, -2289, -69, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4574, 99, -2289, -85, 0)
	spawnMobile("endor", "marauder_warrior", 450, -4576, 99, -2286, -85, 0)

end