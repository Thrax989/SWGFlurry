DownedShipScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "DownedShipScreenPlay",

	lootContainers = {
		6036667,
		6036668,
		6036669,
		6036670
		
	},
	
	lootLevel = 38,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 3100000},
				{group = "junk", chance = 3500000},
				{group = "heavy_weapons_consumable", chance = 600000},
				{group = "rifles", chance = 600000},
				{group = "carbines", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			},
			lootChance = 8000000
		}					
	},
	
	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("DownedShipScreenPlay", true)

function DownedShipScreenPlay:start()
	if (isZoneEnabled("taanab")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:initializeLootContainers()
	end
end

function DownedShipScreenPlay:spawnSceneObjects()

	--Lower Floor
	spawnSceneObject("taanab", "object/tangible/terminal/terminal_elevator_down.iff",-3.5,9,-21.4,6036662,1,0,0,0) --Middle
	spawnSceneObject("taanab", "object/tangible/terminal/terminal_elevator_up.iff",-3.5,0,-21.4,6036662,1,0,0,0)
	spawnSceneObject("taanab", "object/tangible/terminal/terminal_elevator_down.iff",0.5,9,-21.4,6036661,1,0,0,0) --Left
	spawnSceneObject("taanab", "object/tangible/terminal/terminal_elevator_up.iff",0.5,0,-21.4,6036661, 1,0,0,0)
	spawnSceneObject("taanab", "object/tangible/terminal/terminal_elevator_down.iff",-7.5,9,-21.4,6036663,1,0,0,0) --Right
	spawnSceneObject("taanab", "object/tangible/terminal/terminal_elevator_up.iff",-7.5,0,-21.4,6036663,1,0,0,0)
	--Upper Floor
	spawnSceneObject("taanab", "object/tangible/terminal/terminal_elevator_up.iff",13.5,7,-17.95,6036664,1,0,0,0)
	spawnSceneObject("taanab", "object/tangible/terminal/terminal_elevator_down.iff",13.5,15,-17.95,6036664,1,0,0,0)

end

function DownedShipScreenPlay:spawnMobiles()


	
	

end
