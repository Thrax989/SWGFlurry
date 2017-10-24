JakkuNiimaOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "JakkuNiimaOutpostScreenPlay"
}

registerScreenPlay("JakkuNiimaOutpostScreenPlay", true)

function JakkuNiimaOutpostScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:setMoodString()
		pNpc = spawnMobile()
	end
end

function JakkuNiimaOutpostScreenPlay:spawnSceneObjects()
	--still rotating clockwise, top right 
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_droid_thieves_camp_large2.iff", 4255.6, 6.4, -5178.1, -88, 0)
	--out the door rotating clockwise (left)  
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_large_1.iff", 4385.7, 8.0, -5077.4, -49, 0)
	--between statue box, and solid tall wall still rotating clockwise (left from door)
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_medium1.iff", 4402.4, 7.2, -5158.3, -86, 0)
	--still rotating clockwise (left)
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_large1.iff", 4359.5, 10.3, -5181.7, -142, 0)
--	out door to the right
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_large2.iff", 4275.7, 7.7, -5076.9, -100, 0)
--	behind cloner right side
	spawnSceneObject("jakku", "object/building/poi/tatooine_evil_hermit_small1.iff", 4190.3, 8.2, -5125.5, -120, 0)

--	spawnSceneObject("jakku", "object/tangible/crafting/station/public_space_station.iff", -4630.9, 6.2, -3864.1, 98, 0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_weapon_station.iff", 4240.8, 6.4, -5179.4, 77, 0)
--	spawnSceneObject("jakku","object/tangible/crafting/station/public_structure_station.iff", -2962.5,-194.1,6087.6,0,0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_clothing_station.iff", 4245.3, 6.4, -5185.7, -108, 0)
--	spawnSceneObject("jakku","object/tangible/crafting/station/public_food_station.iff", 4384.5, 7.2, -5155.1, math.rad( ,0)
	spawnSceneObject("jakku","object/static/item/item_medic_bacta_tank.iff", 4395.8, 8.0, -5077.3, -103, 0)
	spawnSceneObject("jakku", "object/tangible/terminal/terminal_mission.iff", 4337.7, 7.8, -5104.7, -21, 0)



end

function JakkuNiimaOutpostScreenPlay:spawnMobiles()

	--still rotating clockwise, top right 
	spawnMobile("jakku", "trainer_droidengineer", 0, 4245.4, 6.4, -5169.7, 127, 0)
	spawnMobile("jakku", "trainer_weaponsmith", 0, 4267.6, 6.4, -5183.4, -55, 0)
	spawnMobile("jakku", "trainer_armorsmith", 0, 4257.4, 6.4, -5162.3, -176, 0)
	spawnMobile("jakku", "trainer_architect", 0, 4271.2, 6.4, -5167.1, -92, 0)
	spawnMobile("jakku", "trainer_tailor", 0, 4252.6, 6.4, -5195.2, 26, 0)

	--out door to the right
	spawnMobile("jakku", "trainer_marksman", 0, 4281.8, 7.7, -5085.6, -46, 0)
	spawnMobile("jakku", "trainer_rifleman", 0, 4273.6, 7.7, -5086.0, 18, 0)
	spawnMobile("jakku", "trainer_pistol", 0, 4268.3, 7.7, -5078.3, 74, 0)
	spawnMobile("jakku", "trainer_carbine", 0, 4275.1, 7.7, -5068.6, 153, 0)
	spawnMobile("jakku", "trainer_commando", 0, 4287.7, 7.7, -5074.4, -90, 0)

	--between statue box, and solid tall wall still rotating clockwise (left from door)
	spawnMobile("jakku", "trainer_chef", 0, 4396.1, 7.2, -5159.1, 103, 0)
	spawnMobile("jakku", "trainer_entertainer", 0, 4401.7, 7.2, -5167.2, 0, 0)
	spawnMobile("jakku", "trainer_dancer", 0, 4413.3, 7.2, -5158.9, -102, 0)
	spawnMobile("jakku", "trainer_musician", 0, 4406.5, 7.2, -5152.5, -166, 0)

	--out the door rotating clockwise (left)
	spawnMobile("jakku", "trainer_medic", 0, 4378.8, 8.0, -5075.2, 99, 0)
	spawnMobile("jakku", "trainer_combatmedic", 0, 4385.8, 8.0, -5066.2, -31, 0)
	spawnMobile("jakku", "trainer_doctor", 0, 4390.7, 8.0, -5089.5, -10, 0)

	--still rotating clockwise (left)
	spawnMobile("jakku", "trainer_scout", 0, 4358.4, 10.3, -5191.4, -9, 0)
	spawnMobile("jakku", "trainer_creaturehandler", 0, 4351.3, 10.3, -5189.1, 46, 0)
	spawnMobile("jakku", "trainer_bioengineer", 0, 4368.4, 10.3, -5182.7, -68, 0)
	spawnMobile("jakku", "trainer_bountyhunter", 0, 4366.0, 10.3, -5176.2, -131, 0)
	spawnMobile("jakku", "trainer_smuggler", 0, 4361.3, 10.3, -5168,4, -169, 0)
	spawnMobile("jakku", "trainer_squadleader", 0, 4354.3, 10.3, -5177.5, 101, 0)


--	behind cloner right side
	spawnMobile("jakku", "trainer_polearm", 0, 4200.6, 9.7, -5122.6, -103, 0)
	spawnMobile("jakku", "trainer_1hsword", 0, 4196.2, 9.7, -5129.6, -5, 0)
	spawnMobile("jakku", "trainer_2hsword", 0, 4190.4, 9.7, -5125.5, 72, 0)
	spawnMobile("jakku", "trainer_unarmed", 0, 4198.7, 9.7, -5113.6, 96, 0)



	local pNpc = spawnMobile("jakku", "borra_setas",60,4321.1, 9.8, -5132.8, 94, 0)
	self:setMoodString(pNpc, "worried")
	pNpc = spawnMobile("jakku", "commoner_tatooine",60,4344.7, 9.6, -5141.3, -39, 0)
	self:setMoodString(pNpc, "npc_standing_drinking")
	pNpc = spawnMobile("jakku", "patron_ithorian",60,4357.7, 8.0, -5099.0, -126, 0)
	self:setMoodString(pNpc, "npc_sitting_ground")
	pNpc = spawnMobile("jakku", "surgical_droid_21b",60,4354.8, 8.0, -5096.3, 158, 0)
	self:setMoodString(pNpc, "neutral")
	pNpc = spawnMobile("jakku", "bantha",60,4349.3, 10.3, -5186.5, 73, 0)
	spawnMobile("jakku", "commoner_old",60,4320.8, 7.3, -5079.3, 17, 0)
	spawnMobile("jakku", "commoner_tatooine",60,4332.1, 7.9, -5079.9, -23, 0)


end
