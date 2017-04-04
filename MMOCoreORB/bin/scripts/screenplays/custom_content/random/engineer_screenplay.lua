engineer_screenplay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "engineer_screenplay",
}

registerScreenPlay("engineer_screenplay", true)

function engineer_screenplay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function engineer_screenplay:spawnMobiles()
  spawnSceneObject("tatooine","object/static/structure/tatooine/antenna_tatt_style_1.iff", 7249, 11, -2890, 0, 0, 0, 0, 0)
  spawnSceneObject("tatooine","object/static/vehicle/player_shuttle.iff", 7255.1, 11.2, -2889.5, 0, 0, 0, 0, 0)
  spawnSceneObject("tatooine","object/static/vehicle/static_speeder_bike.iff", 7246.9, 11.5, -2888.2, 0, 0, 0, 0, 0)

  spawnMobile("tatooine", "engineer_boss", 3000, 7249, 11, -2892, 86, 0)
  spawnMobile("tatooine", "engineer_boss_second", 3000, 7259.8, 11, -2880, -93, 0)
end
