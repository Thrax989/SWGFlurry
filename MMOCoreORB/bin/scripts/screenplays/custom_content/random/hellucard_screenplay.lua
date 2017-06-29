hellucard_screenplay = ScreenPlay:new {
        numberOfActs = 1,

        screenplayName = "hellucard_screenplay",
}

registerScreenPlay("hellucard_screenplay", true)

function hellucard_screenplay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function hellucard_screenplay:spawnMobiles()
  local pNpc = spawnMobile("tatooine", "hellucard_boss", 1200, 0.1, 0.5, -2.2, 179, 1845354)
  self:setMoodString(pNpc, "npc_sitting_chair")

  spawnMobile("tatooine", "fallen_jedi_h01", 900, -640, 4, -6672, -1, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -645, 4, -6670, -10, 0)

  spawnMobile("tatooine", "fallen_jedi_h01", 900, -706, 6, -6652, 86, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -702, 5, -6654, 85, 0)

  spawnMobile("tatooine", "fallen_jedi_h01", 900, -740, 6, -6669, 40, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -735, 6, -6671, -45, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -737, 8, -6722, 30, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -736, 8, -6718, -150, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -635, 7, -6728, -29, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -635, 7, -6733, 173, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -685, 8, -6727, 0, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -711, 8, -6728, -179, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -698, 8, -6714, 0, 0)

  spawnMobile("tatooine", "fallen_jedi_h01", 900, 11, 1, -11, 2, 1845358)
  spawnMobile("tatooine", "fallen_jedi_h01", 900, -10, 1, -12, -1, 1845359)



end
