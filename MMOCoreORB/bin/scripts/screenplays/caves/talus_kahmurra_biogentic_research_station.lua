TalusKahmurraBiogenticResearchStationScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TalusKahmurraBiogenticResearchStationScreenPlay",

	lootContainers = {
		6075909,
		6075908,
		6075907,
		6075906,
		6075905,
		6075904
	 },

        lootLevel = 26,

        lootGroups = {
                {
                        groups = {
                                {group = "color_crystals", chance = 160000},
                                {group = "junk", chance = 8240000},
                                {group = "melee_weapons", chance = 1000000},
                                {group = "clothing_attachments", chance = 300000},
                                {group = "armor_attachments", chance = 300000}
                        },
                        lootChance = 8000000
                }
        },

        lootContainerRespawn = 1800
}

registerScreenPlay("TalusKahmurraBiogenticResearchStationScreenPlay", true)

function TalusKahmurraBiogenticResearchStationScreenPlay:start()
	if (isZoneEnabled("talus")) then
                self:spawnMobiles()
                self:initializeLootContainers()
        end
end

function TalusKahmurraBiogenticResearchStationScreenPlay:spawnMobiles()
	spawnMobile("talus", "jundak_devourer", 300, -5.1, -13.8, -14.9, 80, 4795365)
	spawnMobile("talus", "tulrus_magma_drenched", 300, 0.6, -13.8, -9.6, -7, 4795365)
	spawnMobile("talus", "tulrus", 300, 0.5, -13.8, -0.5, 300, 4795365)
	spawnMobile("talus", "lava_flea", 300, -6.1, -13.8, -8.6, -118, 4795365)
	spawnMobile("talus", "jundak", 300, 5.8, -6.8, -1.8, 160, 4795363)
	spawnMobile("talus", "blistmok", 300, 7.8, -6.8, -14.1, -79, 4795362)
	spawnMobile("talus", "blistmok_shrieker", 300, 1.3, -6.8, -13.1, 280, 4795362)
	spawnMobile("talus", "blistmok_shrieker", 300, -6.0, -6.8, -14.1, 32, 4795362)
	spawnMobile("talus", "blistmok_trampler", 300, -2.7, -6.8, -6.2, 124, 4795361)
	spawnMobile("talus", "blistmok_trampler", 300, -6.8, -6.8, -7.5, -120, 4795361)
	spawnMobile("talus", "blistmok", 300, -4.5, -6.8, -0.3, 0, 4795361)
	spawnMobile("talus", "blistmok", 300, 2.4, 0.3, -3.8, -93, 4795359)
	spawnMobile("talus", "xandank_onyx_plated", 300, 0.2, 0.3, 7.6, -1, 4795357)
	spawnMobile("talus", "xandank_patriarch", 300, -4796.3, 16.6, -4753.1, 122, 0)
	spawnMobile("talus", "xandank", 300, -4780.3, 17.2, -4737.9, 41, 0)
	spawnMobile("talus", "xandank", 300, -4777.61, 16.8556, -4751.79, 41, 0)
	spawnMobile("talus", "orf_vir_vur", 300, -4780.54, 17.2897, -4787.04, 41, 0)
	spawnMobile("talus", "orf_vir_vur", 300, -4783.97, 17.4405, -4788.85, 41, 0)
	spawnMobile("talus", "orf_vir_vur", 300, -4781.61, 17.5446, -4792.98, 41, 0)
	spawnMobile("talus", "orf_whisper_bird", 300, -4739.85, 17.3156, -4781.64, 41, 0)
	spawnMobile("talus", "orf_whisper_bird", 300, -4735.14, 16.7825, -4772.98, 41, 0)
	spawnMobile("talus", "orf_whisper_bird", 300, -4726.26, 17,5932, -4785.62, 41, 0)
	spawnMobile("talus", "orf_whisper_bird", 300, -4738.88, 18.1734, -4795.76, 41, 0)
	spawnMobile("talus", "orf_vesp", 300, -4726.13, 14.7583, -4710.36, 41, 0)
	spawnMobile("talus", "orf_vesp", 300, -4720.65, 13.6913, -4706.75, 41, 0)
	spawnMobile("talus", "orf_torton", 3600, -4743.67, 4.16993, -4613.93, 41, 0)
	spawnMobile("talus", "orf_mawgax", 300, -4823.08, 13.6726, -4683.38, 41, 0)
	spawnMobile("talus", "orf_mawgax", 300, -4830.12, 13.1044, -4676.12, 41, 0)
	spawnMobile("talus", "blistmok", 300, -4842.52, 16.1832, -4717.28, 41, 0)
	spawnMobile("talus", "blistmok", 300, -4847.59, 16.1853, -4711.32, 41, 0)
	spawnMobile("talus", "blistmok_trampler", 300, -4850.08, 15.9852, -4717.15, 41, 0)
	spawnMobile("talus", "blistmok_shrieker", 300, -4848.03, 15.795, -4729.28, 41, 0)
	spawnMobile("talus", "tulrus", 300, -4844.22, 18.1697, -4766.1, 41, 0)
	spawnMobile("talus", "tremor_foot", 3000, -4845.66, 16.8149, -4831.47, 41, 0)


end
