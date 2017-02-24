local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for Emperors_Hand")

kaas_imperial_garison = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kaas_imperial_garison", true) --print("registered Emperors_Hand")

function kaas_imperial_garison:start()
	if (isZoneEnabled("kaas")) then
		print("Kaas Enabled: Spawning Emperors_Hand")
		self:spawnMobiles()
	end
end

function kaas_imperial_garison:spawnMobiles()

	spawnMobile("kaas", "emperors_hand", 900, -5121.29, 81.2529, -2399.79, 352, 0)

end
