spawn_tat_bg = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "spawn_tat_bg",
}

registerScreenPlay("spawn_tat_bg", true)
local ObjectManager = require("managers.object.object_manager")

function spawn_tat_bg:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:spawnStructures()
	end
end

function spawn_tat_bg:spawnMobiles()

	spawnMobile("naboo", "imp_transitpilot", 60, -4862.5, 6.0, 4116.2, -35, 0 )
	spawnMobile("naboo", "reb_transitpilot", 60, -4857.4, 6.0, 4116.2, -35, 0 )	
        spawnMobile("tatooine", "reb_transitpilot", 60, 3.0, -10.0, 80.4, 176, 281475177741328)	
        spawnMobile("tatooine", "rebel_recruiter", 60, 0.0, -10.0, 80.4, 176, 281475177741328)	
        spawnMobile("tatooine", "imp_transitpilot", 60, 3.0, -10.0, 80.4, 176, 281475177729378)	
        spawnMobile("tatooine", "imperial_recruiter", 60, 0.0, -10.0, 80.4, 176, 281475177729378)
	spawnMobile("tatooine", "imp_transitpilot", 60, 3486.4, 5.0, -4859.7, -38, 0 )
	spawnMobile("tatooine", "reb_transitpilot", 60, 3482.4, 5.0, -4862.7, -38, 0 )	
	spawnMobile("lok", "imp_transitpilot", 180, 7658.0, 110.0, 3585.0, 0, 0 )
	spawnMobile("lok", "reb_transitpilot", 180, 7660.0, 110.0, 3585.0, 0, 0 )


end

function spawn_tat_bg:spawnStructures()

	spawnSceneObject("tatooine", "object/battlefield_marker/battlefield_marker_128m.iff", 6246.6, 1.0, -386.2, 0, 0, 0, 0, 0)
	spawnSceneObject("tatooine", "object/static/structure/general/fs_village_nobuild_768m.iff", 6246.6, 1.0, -386.2, 0, 0, 0, 0, 0)

end
