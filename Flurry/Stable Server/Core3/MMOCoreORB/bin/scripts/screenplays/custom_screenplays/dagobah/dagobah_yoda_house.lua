YodaHouseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "YodaHouseScreenPlay",
}
 
registerScreenPlay("YodaHouseScreenPlay", true)
 
function YodaHouseScreenPlay:start()
	if (isZoneEnabled("dagobah")) then
                self:spawnMobiles()
        end
end

function YodaHouseScreenPlay:spawnMobiles()
	
	spawnMobile("dagobah", "yoda", 600, 6, -1.1, -3.3, -49, 7000004)
	spawnMobile("dagobah", "obi_wan_ghost", 600, 17.5, 3.1, 1.2, 50, 0)


	

end
