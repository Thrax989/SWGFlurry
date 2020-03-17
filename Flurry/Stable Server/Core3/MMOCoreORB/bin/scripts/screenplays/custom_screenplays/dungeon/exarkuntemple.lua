
exarKunTempleScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "exarKunTempleScreenPlay",
}
 
registerScreenPlay("exarKunTempleScreenPlay", true)
 
function exarKunTempleScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function exarKunTempleScreenPlay:spawnSceneObjects()





end


function exarKunTempleScreenPlay:spawnMobiles()
	
	--Temple

	--spawnMobile("yavin4", "exar_kun_cultist", 300, -3.3, 0, 0, 90, 3465383)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 3.3, 0, 0, -90, 3465383)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 0, 0, -4.1, 0, 3465383)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 0, 0, -23.8, -90, 3465388)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 0, 0, -42, 0, 3465388)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 1.3, -6, -27, -178, 3465390)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 4.2, -6, -35.7, -61, 3465390)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 16.2, -6, -14.4, -135, 3465390)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, -15.1, -6, -14.3, 135, 3465390)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, -3.1, -6, -26.6, 141, 3465390)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, -22.4, -6.5, -6.3, -137, 3465392)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 23.7, -6.5, -6.3, 141, 3465391)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, -15.1, -6, -25.3, 45, 3465390)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 16.1, -6, -25.7, -45, 3465390)
	--spawnMobile("yavin4", "exar_kun_cultist", 300, 7, -6.4, -4.7, -178, 3465394)

	
	

end
