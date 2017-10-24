local ObjectManager = require("managers.object.object_manager")

tatooine_anchorhead_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "tatooine_anchorhead_gcw"
}

registerScreenPlay("tatooine_anchorhead_gcw", true)

function tatooine_anchorhead_gcw:start()
	if (isZoneEnabled("tatooine")) then
	if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function tatooine_anchorhead_gcw:spawnImperials()

	--Imperial Npcs
	spawnMobile("tatooine", "imperial_recruiter",60,-6.22005,-3.96617,-6.58904,194.653,1213349)

	spawnMobile("tatooine", "crackdown_command_security_guard",400,65.685,52,-5349.49,-4,0)
	spawnMobile("tatooine", "crackdown_command_security_guard",400,49.2,52,-5351,350,0)
	spawnMobile("tatooine", "crackdown_command_security_guard",400,125.5,52,-5416,279.008,0)
	spawnMobile("tatooine", "crackdown_command_security_guard",400,55.2,52.6,-5332.5,184.005,0)
	spawnMobile("tatooine", "crackdown_elite_sand_trooper",400,68,52,-5382,67,0)
	spawnMobile("tatooine", "crackdown_imperial_army_captain",400,67,52,-5366.5,95,0)
	spawnMobile("tatooine", "crackdown_imperial_army_captain",400,31.4,51.1006,-5350.3,203.975,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,31,51.9725,-5337,270.008,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,76.5,52,-5361.1,329.737,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,135.1,52,-5374.9,83.0024,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,123.6,52,-5368,235,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,89.9,52,-5393.8,313.009,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,151,52,-5316,37.8685,0)
	spawnMobile("tatooine", "crackdown_stormtrooper",400,159,52,-5320,331.012,0)
	spawnMobile("tatooine", "imperial_recruiter",60,69.6872,52,-5349.47,360.011,0)

end

function tatooine_anchorhead_gcw:spawnRebels()

        --Rebel NPCs
	spawnMobile("tatooine", "rebel_recruiter",60,-6.22005,-3.96617,-6.58904,194.653,1213349)

	spawnMobile("tatooine", "crackdown_rebel_command_security_guard",400,65.685,52,-5349.49,-4,0)
	spawnMobile("tatooine", "crackdown_rebel_command_security_guard",400,49.2,52,-5351,350,0)
	spawnMobile("tatooine", "crackdown_rebel_command_security_guard",400,125.5,52,-5416,279.008,0)
	spawnMobile("tatooine", "crackdown_rebel_command_security_guard",400,55.2,52.6,-5332.5,184.005,0)
	spawnMobile("tatooine", "crackdown_rebel_elite_sand_rat",400,68,52,-5382,67,0)
	spawnMobile("tatooine", "crackdown_rebel_guard_captain",400,67,52,-5366.5,95,0)
	spawnMobile("tatooine", "crackdown_rebel_guard_captain",400,31.4,51.1006,-5350.3,203.975,0)
	spawnMobile("tatooine", "crackdown_rebel_guardsman",400,31,51.9725,-5337,270.008,0)
	spawnMobile("tatooine", "crackdown_rebel_guardsman",400,76.5,52,-5361.1,329.737,0)
	spawnMobile("tatooine", "crackdown_rebel_guardsman",400,135.1,52,-5374.9,83.0024,0)
	spawnMobile("tatooine", "crackdown_rebel_guardsman",400,123.6,52,-5368,235,0)
	spawnMobile("tatooine", "crackdown_rebel_guardsman",400,89.9,52,-5393.8,313.009,0)
	spawnMobile("tatooine", "crackdown_rebel_guardsman",400,151,52,-5316,37.8685,0)
	spawnMobile("tatooine", "crackdown_rebel_guardsman",400,159,52,-5320,331.012,0)
	spawnMobile("tatooine", "rebel_recruiter",60,69.6872,52,-5349.47,360.011,0)
end
