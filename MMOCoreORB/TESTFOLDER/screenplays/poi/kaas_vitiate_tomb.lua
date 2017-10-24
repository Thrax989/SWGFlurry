KaasVitiateScreenPlay = ScreenPlay:new {
	numberOfActs = 1;
	
	lootContainers = {
		

	},

	lootLevel = 100,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 700000},
				{group = "junk", chance = 7500000},
				{group = "rifles", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}
	},
}

registerScreenPlay("KaasVitiateScreenPlay", true)

function KaasVitiateScreenPlay:start()
	self:spawnMobiles()
end

function KaasVitiateScreenPlay:spawnMobiles()
-- Entrance
	spawnMobile("kaas", "dark_jedi_master", 200, -0.1, 0.0, 0.3, 0, 35791484)
	spawnMobile("kaas", "dark_jedi_knight", 200, 2.0, 0.0, -4.2, 0, 35791484)
	spawnMobile("kaas", "dark_jedi_knight", 200, -2.1, 0.0, -4.2, 0, 35791484)
	spawnMobile("kaas", "dark_adept", 200, 2.9, 0.0, -8.5, 0, 35791484)
	spawnMobile("kaas", "dark_adept", 200, 0.4, 0.0, -8.5, 0, 35791484)
	spawnMobile("kaas", "dark_adept", 200, -2.9, 0.0, -8.5, 0, 35791484)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, -10.2, 0.0, -11.6, 90, 35791485)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, -10.9, 0.0, -2.4, 179, 35791486)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, -19.4, 0.0, -2.5, 90, 35791486)
	spawnMobile("kaas", "dark_jedi_master", 200, -19.5, 0.0, -23.3, 0, 35791488)
	spawnMobile("kaas", "dark_jedi_master", 200, -0.3, -0.0, -32.2, 0, 35791489)
	spawnMobile("kaas", "dark_adept", 200, -8.5, 0.0, -24.4, -90, 35791488)
	spawnMobile("kaas", "dark_adept", 200, -8.5, 0.0, -22.0, -90, 35791488)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, 2.1, 0.0, -43.1, 0, 35791489)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, -0.2, 0.0, -40.0, 179, 35791489)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, -4.1, 0.0, -43.4, 90, 35791489)
	spawnMobile("kaas", "dark_jedi_knight", 200, -12.6, -4.0, -35.7, 179, 35791490)
	spawnMobile("kaas", "dark_jedi_master", 200, 0.7, -6.0, -29.9, 179, 35791491)
	spawnMobile("kaas", "dark_jedi_master", 200, 15.0, -6.0, -18.8, -90, 35791491)
	spawnMobile("kaas", "dark_jedi_master", 200, -13.0, -6.0, -20.0, 90, 35791489)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, -2.8, -6.4, -4.1, -90, 35791494)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, -6.1, -6.4, -1.6, 179, 35791494)
	spawnMobile("kaas", "untrained_wielder_of_the_dark_side", 200, -10.0, -6.4, -4.1, 90, 35791494)
	spawnMobile("kaas", "dark_jedi_knight", 200, 8.9, -6.4, -3.9, 179, 35791495)
	spawnMobile("kaas", "dark_jedi_knight", 200, 4.8, -6.4, -4.0, 179, 35791495)
	spawnMobile("kaas", "dark_jedi_master", 200, 23.4, -6.5, -6.3, -45, 35791492)
	spawnMobile("kaas", "dark_jedi_master", 200, -22.7, -6.5, -6.5, 45, 35791493)
   end
