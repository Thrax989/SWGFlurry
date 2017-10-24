JakkuCratertownScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "JakkuCratertownScreenPlay"
}

registerScreenPlay("JakkuCratertownScreenPlay", true)

function JakkuCratertownScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:setMoodString()
		pNpc = spawnMobile()
	end
end

function JakkuCratertownScreenPlay:spawnSceneObjects()
	--behind maze
	spawnSceneObject("jakku", "object/building/poi/tatooine_nomad_squatter_large1.iff", -5439.8, 7.3, 3194.5, 149, 0)
	--infront of crashed starfighter
	spawnSceneObject("jakku", "object/building/poi/tatooine_valariantrader_large1.iff", -5758.7, 12.0, 3188.5, 20, 0)
	--infront of circle building 
	spawnSceneObject("jakku", "object/building/poi/tatooine_nomad_squatter_medium1.iff", -5590.5, 10.4, 3486.7, 173, 0)
	--behind circle building
	spawnSceneObject("jakku", "object/building/poi/tatooine_spicefiend_large1.iff", -5442.0, 8.2, 3408.2, 144, 0)
--	right of circle building
	spawnSceneObject("jakku", "object/building/poi/tatooine_slaver_large1.iff", -5702.0, 10.2, 3348.2, 48, 0)
--	with all the crafting trainers
	spawnSceneObject("jakku","object/tangible/crafting/station/public_weapon_station.iff", -5748.3, 12.0, 3218.4, -179, 0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_structure_station.iff", -5757.8, 12.0, 3171.4, 173,0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_clothing_station.iff", -5779.8, 12.0, 3184.5, 80, 0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_food_station.iff", -5726.9, 12.0, 3197.1, -96, 0)
	spawnSceneObject("jakku", "object/tangible/terminal/terminal_mission.iff", -5561.4, 6.4, 3426.2, 33, 0)




end

function JakkuCratertownScreenPlay:spawnMobiles()

--	right of circle building
	spawnMobile("jakku", "trainer_entertainer", 0, -5696.0, 10.2, 3337.9, -8, 0)
	spawnMobile("jakku", "trainer_dancer", 0, -5702.0, 10.2, 3353.9, -89, 0)
	spawnMobile("jakku", "trainer_musician", 0, -5701.4, 10.2, 3341.0, 0, 0)

	--left of circle building
	spawnMobile("jakku", "trainer_marksman", 0, -5444.4, 8.2, 3398.4, -62, 0)
	spawnMobile("jakku", "trainer_rifleman", 0, -5432.2, 8.2, 3405.3, -72, 0)
	spawnMobile("jakku", "trainer_pistol", 0, -5442.0, 8.2, 3419.1, -175, 0)

	--front of circle building
	spawnMobile("jakku", "trainer_bountyhunter", 0, -5588.3, 10.4, 3488.0, -130, 0)
	spawnMobile("jakku", "trainer_scout", 0, -5592.9, 10.4, 3495.0, 173, 0)
	spawnMobile("jakku", "trainer_smuggler", 0, -5587.7, 10.4, 3478.4, -4, 0)

	--far right of circle building
	spawnMobile("jakku", "trainer_chef", 0, -5737.0, 12.0, 3184.3, -64, 0)
	spawnMobile("jakku", "trainer_droidengineer", 0, -5768.9, 12.0, 3179.4, 37, 0)
	spawnMobile("jakku", "trainer_tailor", 0, -5775.4, 12.0, 3192.7, 75, 0)
	spawnMobile("jakku", "trainer_architect", 0, -5749.7, 12.0, 3179.8, -64, 0)
	spawnMobile("jakku", "trainer_armorsmith", 0, -5764.9, 12.0, 3207.0, 133, 0)
	spawnMobile("jakku", "trainer_weaponsmith", 0, -5753.5, 12.0, 3212.5, 166, 0)

	--tent to the right of the little maze
	spawnMobile("jakku", "trainer_carbine", 0, -5513.8, 7.1, 3290.6, -4, 0)
	spawnMobile("jakku", "trainer_commando", 0, -5518.8, 7.3, 3291.3, -5, 0)
	spawnMobile("jakku", "trainer_creaturehandler", 0, -5519.3, 6.9, 3285.2, 173, 0)
	spawnMobile("jakku", "trainer_bioengineer", 0, -5513.6, 6.7, 3285.0, 176, 0)


--	between tent, and stardestroyer
	spawnMobile("jakku", "trainer_polearm", 0, -5434.9, 7.3, 3200.1, -167, 0)
	spawnMobile("jakku", "trainer_1hsword", 0, -5431.0, 7.3, 3194.0, -93, 0)
	spawnMobile("jakku", "trainer_2hsword", 0, -5429.8, 7.3, 3197.8, -96, 0)
	spawnMobile("jakku", "trainer_unarmed", 0, -5436.4, 7.3, 3189.7, -69, 0)


	local pNpc = spawnMobile("jakku", "entertainer",60,-5702.0, 10.2, 3362.3, 163, 0)
	self:setMoodString(pNpc, "entertained")
	pNpc = spawnMobile("jakku", "entertainer",60, -5708.1, 10.2, 3353.8, 99, 0)
	self:setMoodString(pNpc, "npc_sitting_ground")
	pNpc = spawnMobile("jakku", "bantha",60,-5524.4, 7.4, 3288.7, 176, 0)

end
