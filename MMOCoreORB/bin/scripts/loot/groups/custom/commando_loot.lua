-- Designed for mando_boss drop
commando_loot = {
desription = "",
minimumLevel = 0,
maximumLevel = 0,
lootItems = {
{itemTemplate = "grenade_imperial_detonator", weight = 2500000},
{itemTemplate = "grenade_glop", weight = 2500000},
{itemTemplate = "grenade_proton", weight = 2500000},
{itemTemplate = "grenade_thermal_detonator", weight = 2500000},
{itemTemplate = "grenade_cryoban", weight = 2500000},
{itemTemplate = "heavy_acid_beam", weight = 2500000},
{itemTemplate = "heavy_lightning_beam", weight = 2500000},
{itemTemplate = "heavy_particle_beam", weight = 2500000},
{itemTemplate = "rifle_acid_launcher", weight = 2500000},
{itemTemplate = "rifle_flame_thrower", weight = 2500000},
{itemTemplate = "rifle_lightning", weight = 2500000},
{itemTemplate = "heavy_rocket_launcher", weight = 2500000}
}
}
addLootGroupTemplate("commando_loot", commando_loot)
