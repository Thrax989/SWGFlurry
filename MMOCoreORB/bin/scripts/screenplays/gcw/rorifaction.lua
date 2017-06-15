RoriFactionScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("RoriFactionScreenPlay", true)

function RoriFactionScreenPlay:start()
	if isZoneEnabled("rori") then
		self:spawnMobiles()

		if getRandomNumber(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end

function RoriFactionScreenPlay:spawnImperials()

	--inside the city

	spawnMobile("rori", "at_st", 0, 0, 0, 0, 0, 0)

end

function RoriFactionScreenPlay:spawnRebels()

	--inside city

	spawnMobile("rori", "senior_specforce_marine", 0, 0, 0, 0, 0, 0)

end

function RoriFactionScreenPlay:spawnMobiles()
	--outside the city

	spawnMobile("rori", "thug", 0, 0, 0, 0, 0, 0)
		
end