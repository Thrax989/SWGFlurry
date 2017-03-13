NightSisterLaborCampScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "NightSisterLaborCampScreenPlay",
	
	lootContainers = {
		8715535,
		8715534,		
		164440
	},
	
	lootLevel = 38,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 3500000},
				{group = "junk", chance = 3500000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			},
			lootChance = 8000000
		}					
	},
	
	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("NightSisterLaborCampScreenPlay", true)

function NightSisterLaborCampScreenPlay:start()
	if (isZoneEnabled("dathomir")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function NightSisterLaborCampScreenPlay:spawnMobiles()
	spawnMobile("dathomir", "nightsister_initiate",600,2544,123.0,-1671,-169,0)
	spawnMobile("dathomir", "nightsister_outcast",720,2553,123,-1680,-54,0)
	spawnMobile("dathomir", "nightsister_ranger",720,2543,110.8,-1610,51,0)
	spawnMobile("dathomir", "escaped_nightsister_slave",300,2540,126.3,-1604,-24,0)
	spawnMobile("dathomir", "nightsister_sentry",600,2497,129.4,-1616,178,0)
	spawnMobile("dathomir", "nightsister_sentry",600,2469,126.7,-1670,-110,0)
	spawnMobile("dathomir", "nightsister_sentry",600,2500,117.7,-1745,6,0)
	spawnMobile("dathomir", "nightsister_sentry",600,2619,130.4,-1614,-100,0)
	spawnMobile("dathomir", "escaped_nightsister_slave",300,2450,110.0,-1600,80,0)		
	

	spawnMobile("dathomir", "nightsister_sentry",600,26.2,-39.1,-39.0,5,8575576)	
	spawnMobile("dathomir", "nightsister_sentry",600,22.2,-39.3,-40.3,7,8575576)
	spawnMobile("dathomir", "nightsister_sentry",600,21.1,-41.4,-70.1,2,8575576)	
	spawnMobile("dathomir", "nightsister_sentry",600,23.3,-41.9,-70.4,7,8575576)
	spawnMobile("dathomir", "nightsister_sentry",600,40.9,-47.2,-36.9,177,8575576)
	spawnMobile("dathomir", "nightsister_sentry",600,45.6,-47.7,-37.0,176,8575576)
	spawnMobile("dathomir", "nightsister_sentry",600,48.4,-47.6,-70.9,-118,8575576)
	spawnMobile("dathomir", "nightsister_sentry",600,53.5,-47.5,-69.8,-32,8575576)	
	spawnMobile("dathomir", "nightsister_ranger",720,48.0,-47.3,-11.4,133,8575576)
	spawnMobile("dathomir", "nightsister_ranger",720,82.6,-46.2,-118.0,20,8575579)
	spawnMobile("dathomir", "nightsister_ranger",720,96.4,-46.7,-114.9,-68,8575579)
	spawnMobile("dathomir", "nightsister_ranger",720,91.6,-46.2,-100.3,-166,8575579)
	spawnMobile("dathomir", "nightsister_spell_weaver",720,83.3,-46.2,-137.8,70,8575585)
	spawnMobile("dathomir", "nightsister_spell_weaver",720,81.5,-46.4,-147.9,7,8575585)
	spawnMobile("dathomir", "nightsister_elder",900,72.1,-45.7,-142.8,86,8575585,true)
	spawnMobile("dathomir", "nightsister_initiate",600,90.2,-61.2,-7.9,-153,8575577)
	spawnMobile("dathomir", "nightsister_slave",300,83.6,-65.3,-28.6,7,8575577)
	spawnMobile("dathomir", "nightsister_slave",300,84.9,-64.0,-24.5,2,8575577)	
	spawnMobile("dathomir", "nightsister_slave",300,86.2,-65.0,-28.9,2,8575577)
	spawnMobile("dathomir", "nightsister_sentry",600,94.6,-67.7,-38.1,7,8575577)
	spawnMobile("dathomir", "nightsister_sentry",600,95.0,-66.3,-34.5,2,8575577)
	spawnMobile("dathomir", "nightsister_initiate",600,71.8,-68.0,-36.0,2,8575577)
	spawnMobile("dathomir", "nightsister_initiate",600,70.5,-69.3,-39.4,2,8575577)
	spawnMobile("dathomir", "nightsister_initiate",600,85.1,-76.2,-59.7,0,8575578)	
	spawnMobile("dathomir", "nightsister_initiate",600,68.6,-76.7,-69.1,2,8575578)
	spawnMobile("dathomir", "nightsister_initiate",600,63.8,-75.7,-69.0,2,8575578)
	spawnMobile("dathomir", "nightsister_rancor_tamer",720,91.0,-76.4,-86.9,2,8575578)
	spawnMobile("dathomir", "nightsister_rancor_tamer",720,95.6,-76.2,-85.0,2,8575578)
	spawnMobile("dathomir", "nightsister_initiate",600,66.0,-76.8,-87.6,2,8575578)
	spawnMobile("dathomir", "nightsister_initiate",600,63.2,-75.5,-65.1,12,8575578)
	spawnMobile("dathomir", "nightsister_slave",300,61.2,-69.1,-125.9,2,8575580)
	spawnMobile("dathomir", "nightsister_slave",300,57.7,-68.6,-126.4,2,8575580)
	spawnMobile("dathomir", "nightsister_slave",300,59.0,-69.4,-124.4,2,8575580)
	spawnMobile("dathomir", "nightsister_slave",300,59.7,-68.6,-127.1,2,8575580)
	spawnMobile("dathomir", "nightsister_stalker",720,96.7,-66.4,-106.0,-168,8575579)
	spawnMobile("dathomir", "nightsister_stalker",720,92.9,-66.6,-105.0,178,8575579)
	spawnMobile("dathomir", "nightsister_sentinel",720,114.4,-66.9,-86.0,-143,8575582)
	spawnMobile("dathomir", "nightsister_sentinel",720,110.8,-66.8,-85.8,135,8575582)
	spawnMobile("dathomir", "nightsister_sentinel",720,112.9,-67.2,-87.6,2,8575582)
	spawnMobile("dathomir", "nightsister_slave",300,126.6,-66.6,-110.8,2,8575582)
	spawnMobile("dathomir", "nightsister_slave",300,126.2,-66.7,-107.6,2,8575582)
	spawnMobile("dathomir", "nightsister_slave",300,124.3,-66.8,-109.3,2,8575582)
	spawnMobile("dathomir", "nightsister_slave",300,125.3,-66.8,-107.3,2,8575582)
	spawnMobile("dathomir", "nightsister_slave",300,135.4,-66.4,-119.9,-155,8575582)
	spawnMobile("dathomir", "nightsister_slave",300,134.8,-66.2,-117.7,-125,8575582)
	spawnMobile("dathomir", "nightsister_sentinel",720,156.0,-65.4,-129.4,2,8575582)
	spawnMobile("dathomir", "nightsister_sentinel",720,155.9,-65.4,-126.0,2,8575582)
	spawnMobile("dathomir", "nightsister_sentinel",720,154.2,-65.7,-128.5,2,8575582)
	spawnMobile("dathomir", "nightsister_stalker",720,135.1,-66.9,-93.4,-127,8575582)
	spawnMobile("dathomir", "nightsister_stalker",720,137.4,-67.2,-95.3,112,8575582)
	spawnMobile("dathomir", "nightsister_spell_weaver",720,183.3,-66.0,-95.5,-103,8575583)
	spawnMobile("dathomir", "nightsister_spell_weaver",720,183.9,-65.7,-105.8,2,8575583)
	spawnMobile("dathomir", "nightsister_protector",900,192.5,-66.7,-99.4,-90,8575583)	
	spawnMobile("dathomir", "nightsister_protector",900,52.2,-67.9,-41.0,77,8575576)
	spawnMobile("dathomir", "nightsister_stalker",720,129.5,-66.3,-114.0,55,8575582)	
end
