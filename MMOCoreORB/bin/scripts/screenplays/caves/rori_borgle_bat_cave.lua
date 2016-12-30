BorgleBatCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "BorgleBatCaveScreenPlay",

	lootContainers = {
		8795683,
		8795684,
		8795685,
		8795686,
		8795687,
		8795688,
		8795689
        },
        
        lootLevel = 13, 
 
        lootGroups = {
                {
                        groups = {
                                {group = "junk", chance = 4800000},
                                {group = "melee_weapons", chance = 600000},
				{group = "pistols", chance = 200000},
				{group = "carbines", chance = 200000},
				{group = "rifles", chance = 200000},
                                {group = "clothing_attachments", chance = 2000000},
                                {group = "armor_attachments", chance = 2000000}
                        },
                        lootChance = 8000000
                }                                       
        },
        
        lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("BorgleBatCaveScreenPlay", true)

function BorgleBatCaveScreenPlay:start()
	if (isZoneEnabled("rori")) then
                self:spawnMobiles()
                self:initializeLootContainers()
        end
end

function BorgleBatCaveScreenPlay:spawnMobiles()
	spawnMobile("rori", "cave_dweller", 900,  874.9, 85.3, -4906.9, 137, 0)
	spawnMobile("rori", "cave_dweller", 900,  875.0, 85.2, -4903.8, 137, 0)

	spawnMobile("rori", "cave_dweller", 900,  10.3, -23.5, -25.1, -8, 5407164)
	spawnMobile("rori", "cave_dweller", 900,  12.1, -23.4, -26.6, -9, 5407164)

	spawnMobile("rori", "cave_dweller", 900,  1.3, -40.5, -68.9, -43, 5407165)
	spawnMobile("rori", "cave_dweller", 900,  0.5, -40.7, -71.1, -23, 5407165)

	spawnMobile("rori", "cave_dweller", 900,  45.5, -46.2, -95.0, -47, 5407166)
	spawnMobile("rori", "cave_dweller", 900,  49.1, -46.1, -96.5, -26, 5407166)

	spawnMobile("rori", "cave_dweller", 900,  -4.8, -45.1, -137.7, 39, 5407167)
	spawnMobile("rori", "cave_dweller", 900,  -4.2, -45.1, -141.0, 40, 5407167)

	spawnMobile("rori", "cave_dweller", 900,  54.5, -49.4, -131.9, -85, 5407167)
	spawnMobile("rori", "cave_dweller", 900,  58.6, -48.7, -130.1, -82, 5407167)

	spawnMobile("rori", "cave_dweller", 900,  46.1, -56.3, -180.9, -14, 5407167)
	spawnMobile("rori", "cave_dweller", 900,  47.5, -56.4, -184.1, 20, 5407167)

	spawnMobile("rori", "cave_dweller", 900,  -8.4, -64.0, -180.9, 86, 5407168)
	spawnMobile("rori", "cave_dweller", 900,  -11.1, -64.3, -178.5, 90, 5407168)

	spawnMobile("rori", "cave_dweller", 900,  -6.1, -64.2, -234.2, -20, 5407169)
	spawnMobile("rori", "cave_dweller", 900,  -8.8, -64.8, -237.1, -13, 5407169)

	spawnMobile("rori", "cave_dweller", 900,  -60.6, -69.9, -192.0, 35, 5407170)
	spawnMobile("rori", "cave_dweller", 900,  -59.5, -69.9, -194.4, 27, 5407170)

	spawnMobile("rori", "cave_dweller", 900,  -114.1, -69.0, -170.2, 87, 5407170)
	spawnMobile("rori", "cave_dweller", 900,  -119.2, -69.0, -167.8, 78, 5407170)

	spawnMobile("rori", "cave_dweller", 900,  -99.3, -70.3, -118.0, 168, 5407170)
	spawnMobile("rori", "cave_dweller", 900,  -101.4, -69.6, -115.3, 178, 5407170)

	spawnMobile("rori", "cave_dweller", 900,  -62.2, -70.5, -85.5, -115, 5407171)
	spawnMobile("rori", "cave_dweller", 900,  -60.6, -70.3, -82.3, -103, 5407171)

	spawnMobile("rori", "cave_dweller", 900,  -36.7, -70.6, -108.3, -66, 5407171)
	spawnMobile("rori", "cave_dweller", 900,  -32.4, -70.5, -106.6, -51, 5407171)

	spawnMobile("rori", "cave_dweller", 900,  -30.1, -79.7, -138.5, 15, 5407172)
	spawnMobile("rori", "cave_dweller", 900,  -29.2, -79.8, -140.5, 41, 5407172)

	spawnMobile("rori", "cave_dweller", 900,  -75.2, -99.2, -156.1, 24, 5407170)
	spawnMobile("rori", "cave_dweller", 900,  -73.6, -99.1, -158.4, 31, 5407170)

	spawnMobile("rori", "cave_dweller", 900,  -91.4, -101.0, -106.0, 175, 5407173)
	spawnMobile("rori", "cave_dweller", 900,  -88.5, -100.9, -103.3, 178, 5407173)

end
