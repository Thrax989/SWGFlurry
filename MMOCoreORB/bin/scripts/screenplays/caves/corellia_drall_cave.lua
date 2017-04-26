DrallCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "DrallCaveScreenPlay",

	lootContainers = {
		6036047,
		6036048,
		6036049,
		6036050,
		6036051
	},

	lootLevel = 26,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 7600000},
				{group = "heavy_weapons_consumable", chance = 500000},
				{group = "rifles", chance = 500000},
				{group = "carbines", chance = 500000},
				{group = "pistols", chance = 500000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000}
			},
			lootChance = 8000000
		}
	},

	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("DrallCaveScreenPlay", true)

function DrallCaveScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function DrallCaveScreenPlay:spawnMobiles()
	spawnMobile("corellia", "meatlump_king",1200,186,-65,-106,-18,4275373)

	spawnMobile("corellia", "meatlump_trooper",600,157,-66,-102,-91,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,157,-66,-94,-128,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,145,-66,-90,174,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,142,-66,-89,-177,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,157,-65,-114,-105,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,181,-65,-94,-103,4275373)
	spawnMobile("corellia", "meatlump_trooper",600,156,-66,-107,-96,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,131,-66,-87,-163,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,143,-66,-125,-162,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,137,-65,-112,155,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,130,-66,-115,148,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,118,-66,-91,-150,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,118,-65,-104,-99,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,119,-66,-110,-89,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,118,-65,-106,-97,4275372)
	spawnMobile("corellia", "meatlump_trooper",600,92,-66,-103,-176,4275369)
	spawnMobile("corellia", "meatlump_trooper",600,59,-76,-90,52,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,64,-76,-80,-134,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,66,-76,-82,-134,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,64,-76,-74,-47,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,66,-76,-72,-49,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,88,-76,-82,124,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,90,-76,-80,115,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,89,-76,-74,47,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,88,-76,-72,46,4275368)
	spawnMobile("corellia", "meatlump_trooper",600,57,-68,-34,91,4275366)
	spawnMobile("corellia", "meatlump_trooper",600,44,-46,-6,172,4275366)
	spawnMobile("corellia", "meatlump_trooper",600,47,-47,-8,-168,4275366)
	spawnMobile("corellia", "meatlump_trooper",600,48,-49,-53,-156,4275366)
	spawnMobile("corellia", "meatlump_trooper",600,21,-41,-58,-2,4275366)
	spawnMobile("corellia", "meatlump_trooper",600,26,-41,-57,-4,4275366)
	spawnMobile("corellia", "meatlump_trooper",600,55,-46,-72,-69,4275366)
	spawnMobile("corellia", "meatlump_trooper",600,47,-51,-88,9,4275374)
	spawnMobile("corellia", "meatlump_trooper",600,55,-48,-101,-20,4275374)
	spawnMobile("corellia", "meatlump_trooper",600,50,-48,-107,0,4275374)
	spawnMobile("corellia", "meatlump_trooper",600,83,-47,-105,-88,4275369)
	spawnMobile("corellia", "meatlump_trooper",600,95,-46,-109,-90,4275369)
	spawnMobile("corellia", "meatlump_trooper",600,96,-46,-136,-15,4275375)


	spawnMobile("corellia", "meatlump_chief",600,189,-66,-99,-93,4275373)
	spawnMobile("corellia", "meatlump_chief",600,151,-66,-128,-23,4275372)
	spawnMobile("corellia", "meatlump_chief",600,136,-67,-87,29,4275372)
	spawnMobile("corellia", "meatlump_chief",600,111,-65,-129,11,4275372)
	spawnMobile("corellia", "meatlump_chief",600,53,-71,-115,-2,4275370)
	spawnMobile("corellia", "meatlump_chief",600,69,-77,-95,23,4275369)
	spawnMobile("corellia", "meatlump_chief",600,79,-77,-69,-5,4275368)
	spawnMobile("corellia", "meatlump_chief",600,75,-77,-69,-1,4275368)
	spawnMobile("corellia", "meatlump_chief",600,53,-68,-44,-145,4275366)
	spawnMobile("corellia", "meatlump_chief",600,52,-48,-60,-98,4275366)
	spawnMobile("corellia", "meatlump_chief",600,24,-42,-63,-2,4275366)
	spawnMobile("corellia", "meatlump_chief",600,87,-46,-143,-176,4275375)


end
