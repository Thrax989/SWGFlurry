GhomImpOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "GhomImpOutpostScreenPlay",
}

registerScreenPlay("GhomImpOutpostScreenPlay", true)

function GhomImpOutpostScreenPlay:start()
	if (isZoneEnabled("ghomrassen")) then
                self:spawnMobiles()
        end
end

function GhomImpOutpostScreenPlay:spawnMobiles()

	--outside the walls

	spawnMobile("ghomrassen", "imperial_probe_drone", 300, 1601, 17, 1580, 45, 0)
	spawnMobile("ghomrassen", "crackdown_storm_commando", 300, 1604, 17, 1583, 90, 0)

end
