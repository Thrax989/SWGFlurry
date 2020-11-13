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
--TODO CHANGE RESPAWN TIMERS FROM 1 SECOND
--Entrance Workers
spawnMobile("geonosis", "geonosian_worker", 1, -2.58323, 10.81, 10.1945, 66, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, 14.996, 10.5394, 12.9161, 246, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, 21.1422, 10.8261, 7.63663, 270, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, 15.8204, 10.7563, -1.43195, 275, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, 7.21078, 9.92562, -2.2529, 329, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, -3.29568, 10.0034, -1.74549, 70, 610003219)

--Second Entrance
spawnMobile("geonosis", "geonosian_worker", 1, 36.0555, 10.5532, -15.0999, 292, 610003220)
spawnMobile("geonosis", "geonosian_worker", 1, 38.8503, 9.83833, -8.70717, 192, 610003220)
spawnMobile("geonosis", "geonosian_worker", 1, 26.3986, 10.3686, -13.4295, 43, 610003220)
spawnMobile("geonosis", "geonosian_worker", 1, 24.3389, 9.81266, -7.60907, 194, 610003220)
spawnMobile("geonosis", "geonosian_worker", 1, 18.7912, 9.6341, -13.3123, 317, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, 14.9192, 9.2919, -13.5857, 14, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, 15.8204, 10.7563, -1.43195, 275, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, 7.21078, 9.92562, -2.2529, 329, 610003219)
spawnMobile("geonosis", "geonosian_worker", 1, 6.15436, 9.95182, -10.9821, 346, 610003219)

-- First Mini Boss Location
spawnMobile("geonosis", "geonosian_worker", 1, -0.210255, -3.24042, -12.4698, 128, 610003262)

--Third Hallway Spider Smoke Cavern To Main Room
spawnMobile("geonosis", "enhanced_kliknik", 1, 0.683767, -18.0652, -29.3116, 265, 610003222)
spawnMobile("geonosis", "enhanced_kliknik", 1, 3.26303, -18.3575, -28.474, 98, 610003222)
spawnMobile("geonosis", "enhanced_kliknik", 1, 5.94197, -18.0087, -26.2126, 88, 610003222)
spawnMobile("geonosis", "enhanced_kliknik", 1, 9.69257, -15.7985, -29.3715, 111, 610003262)
spawnMobile("geonosis", "enhanced_kliknik", 1, 13.947, -13.0455, -26.2202, 277, 610003262)
spawnMobile("geonosis", "enhanced_kliknik", 1, 14.9083, -13.0662, -29.7233, 129, 610003262)

--Door Entrance Senty Guard
spawnMobile("geonosis", "geonosian_worker", 1, -22.6605, -18, -31.7623, 89, 610003222)

--Firs Boss Room
spawnMobile("geonosis", "geonosian_worker", 1, -41.7226, -18, -32.3012, 89, 610003223)
spawnMobile("geonosis", "geonosian_worker", 1, -53.8883, -18, -33.1325, 243, 610003223)
spawnMobile("geonosis", "geonosian_worker", 1, -56.8729, -18, -41.5248, 240, 610003223)
spawnMobile("geonosis", "geonosian_worker", 1, -56.1727, -18, -45.5134, 224, 610003223)
spawnMobile("geonosis", "geonosian_worker", 1, -56.5869, -18, -51.872, 17, 610003223)
spawnMobile("geonosis", "geonosian_worker", 1, -51.5005, -18, -53.8869, 71, 610003223)
spawnMobile("geonosis", "geonosian_worker", 1, -40.7021, -18, -53.0545, 310, 610003223)
spawnMobile("geonosis", "geonosian_worker", 1, -40.4268, -18, -46.5631, 264, 610003223)

--First Boss Spawn Location
spawnMobile("geonosis", "geonosian_worker", 1, -49.3491, -18, -44.9314, 358, 610003223)

--Second Main Hallway Entrance

--Mouse Droid
spawnMobile("geonosis", "geonosian_worker", 1, -47.94, -18, -61.5417, 1, 610003224)

spawnMobile("geonosis", "geonosian_worker", 1, -76.1848, -17.7989, -68.0046, 63, 610003225)
spawnMobile("geonosis", "geonosian_worker", 1, -62.8266, -18.0947, -69.051, 358, 610003224)
spawnMobile("geonosis", "geonosian_worker", 1, -60.7619, -18, -69.361, 351, 610003224)
spawnMobile("geonosis", "geonosian_worker", 1, -63.251, -18, -59.7159, 178, 610003224)
spawnMobile("geonosis", "geonosian_worker", 1, -60.8, -18, -59.8163, 182, 610003224)

--Mouse Droid
spawnMobile("geonosis", "geonosian_worker", 1, -76.1848, -17.7989, -68.0046, 63, 610003225)

--First Spider Boss Room
spawnMobile("geonosis", "enhanced_gaping_spider", 1, -73.5677, -19.1604, -38.4475, 194, 610003226)
--Spider Guards Entrance
spawnMobile("geonosis", "geonosian_worker", 1, -74.979, -18.2031, -50.8787, 171, 610003226)
spawnMobile("geonosis", "geonosian_worker", 1, -76.888, -18.0407, -51.3814, 180, 610003226)

--Right Hallway Guards
spawnMobile("geonosis", "geonosian_worker", 1, -90.3824, -18, -68.2421, 85, 610003227)
spawnMobile("geonosis", "geonosian_worker", 1, -88.8099, -18, -75.8554, 357, 610003227)
spawnMobile("geonosis", "geonosian_worker", 1, -91.1975, -18, -75.9047, 7, 610003227)
spawnMobile("geonosis", "geonosian_worker", 1, -106.691, -18, -71.9363, 90, 610003227)

--Right Hall Way Main First Boss Room
spawnMobile("geonosis", "geonosian_worker", 1, -104.779, -18, -61.8224, 331, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -109.594, -18, -61.1781, 39, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -107.381, -18, -33.8861, 21, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -118.333, -18, -32.6837, 274, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -120.317, -18, -34.8479, 55, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -122.07, -18, -32.9592, 46, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -129.749, -18, -34.9966, 125, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -135.177, -18, -52.0011, 70, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -135.168, -18, -55.0876, 99, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -132.679, -18, -58.6601, 228, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -120.324, -18, -57.292, 104, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -122.334, -18, -59.7099, 69, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -117.937, -18, -59.5081, 273, 610003228)

-- Four Main Support NPC's For Boss
spawnMobile("geonosis", "geonosian_worker", 1, -127.563, -20, -53.3188, 93, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -112.802, -20, -53.4335, 163, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -112.587, -20, -38.8262, 331, 610003228)
spawnMobile("geonosis", "geonosian_worker", 1, -126.847, -20, -38.7571, 308, 610003228)

--Boss Location
spawnMobile("geonosis", "geonosian_worker", 1, -127.48, -20, -45.8093, 80, 610003228)
end

