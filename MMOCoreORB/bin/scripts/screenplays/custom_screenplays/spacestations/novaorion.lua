NovaOrionScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "NovaOrionScreenPlay",
}

registerScreenPlay("NovaOrionScreenPlay", true)

function NovaOrionScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function NovaOrionScreenPlay:spawnSceneObjects()
		--top
		spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff",40.7,29.6,-0.8,14200906,1,0,0,0)
		spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 40.7997, 29.0075, -0.825626, 14200832, -0.707107, 0, 0.707107, 0)
		--mid
		spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff",40.7,-0.4,0.7,14200906,1,0,0,0)
		spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff",40.7,-0.4,-0.8,14200906,1,0,0,0)
		spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 40.7724, -0.992546, 0.9119, 14200832, 0.694658, 0, -0.71934, 0)

		--bottom
		spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff",40.7,-31,0.7,14200906,1,0,0,0)
		spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 40.7967, -30.9925, 1.1636, 14200832, 0.71934, 0, -0.694658, 0)
		spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 40.7668, -0.992546, -1.00176, 14200832, -0.688354, 0, 0.725374, 0)
        --Boss Teleporter
        --spawnSceneObject("dungeon2", "object/tangible/terminal/greeter_terminal.iff", -1.19459, -0.5, -1.81312, 14200880, 0.300706, 0, -0.953717, 0)
        --Boss Teleport Room
        spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -40.3652, 0.61331, 29.4226, 14200890, 0.707107, 0, 0.707107, 0)
        --Galactic Travel Service
        spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_gcw_publish_gift.iff", -9.99375, -2.74497e-09, -21.2168, 14200880, -0.314184, 0, 0.949362, 0)
		--Spawn FRS Shrines
		spawnSceneObject("dungeon2", "object/tangible/quest/township/axkva_dark_jedi_statue.iff", -8.78594, 29.507, 0.014969, 85, 14200833)
		spawnSceneObject("dungeon2", "object/tangible/quest/township/axkva_dark_jedi_statue.iff", -15.063, 29.507, -0.0356328, 267, 14200833)
end

function NovaOrionScreenPlay:spawnMobiles()
	
	local pNpc = spawnMobile("dungeon2", "bartender", 0, 3.5, -0.5, -2.5, 94, 14200880)	
	spawnMobile("dungeon2", "bartender", 0, -0.6, -0.5, 4.6, -10, 14200880)

	spawnMobile("dungeon2", "patron", 0, 7, -0.5, -2.8, -86, 14200880)

	pNpc = spawnMobile("dungeon2", "patron", 0, -1.4, -0.5, 7.3, -179, 14200880)
	self:setMoodString(pNpc, "npc_sitting_chair")

	pNpc = spawnMobile("dungeon2", "nalan_cheel", 0, 17.2, -0.0, 8.9, -127, 14200880)
	self:setMoodString(pNpc, "themepark_music_1")
	pNpc = spawnMobile("dungeon2", "figrin_dan", 0, 8.7, -0.0, 17.4, -159, 14200880)
	self:setMoodString(pNpc, "themepark_music_3")
	pNpc = spawnMobile("dungeon2", "tech_mor", 0, 13.8, -0.0, 14.7, -139, 14200880)
	self:setMoodString(pNpc, "themepark_music_2")
	pNpc = spawnMobile("dungeon2", "droopy_mccool", 0, 21.1, -0.0, 9.0, -132, 14200880)
	self:setMoodString(pNpc, "themepark_music_3")
	pNpc = spawnMobile("dungeon2", "doikk_nats", 0, 19.8, -0.0, 10.1, -138, 14200880)
	self:setMoodString(pNpc, "themepark_music_3")
	pNpc = spawnMobile("dungeon2", "tedn_dahai", 0, 10, -0.0, 17.4, -129, 14200880)
	self:setMoodString(pNpc, "themepark_music_3")
	pNpc = spawnMobile("dungeon2", "sy_snootles", 0, 20.2, -0.0, 9.2, -151, 14200880)
	self:setMoodString(pNpc, "themepark_sy_snootles")
	pNpc = spawnMobile("dungeon2", "oola", 0, 12.5, -0.0, 18, -148, 14200880)
	self:setMoodString(pNpc, "themepark_oola")

	

end
