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
  local pNpc = spawnMobile("tatooine", "hellucard_boss", 3000, 0.1, 0.5, -2.2, 179, 1845354)
  self:setMoodString(pNpc, "npc_sitting_chair")

  spawnMobile("tatooine", "fallen_jedi_h01", 1800, -693, 8, -6734, -1, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1800, -703, 8, -6734, -10, 0)

  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -677, 8, -6735, 86, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -677, 8, -6721, 85, 0)

  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -660, 5, -6684, 40, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -656, 5, -6688, -45, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -684, 5, -6645, 30, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -683, 5, -6643, -150, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -724, 7, -6650, -29, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -726, 7, -6646, 173, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -743, 8, -6711, 0, 0)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -743, 8, -6707, -179, 0)

  spawnMobile("tatooine", "fallen_jedi_h01", 1200, 11, 1, -11, 2, 1845358)
  spawnMobile("tatooine", "fallen_jedi_h01", 1200, -10, 1, -12, -1, 1845359)



end
