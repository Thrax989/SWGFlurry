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
			lootChance = 8000000
		}
	},

	lootContainerRespawn = 1800
}

registerScreenPlay("TuskenBunkerScreenPlay", true)

function TuskenBunkerScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function TuskenBunkerScreenPlay:spawnMobiles()
	spawnMobile("tatooine", "taiken_dark_apprentice",300,-2.8,-20,29,175,4235606)
	spawnMobile("tatooine", "taiken_dark_apprentice",300, 5,-20,29,179,4235606)
	spawnMobile("tatooine", "taiken_dark_apprentice",300, -10,-13,7,91,4235603)
	spawnMobile("tatooine", "taiken_dark_apprentice",300, 4,0,-4,-90,4235599)

	spawnMobile("tatooine", "taiken_boss",300,1.5864,-20.75,32.0004,0,4235606)
	
	spawnMobile("tatooine", "taiken_at_st", 300, -1469, 40, -204, -109,0)
	spawnMobile("tatooine", "taiken_at_st", 300, -1500, 40, -190, 157,0)
	
	spawnMobile("tatooine", "taiken_nova", 300, -1494, 40, -196, -143,0)
	spawnMobile("tatooine", "taiken_nova", 300, -1478, 41, -204, -157,0)
	spawnMobile("tatooine", "taiken_nova", 300, -1481, 41, -185, -155,0)
	spawnMobile("tatooine", "taiken_nova", 300, -1478, 41, -186, -155,0)
	spawnMobile("tatooine", "taiken_nova", 300, -1494, 40, -196, -143,0)
	spawnMobile("tatooine", "taiken_nova", 300, 7, -13, 8, -90,4235603)
	spawnMobile("tatooine", "taiken_nova", 300, 7, -13, 5, -91,4235603)
	spawnMobile("tatooine", "taiken_scout", 300, -1486, 41, -185, 111,0)
	spawnMobile("tatooine", "taiken_scout", 300, -1487, 41, -186, 112,0)
	spawnMobile("tatooine", "taiken_scout", 300, -1488, 41, -187, 110,0)
	spawnMobile("tatooine", "taiken_scout", 300, -1488, 41, -188, 114,0)
	spawnMobile("tatooine", "taiken_scout", 300, -1489, 41, -189, 120,0)
	spawnMobile("tatooine", "taiken_scout", 300, -1488, 41, -185, 114,0)
	spawnMobile("tatooine", "taiken_scout", 300, -1489, 41, -187, 112,0)
	
	
	
	spawnMobile("tatooine", "taiken_moff", 300, -1485, 41, -188, -63,0)
	
	






end
