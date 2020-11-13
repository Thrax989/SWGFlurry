--/////////////////////////////////////////////////////////
--//		    Geonosis Lab							//
--//			Created By TOXIC:11/12/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Geonosis				//
--//		Current Boss Type Full Dungeon				//
--///////////////////////////////////////////////////////
-----------------------------------
--Register Geonosis Lab ScreenPlay
-----------------------------------
geonosis_lab = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "geonosis",
}
registerScreenPlay("geonosis_lab", true)
--------------------------------
--Start Geonosis Lab ScreenPlay
--------------------------------
function geonosis_lab:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Geonosis Lab Loaded")
	end
end
----------------------------------
--Gonososi Lab NPC's Have Spawned
----------------------------------
function geonosis_lab:spawnMobiles()

end

