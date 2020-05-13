
ExarKunTombScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "ExarKunTombScreenPlay",
}
 
registerScreenPlay("ExarKunTombScreenPlay", true)
 
function ExarKunTombScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function ExarKunTombScreenPlay:spawnSceneObjects()





end


function ExarKunTombScreenPlay:spawnMobiles()

	--Tomb

	spawnMobile("dungeon2", "exar_kun", 300, 15, 4.7, 106.5, 179, 14200878)
	spawnMobile("dungeon2", "exar_kun_tomb_guardian_03", 300, 19.6, -0.0, 83.1, 173, 14200878)
	spawnMobile("dungeon2", "exar_kun_tomb_guardian_02", 300, 8.5, -0.0, 83.1, 176, 14200878)
	spawnMobile("dungeon2", "exar_kun_head_cultist", 300, 15.4, -0.0, 55.4, -179, 14200878)
	spawnMobile("dungeon2", "exar_kun_warrior", 300, 22.2, 0.3, 46, -91, 14200877)
	spawnMobile("dungeon2", "exar_kun_minder", 300, -38, -0.0, -7.7, 129, 14200876)
	spawnMobile("dungeon2", "exar_kun_minder", 300, -17, -0.1, 40, -141, 14200876)
	spawnMobile("dungeon2", "exar_kun_minder", 300, -12.0, 3.7, 23.2, 177, 14200875)
	spawnMobile("dungeon2", "exar_kun_minder", 300, 30.2, 3.7, -29.2, 0, 14200875)
	spawnMobile("dungeon2", "exar_kun_head_cultist", 300, 7.2, -0.1, -4.4, 85, 14200875)
	spawnMobile("dungeon2", "exar_kun_cultist_f_02", 300, 49.1, -0.2, -5.7, 166, 14200874)
	spawnMobile("dungeon2", "exar_kun_cultist_f_02", 300, 54.0, -0.0, -36.7, -144, 14200874)
	spawnMobile("dungeon2", "exar_kun_cultist_f_02", 300, 24.7, 0.0, -62.7, -97, 14200874)
	--spawnMobile("dungeon2", "exar_kun_open_hand", 300, -11.3, -0.4, -63.7, 179, 14200873)	
	

end
