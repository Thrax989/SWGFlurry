local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for Kaas Triggers")

kaas_imperial_garison_triggers = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kaas_imperial_garison_triggers", true) --print("registered Kaas Triggers")

function kaas_imperial_garison_triggers:start()
	if (isZoneEnabled("kaas")) then
		print("Kaas Enabled: Spawning Triggers")
		self:spawnMobiles()
	end
end

function kaas_imperial_garison_triggers:spawnMobiles()


end