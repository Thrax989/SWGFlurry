necrosisspawnScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "necrosisspawnScreenPlay"
}

registerScreenPlay("necrosisspawnScreenPlay", true)

function necrosisspawnScreenPlay:start()
	if (isZoneEnabled("kashyyyk")) then
		self:spawnMobiles()
	end
end

function necrosisspawnScreenPlay:spawnMobiles()

	--hall57 Myyydril Caverns
	spawnMobile("kashyyyk", "general_grievous", 3600, -230.3, -92.9, 144.5, -69, 6296405)
	

end
