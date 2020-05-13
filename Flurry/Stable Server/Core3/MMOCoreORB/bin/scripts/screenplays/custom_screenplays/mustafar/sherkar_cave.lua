SherKarScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "SherKarScreenPlay",


}

registerScreenPlay("SherKarScreenPlay", true)

function SherKarScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()

	end
end

function SherKarScreenPlay:spawnMobiles()
--[[
	spawnMobile("dungeon2", "sherkar", 3600, -100.2, -9.9, -168.2, -6, 14201161)

	spawnMobile("dungeon2", "sherkarmini", 15, -115, -16, -129.8, 0, 14201161)	
	spawnMobile("dungeon2", "sherkarmini", 15, -103.2, -13.6, -143.6, 0, 14201161)
	spawnMobile("dungeon2", "sherkarmini", 15, -91.9, -17.3, -130.7, 0, 14201161)
]]--
	


end
