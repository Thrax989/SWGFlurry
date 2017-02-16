RoriImperialEncampmentScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("RoriImperialEncampmentScreenPlay", true)

function RoriImperialEncampmentScreenPlay:start()
	if isZoneEnabled("rori") then
		self:spawnMobiles()

		if getRandomNumber(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end

function RoriImperialEncampmentScreenPlay:spawnImperials()

end
