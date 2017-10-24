MustafarMensixOutsideScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "MensixOutsideScreenPlay"
}

registerScreenPlay("MustafarMensixOutsideScreenPlay", true)

function MustafarMensixOutsideScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
--		self:setMoodString()
--		pNpc = spawnMobile()
	end
end

function MustafarMensixOutsideScreenPlay:spawnSceneObjects()
	--
	spawnSceneObject("mustafar", "object/ship/player/player_tiefighter_modified.iff", 426.7, 235.0, -1384.3,  0, math.rad(45) )
	spawnSceneObject("mustafar", "object/ship/player/player_tiefighter_modified.iff", 415.0, 235.0, -1393.5,  0, math.rad(45) )
	spawnSceneObject("mustafar", "object/ship/player/player_tiefighter_modified.iff", 404.9, 235.0, -1382.1,  0, math.rad(-90) )
	spawnSceneObject("mustafar", "object/tangible/event_perk/banner_imperial_style_o.iff", 391.6, 226.5, -1346.2,  0, math.rad(-90) )
	spawnSceneObject("mustafar", "object/building/player/city/bank_corellia.iff", 394, 225, -1404,  0, math.rad(1) )
	spawnSceneObject("mustafar", "object/tangible/terminal/terminal_mission.iff", 397, 225, -1400,  0, math.rad(45) )
	spawnSceneObject("mustafar", "object/tangible/terminal/terminal_mission_bounty.iff", 390, 225, -1400,  0, math.rad(-45) )









end

function MustafarMensixOutsideScreenPlay:spawnMobiles()

--	
	spawnMobile("mustafar", "musty_mission", 300, 398, 225, -1383, -90, 0)
	spawnMobile("mustafar", "musty_mission_two", 300, 398, 225, -1385, -90, 0)
	spawnMobile("mustafar", "musty_mission_three", 300, 398, 225, -1387, -90, 0)
	spawnMobile("mustafar", "musty_mission_four", 300, 398, 225, -1389, -90, 0)

	spawnMobile("mustafar", "musty_first_order_security", 300, 375, 225, -1343, -179, 0)
	spawnMobile("mustafar", "musty_first_order_security", 300, 368, 225, -1343, -179, 0)
	spawnMobile("mustafar", "musty_first_order_security", 300, 361, 225, -1343, -179, 0)

	spawnMobile("mustafar", "musty_first_order_security", 300, 365, 225, -1359, 90, 0)
	spawnMobile("mustafar", "musty_first_order_security", 300, 378, 225, -1359, -90, 0)

	spawnMobile("mustafar", "musty_first_order_security", 300, 398, 225, -1379, -90, 0)
	spawnMobile("mustafar", "musty_first_order_security", 300, 398, 225, -1370, -90, 0)


--[[

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

	]]





end
