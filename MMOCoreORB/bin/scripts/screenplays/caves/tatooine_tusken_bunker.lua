TuskenBunkerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TuskenBunkerScreenPlay",

 	lootContainers = {
			5995601,
      5995605,
      5995608,
			5995609
	},

	lootLevel = 26,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 160000},
				{group = "junk", chance = 8240000},
				{group = "rifles", chance = 500000},
				{group = "pistols", chance = 500000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 10000000
		}
	},

	lootContainerRespawn = 180
}

registerScreenPlay("TuskenBunkerScreenPlay", true)

function TuskenBunkerScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function TuskenBunkerScreenPlay:spawnMobiles()
		spawnMobile("tatooine", "taiken_dark_apprentice",600,-2.8,-20,29,175,4235606)
		spawnMobile("tatooine", "taiken_dark_apprentice",600, 5,-20,29,179,4235606)
		spawnMobile("tatooine", "taiken_dark_apprentice",600, -10,-13,7,91,4235603)
		spawnMobile("tatooine", "taiken_dark_apprentice",600, 4,0,-4,-90,4235599)
		spawnMobile("tatooine", "taiken_dark_apprentice",600, -7,-17,-4,46,4235604)
		spawnMobile("tatooine", "taiken_dark_apprentice",600, 4,-13,-6,-45,4235601)
		spawnMobile("tatooine", "taiken_dark_apprentice",600, -4,-6,0,-1,4235601)
		spawnMobile("tatooine", "taiken_dark_apprentice",600, -0,0,2,0,4235598)
		spawnMobile("tatooine", "taiken_dark_apprentice",600, -1472,41,-193,-104,0)

		spawnMobile("tatooine", "taiken_at_st", 180, -1475, 41, -206, -110,0)
		spawnMobile("tatooine", "taiken_at_st", 180, -1497, 40, -195, 154,0)


		spawnMobile("tatooine", "taiken_nova", 180, -1480, 41, -202, -166,0)
		spawnMobile("tatooine", "taiken_nova", 180, -1492, 41, -196, -151,0)
		spawnMobile("tatooine", "taiken_nova", 180, -1473, 41, -190, -112,0)
		spawnMobile("tatooine", "taiken_nova", 180, -1488, 41, -185, 122,0)
		spawnMobile("tatooine", "taiken_nova", 180, -1489, 41, -188, 116,0)
		spawnMobile("tatooine", "taiken_nova", 180, -1487, 41, -184, 121,0)
		spawnMobile("tatooine", "taiken_nova", 180, -1478, 41, -186, -156,0)
		spawnMobile("tatooine", "taiken_nova", 180, -1481, 41, -185, -156,0)
		spawnMobile("tatooine", "taiken_nova", 180, 6, -13, 8, -91,4235603)
		spawnMobile("tatooine", "taiken_nova", 180, 6, -13, 7, -91,4235603)
		spawnMobile("tatooine", "taiken_nova", 180, 7, -13, 6, -91,4235603)
		spawnMobile("tatooine", "taiken_nova", 180, -9, -13, 4, 89,4235603)
		spawnMobile("tatooine", "taiken_nova", 180, -9, -13, 9, 91,4235603)
		spawnMobile("tatooine", "taiken_nova", 180, 3, -20, 1, 0,4235605)
		spawnMobile("tatooine", "taiken_nova", 180, -0, -20, 1, -1,4235605)
		spawnMobile("tatooine", "taiken_nova", 180, -3, -20, 4, 90,4235605)
		spawnMobile("tatooine", "taiken_nova", 180, -3, -20, 6, 89,4235605)
		spawnMobile("tatooine", "taiken_nova", 180, 6, -20, 6, -90,4235605)
		spawnMobile("tatooine", "taiken_nova", 180, 6, -20, 4, -90,4235605)


		spawnMobile("tatooine", "taiken_scout", 180, -1486, 41, -185, 111,0)
		spawnMobile("tatooine", "taiken_scout", 180, -1487, 41, -186, 112,0)
		spawnMobile("tatooine", "taiken_scout", 180, -1488, 41, -187, 110,0)
		spawnMobile("tatooine", "taiken_scout", 180, -1488, 41, -188, 114,0)
		spawnMobile("tatooine", "taiken_scout", 180, -1489, 41, -189, 120,0)
		spawnMobile("tatooine", "taiken_scout", 180, -1488, 41, -185, 114,0)
		spawnMobile("tatooine", "taiken_scout", 180, -1489, 41, -187, 112,0)

end
