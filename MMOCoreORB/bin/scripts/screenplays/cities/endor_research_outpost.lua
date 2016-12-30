EndorResearchOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "EndorResearchOutpostScreenPlay"
}

registerScreenPlay("EndorResearchOutpostScreenPlay", true)

function EndorResearchOutpostScreenPlay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles()
	end
end

function EndorResearchOutpostScreenPlay:spawnMobiles()

	--tavern building
	pNpc = spawnMobile("endor", "kilnstrider",60,-3.44448,0.624999,-6.82681,331.362,9925367)
	self:setMoodString(pNpc, "npc_imperial")

	--outside
 	spawnMobile("endor", "gorax",137,-838.517,60.0413,1699.08,30.4167,0)
	spawnMobile("endor", "gorax",137,3036.39,8.63489,1307.6,30.4167,0)
	spawnMobile("endor", "gorax",137,-1542.6,15.7976,-412.154,30.4167,0)
	spawnMobile("endor", "gorax",137,-4172.79,28.5133,2236.5,30.4167,0)
	spawnMobile("endor", "gorax",137,-3786.03,26.7471,-928.416,30.4167,0)
	spawnMobile("endor", "gorax",137,3906.47,25.6023,96.5793,30.4167,0)
	spawnMobile("endor", "gorax",137,3221.05,12.4328,-2243.42,30.4167,0)
	spawnMobile("endor", "gorax",137,452.053,5.44401,-4084.26,30.4167,0)
	spawnMobile("endor", "gorax",137,-3309.83,14.7261,-5061.57,30.4167,0)
	spawnMobile("endor", "gorax",137,3208.94,5.20302,-4997.49,30.4167,0)
	spawnMobile("endor", "businessman", 60, -899.977, 78, 1548.09, 107.809, 0)
	spawnMobile("endor", "commoner", 60, -828.009, 76, 1573.28, 320.402, 0)
	spawnMobile("endor", "commoner", 60, -838.625, 76, 1574.97, 333.27, 0)
	spawnMobile("endor", "commoner", 60, -864.293, 79.5001, 1598.78, 184.686, 0)
	spawnMobile("endor", "commoner", 60, -841.483, 79.5144, 1602.34, 240.991, 0)
	spawnMobile("endor", "commoner", 60, -851.058, 80.0739, 1555.56, 238.812, 0)
	spawnMobile("endor", "commoner", 60, -875.462, 80.0597, 1571.89, 84.1865, 0)
	spawnMobile("endor", "commoner", 60, -880.276, 76, 1604.61, 30.4167, 0)
	spawnMobile("endor", "commoner", 60, -880.194, 76, 1624.44, 273.171, 0)
	spawnMobile("endor", "commoner", 60, -880.718, 76, 1638.25, 11.1628, 0)
	spawnMobile("endor", "commoner", 60, -896.026, 80, 1621.19, 243.324, 0)
	spawnMobile("endor", "scientist", 60, -874.656, 80, 1564.76, 108.353, 0)
	spawnMobile("endor", "scientist", 60, -845.301, 79.5, 1599.49, 197.393, 0)
	spawnMobile("endor", "smuggler", 300, -889.786, 76, 1591.32, 182.753, 0)
	spawnMobile("endor", "smuggler", 300, -890.91, 76, 1591.38, 253.162, 0)
	spawnMobile("endor", "smuggler", 300, -889.732, 76, 1592.45, 319.914, 0)
	spawnMobile("endor", "noble", 60, -829.243, 76, 1567.61, 95.886, 0)
	pNpc = spawnMobile("endor", "kilnstrider",60,-3.44448,0.624999,-6.82681,331.362,9925367)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("endor", "r3",60,-950.705,73,1542.69,331.775,0)
	self:setMoodString(pNpc, "neutral")

end