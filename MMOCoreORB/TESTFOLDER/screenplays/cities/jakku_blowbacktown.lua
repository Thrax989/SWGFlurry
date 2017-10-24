JakkuBlowbackTownScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "BlowbackTownScreenPlay"
}

registerScreenPlay("JakkuBlowbackTownScreenPlay", true)

function JakkuBlowbackTownScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:setMoodString()
		pNpc = spawnMobile()
	end
end

function JakkuBlowbackTownScreenPlay:spawnSceneObjects()
	--front of circle
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_droid_thieves_camp_large1.iff", -4570.3, 5.4, -3777.1, -83, 0)
	--infront of right building 
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_large_1.iff", -4675.9, 6.2, -3837.4, -127, 0)
	--infront of waterfall
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_medium1.iff", -4635.2, 8.0, -3681.7, -20, 0)
	--left side by waterfall
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_large1.iff", -4711.7, 8.5, -3712.9, 157, 0)
	--right side circle building
	spawnSceneObject("jakku", "object/building/poi/tatooine_jawa_tradesmen_camp_large2.iff", -4511.8, 6.9, -3854.3, -65, 0)
--	left side circle building
	spawnSceneObject("jakku", "object/building/poi/tatooine_mineral_farmer_medium1.iff", -4477.7, 5.9, -3700.9, -86, 0)
--	building on the right
	spawnSceneObject("jakku","object/tangible/crafting/station/public_weapon_station.iff", -4599.3, 6.0, -3856.3, -174, 0)
	spawnSceneObject("jakku","object/tangible/crafting/station/public_structure_station.iff", -4616.9, 6.4, -3854.0, -176, 0)
	spawnSceneObject("jakku", "object/tangible/terminal/terminal_mission.iff", -4602.0, 7.4, -3621.1, 6, 0)







end

function JakkuBlowbackTownScreenPlay:spawnMobiles()

--	infront of waterfall
	spawnMobile("jakku", "trainer_musician", 0, -4635.7, 8.0, -3677.1, 166, 0)
	spawnMobile("jakku", "trainer_entertainer", 0, -4633.8, 8.0, -3690.1, -9, 0)
	spawnMobile("jakku", "trainer_dancer", 0, -4625.0, 8.0, -3681.9, -111, 0)
	spawnMobile("jakku", "trainer_chef", 0, -4643.0, 8.0, -3683.5, 98, 0)	

--	left side by waterfall
	spawnMobile("jakku", "trainer_squadleader", 0, -4717.8, 8.5, -3717.3, 49, 0)
	spawnMobile("jakku", "trainer_combatmedic", 0, -4706.3, 8.5, -3718.7, -72, 0)
	spawnMobile("jakku", "trainer_doctor", 0, -4702.7, 8.5, -3714.0, -63, 0)
	spawnMobile("jakku", "trainer_medic", 0, -4716.1, 8.5, -3707.6, 144, 0)

--	right building
	spawnMobile("jakku", "trainer_armorsmith", 0, -4675.8, 6.2, -3851.3, 11, 0)
	spawnMobile("jakku", "trainer_weaponsmith", 0, -4671.3, 6.2, -3848.1, -17, 0)
	spawnMobile("jakku", "trainer_tailor", 0, -4683.0, 6.2, -3837.7, 129, 0)
	spawnMobile("jakku", "trainer_shipwright", 0, -4682.9, 6.2, -3829.9, 137, 0)
	spawnMobile("jakku", "trainer_architect", 0, -4686.0, 6.2, -3846.1, 71, 0)

--	left side front by waterfall
	spawnMobile("jakku", "trainer_carbine", 0, -4560.1, 5.4, -3760.9, -146, 0)
	spawnMobile("jakku", "trainer_rifleman", 0, -4574.9, 5.4, -3793.0, 40, 0)
	spawnMobile("jakku", "trainer_marksman", 0, -4585.1, 5.4, -3778.5, 89, 0)
	spawnMobile("jakku", "trainer_brawler", 0, -4576.9, 5.4, -3760.8, 133, 0)
	spawnMobile("jakku", "trainer_unarmed", 0, -4552.3, 5.4, -3781.0, -74, 0)
	spawnMobile("jakku", "trainer_1hsword", 0, -4566.5, 5.4, -3795.3, -42, 0)
	spawnMobile("jakku", "trainer_2hsword", 0, -4562.0, 5.4, -3792.2, -44, 0)

--	right side of circle
	spawnMobile("jakku", "trainer_scout", 0, -4518.6, 6.9, -3857.3, 53, 0)
	spawnMobile("jakku", "trainer_bountyhunter", 0, -4515.6, 6.9, -3863.4, 24, 0)
	spawnMobile("jakku", "trainer_creaturehandler", 0, -4520.7, 6.9, -3850.2, 136, 0)
	spawnMobile("jakku", "trainer_bioengineer", 0, -4504.0, 6.9, -3853.3, -96, 0)
	spawnMobile("jakku", "trainer_smuggler", 0, -4505.9, 6.9, -3860.2, -49, 0)

--	left side of circle
	spawnMobile("jakku", "trainer_squadleader", 0, -4482.4, 5.9, -3706.9, -88, 0)



	local pNpc = spawnMobile("jakku", "mercenary",60,-4507.3, 6.9, -3849.0, -71, 0)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("jakku", "bounty_hunter",60,-4511.2, 6.9, -3847.5, 117, 0)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("jakku", "slooni_slave",60,-4511.9, 6.9, -3864.9, -113, 0)
	self:setMoodString(pNpc, "npc_sitting_ground")
	pNpc = spawnMobile("jakku", "entertainer",60,-4571.3, 9.1, -3710.5, -76, 0)
	self:setMoodString(pNpc, "entertained")
	pNpc = spawnMobile("jakku", "entertainer",60,-4576.4, 9.2, -3707.8, 177, 0)
	self:setMoodString(pNpc, "npc_sitting_ground")
	pNpc = spawnMobile("jakku", "medic",300,-4578.0, 8.0, -3715.8, 27, 0)
	self:setMoodString(pNpc, "conversation")
	spawnMobile("jakku", "cll8_binary_load_lifter",60,-4663.7, 6.2, -3835.8, -105,0)

	





end
