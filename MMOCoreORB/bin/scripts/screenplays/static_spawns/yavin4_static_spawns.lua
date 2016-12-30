--This is to be used for static spawns that are NOT part of caves, cities, dungeons, poi's, or other large screenplays.
Yavin4StaticSpawnsScreenPlay = ScreenPlay:new
{
	numberOfActs = 1,

	screenplayName = "Yavin4StaticSpawnsScreenPlay",
}

registerScreenPlay("Yavin4StaticSpawnsScreenPlay", true)

function Yavin4StaticSpawnsScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function Yavin4StaticSpawnsScreenPlay:spawnMobiles()
	
	spawnMobile("yavin4", "luke_elder", 300, -5575.59, 87.861, 4903.66, -179, 0)
	spawnMobile("yavin4", "darthvader_elder", 300, 5080.18, 79.4253, 306.668, 90, 0)

	-- Light Jedi Enclave (-5575, 4910)
	spawnMobile("yavin4", "light_jedi_sentinel", 300, -5579.0, 87.7, 4908.5, -179, 0)
	spawnMobile("yavin4", "light_jedi_sentinel", 300, -5572.6, 87.7, 4908.2, -179, 0)

	-- Dark Jedi Enclave (5068, 310)
	spawnMobile("yavin4", "dark_jedi_sentinel", 300, 5074.2, 78.8, 313.9, 90, 0)
	spawnMobile("yavin4", "dark_jedi_sentinel", 300, 5074.3, 79.2, 306.4, 90, 0)

	-- Yavin4 Ruins (-6299, -1502)
	spawnMobile("yavin4", "enhanced_gaping_spider",300,-6299.1,24.7,-1502,0,0)
	spawnMobile("yavin4", "enhanced_gaping_spider",300,-6299.1,25.6,-1506.4,179,0)
	spawnMobile("yavin4", "enhanced_gaping_spider",300,-6302.1,24.9,-1504.2,-90,0)
	spawnMobile("yavin4", "enhanced_gaping_spider",300,-6296.0,25.3,-1504.2,90,0)

	-- The Great Massassi Temple (-3226, -3139)
	spawnMobile("yavin4", "ep3_clone_relics_cww8", 300, -3201.75, 72.001, -3038.69, -116, 0)
	spawnMobile("yavin4", "ep3_clone_relics_cww8", 300, -3097.71, 71.998, -3131.59, -159, 0)
	spawnMobile("yavin4", "ep3_clone_relics_durge_droid_01", 1800, -39.8433, 2, 90.1737, -271, 3465355)
	spawnMobile("yavin4", "ep3_clone_relics_durge_droid_02", 1800, 42.931, 2, 91.9288, -91, 3465355)
	spawnMobile("yavin4", "ep3_rryatt_abandoned_super_battle_droid_01", 1800, 43.6796, 2, 53.8582, -91, 3465355)
	spawnMobile("yavin4", "ep3_rryatt_abandoned_super_battle_droid_02", 1800, 43.1985, 2, 20.2962, -91, 3465355)
	spawnMobile("yavin4", "ep3_rryatt_abandoned_super_battle_droid_03", 1800, 6.86689, 2, 19.9788, -268, 3465355)
	spawnMobile("yavin4", "ep3_rryatt_abandoned_droideka_01", 900, -13.4887, 2.2, 19.4427, -42, 3465355)
	spawnMobile("yavin4", "ep3_clone_relics_super_battle_droid_01", 1800, -17.3135, 2.2, 16.5834, -54, 3465355)
	spawnMobile("yavin4", "ep3_rryatt_abandoned_droideka_01", 900, -21.5343, 2.2, 13.2634, -53, 3465355)
	spawnMobile("yavin4", "general_grievous", 3600, -0.302274, 55, -13.3869, 0, 3465362)
	spawnMobile("yavin4", "ep3_clone_relics_super_battle_droid_01", 1800, -19, 55, -5.09413, -271, 3465362)
	spawnMobile("yavin4", "ep3_clone_relics_super_battle_droid_01", 1800, 19, 55, 4.9054, -89, 3465362)
	spawnMobile("yavin4", "ep3_rryatt_abandoned_battle_droid_01", 1200, 11.5, 55, 15.7761, -15, 3465362)
	spawnMobile("yavin4", "ep3_rryatt_abandoned_battle_droid_02", 1200, -11.5, 55, 15.8825, 15, 3465362)
	spawnMobile("yavin4", "ep3_rryatt_abandoned_battle_droid_03", 1200, -0.0907604, 55, 15.9102, -2, 3465362)

end
