TaanabStarhunterStationScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TaanabStarhunterStationScreenPlay"
}

registerScreenPlay("TaanabStarhunterStationScreenPlay", true)

function TaanabStarhunterStationScreenPlay:start()
	if (isZoneEnabled("taanab")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function TaanabStarhunterStationScreenPlay:spawnSceneObjects()

	

end

function TaanabStarhunterStationScreenPlay:spawnMobiles()

	spawnMobile("taanab", "rare_force1",10800,3684,31.7,-5463.3,1,0)
	spawnMobile("taanab", "rare_force2",10800,3686.3,31.7,-5460.3,-117,0)
	spawnMobile("taanab", "rare_force3",10800,3682.4,31.7,-5459.7,126,0)
	spawnMobile("taanab", "rare_force4",10800,3617.9,31.7,-5462.9,74,0)
	spawnMobile("taanab", "rare_force5",10800,3617.8,31.7,-5457.3,100,0)
	spawnMobile("taanab", "event_elliot",10800,3602.8,31.7,-5384.5,135,0)
	spawnMobile("taanab", "event_marvolo",10800,3606.7,31.7,-5385.6,-103,0)
	spawnMobile("taanab", "event_grim_sage",10800,3681.9,31.7,-5462,66,0)
	spawnMobile("taanab", "event_ig_88",10800,3669.3,31.7,-5372.3,165,0)
	spawnMobile("taanab", "event_ig_88",10800,3674.2,31.7,-5373.4,-125,0)
	spawnMobile("taanab", "event_gungi",10800,3668.7,31.7,-5486.8,69,0)
	spawnMobile("taanab", "event_gungi",10800,3705,31.7,-5476.6,-125,0)
	spawnMobile("taanab", "event_gungi",10800,3652.4,31.7,-5414.5,-129,0)
	spawnMobile("taanab", "event_gungi",10800,3627.4,31.7,-5472.6,44,0)
	spawnMobile("taanab", "event_gungi",10800,3613.6,31.7,-5383.4,95,0)
	spawnMobile("taanab", "student_force",10800,3679.7,31.7,-5437.6,-92,0)
	spawnMobile("taanab", "student_force",10800,3671.2,31.7,-5415.2,-8,0)
	spawnMobile("taanab", "student_force1",10800,3655.5,31.7,-5436.9,-92,0)
	spawnMobile("taanab", "student_force1",10800,3667.5,31.7,-5415.1,62,0)
	spawnMobile("taanab", "student_force1",10800,3716.3,31.7,-5374.9,-91,0)
	spawnMobile("taanab", "student_force2",10800,3626.3,31.7,-5452.4,-40,0)
	spawnMobile("taanab", "student_force2",10800,3625.4,31.7,-5448.1,157,0)
	spawnMobile("taanab", "student_force2",10800,3713.2,31.7,-5379.8,-8,0)
	spawnMobile("taanab", "event_franzog",10800,3713.5,31.7,-5418.3,-88,0)
	spawnMobile("taanab", "event_hanzgar",10800,3713.5,31.7,-5429.6,-86,0)
	spawnMobile("taanab", "event_exar",10800,3582.8,31.7,-5418,10,0)
	spawnMobile("taanab", "event_mihpisto",10800,3621,31.7,-5382.1,148,0)

	
end
