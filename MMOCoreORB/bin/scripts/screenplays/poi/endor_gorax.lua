EndorgoraxScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("EndorgoraxScreenPlay", true)

function EndorgoraxScreenPlay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles()
	end
end

function EndorgoraxScreenPlay:spawnMobiles()

end
