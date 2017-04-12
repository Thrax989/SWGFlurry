JantaCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "JantaCaveScreenPlay",

	lootContainers = {
		529346,
        	529349,
        	529353,
        	529363,
        	529368
	},

	lootLevel = 300,

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

	lootContainerRespawn = 600
}

registerScreenPlay("JantaCaveScreenPlay", true)

function JantaCaveScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function JantaCaveScreenPlay:spawnMobiles()
	spawnMobile("dantooine", "janta_cave_boss", 900, -91, -99, -89, 177, 529333)
	spawnMobile("dantooine", "janta_chieftain", 900, -123, -69, -169, 92, 529330)
	spawnMobile("dantooine", "janta_moon",900,-10,-46,-150,39,529327)
	spawnMobile("dantooine", "janta_bloody",900,-12,-62,-262,0,529329)


	spawnMobile("dantooine", "janta_harvester",600,6.9,-40.8,-73.5,-3,529325)
	spawnMobile("dantooine", "janta_harvester",600,-5.5,-64.9,-240.8,-83,529329)
	spawnMobile("dantooine", "janta_harvester",600,-94.6,-73.7,-163.4,-174,529330)
	spawnMobile("dantooine", "janta_harvester",600,-98.9,-73.3,-165.8,130,529330)
	spawnMobile("dantooine", "janta_harvester",600,53,-46,-89,-77,529326)
	spawnMobile("dantooine", "janta_harvester",60,28,-60,-182,19,529327)

	spawnMobile("dantooine", "janta_herbalist",600,-9,-40.5,-71.6,77,529325)
	spawnMobile("dantooine", "janta_herbalist",600,-3.5,-40.5,-75.2,5,529325)
	spawnMobile("dantooine", "janta_herbalist",600,-96.6,-102.4,-138.3,103,529330)
	spawnMobile("dantooine", "janta_herbalist",600,-87.6,-101.9,-136.5,163,529330)
	spawnMobile("dantooine", "janta_herbalist",600,-20,-65,-211,79,529329)
	spawnMobile("dantooine", "janta_herbalist",600,29,-60,-180,-154,529329)

	spawnMobile("dantooine", "janta_hunter",600,65.7,-54.5,-152.7,-101,529327)
	spawnMobile("dantooine", "janta_hunter",600,-5.4,-64.2,-234.8,-43,529329)
	spawnMobile("dantooine", "janta_hunter",600,-97.6,-72.7,-174.4,71,529330)
	spawnMobile("dantooine", "janta_hunter",600,-32.3,-70.8,-85.9,-168,529331)
	spawnMobile("dantooine", "janta_hunter",600,52,-46,-62,-79,529326)
	spawnMobile("dantooine", "janta_hunter",600,-93,-73,-177,-21,529330)

	spawnMobile("dantooine", "janta_loreweaver",600,49.9,-46.2,-62.6,-99,529326)
	spawnMobile("dantooine", "janta_loreweaver",600,46.4,-46.3,-60.5,-105,529326)
	spawnMobile("dantooine", "janta_loreweaver",600,41.9,-46.1,-98,-22,529326)
	spawnMobile("dantooine", "janta_loreweaver",600,-28.7,-80.1,-148.5,11,529332)
	spawnMobile("dantooine", "janta_loreweaver",600,62,-55,-152,153,529327)
	spawnMobile("dantooine", "janta_loreweaver",600,-90,-73,-174,-64,529330)

	spawnMobile("dantooine", "janta_primalist",600,45.4,-46.2,-93.1,-21,529326)
	spawnMobile("dantooine", "janta_primalist",600,58.3,-46.9,-123.3,-103,529327)
	spawnMobile("dantooine", "janta_primalist",600,58.5,-47.8,-127,-91,529327)
	spawnMobile("dantooine", "janta_primalist",600,-68.8,-70.2,-88.8,63,529331)
	spawnMobile("dantooine", "janta_primalist",600,64,-55,-157,-11,529327)
	spawnMobile("dantooine", "janta_primalist",600,-53,-68,-109,-176,529331)

	spawnMobile("dantooine", "janta_rockshaper",600,-6.6,-45.4,-145.1,22,529327)
	spawnMobile("dantooine", "janta_rockshaper",600,-14.9,-63.7,-259.9,1,529329)
	spawnMobile("dantooine", "janta_rockshaper",600,-9.7,-63.8,-260.6,-9,529329)
	spawnMobile("dantooine", "janta_rockshaper",600,-21.5,-79.5,-143.4,-32,529332)
	spawnMobile("dantooine", "janta_rockshaper",600,50,-46,-58,-13,529326)
	spawnMobile("dantooine", "janta_rockshaper",600,57,-46,-120,-116,529327)

	spawnMobile("dantooine", "janta_scout",600,-0.9,-45,-141.7,18,529327)
	spawnMobile("dantooine", "janta_scout",600,-4.8,-65.5,-209.6,-94,529329)
	spawnMobile("dantooine", "janta_scout",600,-94.5,-101.9,-143.1,87,529330)
	spawnMobile("dantooine", "janta_scout",600,-113.9,-69.4,-124.1,88,529330)
	spawnMobile("dantooine", "janta_scout",600,-11,-44,-142,38,529327)
	spawnMobile("dantooine", "janta_scout",600,-56,-68,-110,106,529331)

	spawnMobile("dantooine", "janta_shaman",600,-59.6,-70.9,-180.4,-95,529330)
	spawnMobile("dantooine", "janta_shaman",600,-63.8,-69.9,-171.1,-131,529330)
	spawnMobile("dantooine", "janta_shaman",600,-26.1,-70.9,-148.2,-46,529332)
	spawnMobile("dantooine", "janta_shaman",600,4,-41,-74,-24,529325)
	spawnMobile("dantooine", "janta_shaman",600,-65,-69,-90,-8,529331)
	spawnMobile("dantooine", "janta_shaman",600,-92,-102,-137,148,529330)

	spawnMobile("dantooine", "janta_soothsayer",600,-10.9,-64,-183.5,79,529328)
	spawnMobile("dantooine", "janta_soothsayer",600,-0.8,-65.7,-211.8,-91,529329)
	spawnMobile("dantooine", "janta_soothsayer",600,-29.2,-70.4,-87.1,166,529331)
	spawnMobile("dantooine", "janta_soothsayer",600,-25.4,-69.7,-91.3,-55,529331)
	spawnMobile("dantooine", "janta_soothsayer",600,-0,-41,-74,-11,529325)
	spawnMobile("dantooine", "janta_soothsayer",600,-50,-68,-111,-92,529331)
	spawnMobile("dantooine", "janta_soothsayer",600,-10,-68,-93,176,529331)

	spawnMobile("dantooine", "janta_tribesman",600,11,-40.9,-69.7,-58,529325)
	spawnMobile("dantooine", "janta_tribesman",600,60.3,-55.7,-154.6,72,529327)
	spawnMobile("dantooine", "janta_tribesman",600,-8.2,-64,-229.5,-76,529329)
	spawnMobile("dantooine", "janta_tribesman",600,-62.2,-70.3,-87.2,-136,529331)
	spawnMobile("dantooine", "janta_tribesman",600,-5,-64,-177,99,529328)
	spawnMobile("dantooine", "janta_tribesman",600,-105,-70,-123,142,529330)
	spawnMobile("dantooine", "janta_tribesman",600,-10,-68,-97,0,529331)

	spawnMobile("dantooine", "janta_warrior",600,67,-54.8,-156.2,-85,529327)
	spawnMobile("dantooine", "janta_warrior",600,-93,-70.4,-123.2,-96,529330)
	spawnMobile("dantooine", "janta_warrior",600,-84.9,-100.1,-97.2,-109,529333)
	spawnMobile("dantooine", "janta_warrior",600,-98,-100.5,-100.5,79,529333)
	spawnMobile("dantooine", "janta_warrior",600,-14,-40,-75,15,529331)
	spawnMobile("dantooine", "janta_warrior",600,-6,-40,-73,34,529325)
	spawnMobile("dantooine", "janta_warrior",600,5,-40,-57,-172,529325)
	spawnMobile("dantooine", "janta_warrior",600,47,-46,-103,-42,529326)
	spawnMobile("dantooine", "janta_warrior",600,-8,-44,-137,43,529327)
	spawnMobile("dantooine", "janta_warrior",600,-2,-45,-136,46,529327)
	spawnMobile("dantooine", "janta_warrior",600,13,-64,-179,68,529328)
	spawnMobile("dantooine", "janta_warrior",600,12,-63,-186,66,529328)
	spawnMobile("dantooine", "janta_warrior",600,-22,-65,-238,78,529329)
	spawnMobile("dantooine", "janta_warrior",600,-17,-66,-244,37,529329)
	spawnMobile("dantooine", "janta_warrior",600,-90,-73,-170,-144,529330)
	spawnMobile("dantooine", "janta_warrior",600,-24,-79,-145,-41,529332)
	spawnMobile("dantooine", "janta_warrior",600,-84,-101,-110,166,529333)
	spawnMobile("dantooine", "janta_warrior",600,-96,-100,-110,170,529333)
end
