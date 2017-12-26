TaanabCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TaanabCaveScreenPlay",
}
 
registerScreenPlay("TaanabCaveScreenPlay", true)
 
function TaanabCaveScreenPlay:start()
	if (isZoneEnabled("taanab")) then
                self:spawnMobiles()
        end
end

function TaanabCaveScreenPlay:spawnMobiles()
	

	

end
