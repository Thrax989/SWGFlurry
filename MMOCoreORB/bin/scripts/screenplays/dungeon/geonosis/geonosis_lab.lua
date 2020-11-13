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

--New Hall entrance
spawnMobile("geonosis", "geonosian_worker", 1, -54.2882, -18.2365, -82.1277, 261, 610003229)
spawnMobile("geonosis", "geonosian_worker", 1, -62.1113, -18.4307, -90.5273, 355, 610003230)
spawnMobile("geonosis", "geonosian_worker", 1, -61.9965, -20.2919, -97.9719, 357, 610003230)
spawnMobile("geonosis", "geonosian_worker", 1, -61.979, -21.7989, -105.464, 357, 610003230)
spawnMobile("geonosis", "geonosian_worker", 1, -66.1405, -21.9051, -110.037, 86, 610003230)
spawnMobile("geonosis", "geonosian_worker", 1, -58.073, -21.8965, -110.109, 265, 610003230)
spawnMobile("geonosis", "geonosian_worker", 1, -41.8688, -21.9881, -109.627, 268, 610003233)
spawnMobile("geonosis", "geonosian_worker", 1, -42.7966, -22.0929, -99.2015, 172, 610003233)
spawnMobile("geonosis", "geonosian_worker", 1, -26.1979, -26.1219, -98.1367, 259, 610003234)
spawnMobile("geonosis", "geonosian_worker", 1, 1.39317, -30.038, -96.4573, 222, 610003234)
spawnMobile("geonosis", "geonosian_worker", 1, -5.03911, -30.1543, -92.6725, 151, 610003234)
spawnMobile("geonosis", "geonosian_worker", 1, -2.63063, -30.066, -92.0149, 204, 610003234)
spawnMobile("geonosis", "geonosian_worker", 1, -3.71194, -30.1926, -103.508, 351, 610003234)
spawnMobile("geonosis", "geonosian_worker", 1, 25.0286, -30.018, -99.4815, 283, 610003235)
spawnMobile("geonosis", "geonosian_worker", 1, 31.9733, -29.8356, -87.3085, 324, 610003236)
spawnMobile("geonosis", "geonosian_worker", 1, 24.2226, -31.9506, -83.1827, 322, 610003236)
spawnMobile("geonosis", "geonosian_worker", 1, 24.05, -31.593, -79.1449, 175, 610003236)
spawnMobile("geonosis", "geonosian_worker", 1, 19.6736, -30.4459, -68.2703, 147, 610003236)

--Two Bosses In Right Area
spawnMobile("geonosis", "geonosian_worker", 1, 37.1204, -30.7299, -78.2677, 220, 610003236)
spawnMobile("geonosis", "geonosian_worker", 1, -16.1985, -30.2413, -114.413, 352, 610003234)

--Right Side Hall Boss Area
spawnMobile("geonosis", "geonosian_worker", 1, -76.9659, -22.1928, -110.62, 84, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -88.013, -21.8741, -106.341, 116, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -99.0307, -21.8929, -104.764, 128, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -107.606, -22.1337, -94.6815, 168, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -109.615, -22.0641, -99.2083, 133, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -111.059, -21.7038, -101.292, 133, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -108.214, -22.1068, -124.915, 354, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -115.75, -21.5607, -104.122, 133, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -118.695, -21.7423, -114.547, 62, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -128.441, -21.7342, -114.832, 358, 610003231)
spawnMobile("geonosis", "geonosian_worker", 1, -136.059, -21.2393, -110.389, 25, 610003231)

--Main Boss In This Room
spawnMobile("geonosis", "geonosian_worker", 1, -130.742, -22.0534, -84.9919, 173, 610003232)

--Hall Leading TO Main Boss Rooms
spawnMobile("geonosis", "geonosian_worker", 1, -62.008, -21.7989, -123.983, 352, 610003237)
spawnMobile("geonosis", "geonosian_worker", 1, -54.685, -21.7989, -124.128, 268, 610003237)
spawnMobile("geonosis", "geonosian_worker", 1, -47.2517, -21.7989, -123.871, 261, 610003237)
spawnMobile("geonosis", "geonosian_worker", 1, -47.7487, -21.7989, -136.679, 9, 610003238)
spawnMobile("geonosis", "geonosian_worker", 1, -47.8562, -21.7989, -151.005, 351, 610003238)
spawnMobile("geonosis", "geonosian_worker", 1, -56.8782, -21.7989, -135.976, 87, 610003242)
spawnMobile("geonosis", "geonosian_worker", 1, -65.2194, -22, -134.511, 91, 610003242)
spawnMobile("geonosis", "geonosian_worker", 1, -62.8215, -22, -143.885, 335, 610003242)
spawnMobile("geonosis", "geonosian_worker", 1, -65.1765, -22, -143.836, 6, 610003242)
spawnMobile("geonosis", "geonosian_worker", 1, -68.051, -22, -139.827, 70, 610003242)
spawnMobile("geonosis", "geonosian_worker", 1, -77.55, -22, -144.971, 356, 610003242)
spawnMobile("geonosis", "geonosian_worker", 1, -32.739, -22, -136.59, 262, 610003239)
spawnMobile("geonosis", "geonosian_worker", 1, -35.2067, -22, -128.028, 172, 610003239)
spawnMobile("geonosis", "geonosian_worker", 1, -32.8058, -22, -128.065, 182, 610003239)
spawnMobile("geonosis", "geonosian_worker", 1, -26.6399, -22, -131.93, 266, 610003239)
spawnMobile("geonosis", "geonosian_worker", 1, -20.3618, -22, -128.166, 176, 610003239)

--Boos In Boxed Room At The End Of Hall
spawnMobile("geonosis", "geonosian_worker", 1, -19.8329, -22, -116.85, 127, 610003240)

--Boss Left Hallway 
spawnMobile("geonosis", "geonosian_worker", 1, -47.8239, -21.7989, -158.564, 6, 610003238)
spawnMobile("geonosis", "geonosian_worker", 1, -35.8628, -22.5629, -150.208, 189, 610003241)
spawnMobile("geonosis", "geonosian_worker", 1, -35.6795, -21.7989, -157.973, 241, 610003241)
spawnMobile("geonosis", "geonosian_worker", 1, -36.5003, -21.8865, -163.063, 313, 610003241)
spawnMobile("geonosis", "geonosian_worker", 1, -33.9834, -22.1818, -167.344, 298, 610003241)
spawnMobile("geonosis", "geonosian_worker", 1, -24.5407, -23.6282, -158.02, 272, 610003241)

--Main Boss In This Area
spawnMobile("geonosis", "geonosian_worker", 1, -18.7123, -22.2658, -150.375, 217, 610003241)

--Mini Boss
spawnMobile("geonosis", "geonosian_worker", 1, -77.9765, -22, -159.354, 359, 610003243)

--Hallway Leading Down To Spiders SMOKED OUT
spawnMobile("geonosis", "geonosian_worker", 1, -78.946, -22, -167.844, 7, 610003243)
spawnMobile("geonosis", "geonosian_worker", 1, -80.6856, -22, -176.973, 169, 610003244)
spawnMobile("geonosis", "geonosian_worker", 1, -96.4476, -26, -177.918, 91, 610003244)

--SPIDERS IN Hallway SMOKED OUT 
spawnMobile("geonosis", "geonosian_worker", 1, -103.987, -32.5251, -201.05, 178, 610003245)
spawnMobile("geonosis", "geonosian_worker", 1, -104.239, -29.9477, -195.895, 175, 610003245)
spawnMobile("geonosis", "geonosian_worker", 1, -104.087, -27.3248, -190.65, 175, 610003245)
spawnMobile("geonosis", "geonosian_worker", 1, -104.176, -26, -186.573, 152, 610003245)
spawnMobile("geonosis", "geonosian_worker", 1, -103.983, -26, -181.992, 142, 610003245)
spawnMobile("geonosis", "geonosian_worker", 1, -104.33, -26, -178.278, 270, 610003245)
spawnMobile("geonosis", "geonosian_worker", 1, -101.736, -26, -177.932, 274, 610003245)
spawnMobile("geonosis", "geonosian_worker", 1, -96.4476, -26, -177.918, 91, 610003244)

--NPC Bottom Hallway Leading To 3 Boss Rooms
spawnMobile("geonosis", "geonosian_worker", 1, -127.517, -33.7989, -227.731, 90, 610003251)
spawnMobile("geonosis", "geonosian_worker", 1, -70.0202, -33.7989, -228.139, 269, 610003248)
spawnMobile("geonosis", "geonosian_worker", 1, -99.1071, -33.7989, -220.97, 350, 610003246)
spawnMobile("geonosis", "geonosian_worker", 1, -100.899, -33.7989, -220.819, 352, 610003246)
spawnMobile("geonosis", "geonosian_worker", 1, -98.5, -34, -212.7, 96, 610003246)
spawnMobile("geonosis", "geonosian_worker", 1, -108.031, -34, -215.197, 53, 610003246)
spawnMobile("geonosis", "geonosian_worker", 1, -108.2, -34, -212.801, 108, 610003246)

--Boss Room Boxed Room
spawnMobile("geonosis", "geonosian_worker", 1, -71.4901, -34, -253.231, 7, 610003249)
spawnMobile("geonosis", "geonosian_worker", 1, -61.5877, -34, -250.745, 231, 610003249)
spawnMobile("geonosis", "geonosian_worker", 1, -61.5754, -34, -253.195, 274, 610003249)
spawnMobile("geonosis", "geonosian_worker", 1, -66.9681, -34, -259.987, 43, 610003249)

--Main Boss In Room
spawnMobile("geonosis", "geonosian_worker", 1, -66.1661, -34, -273.786, 358, 610003250)

-- Scientis Mutation room}
spawnMobile("geonosis", "geonosian_worker", 1, -128.596, -34, -210.744, 192, 610003252)
spawnMobile("geonosis", "geonosian_worker", 1, -138.365, -34, -213.247, 52, 610003252)
spawnMobile("geonosis", "geonosian_worker", 1, -138.34, -34, -210.8, 93, 610003252)
spawnMobile("geonosis", "geonosian_worker", 1, -133.009, -34, -204.056, 185, 610003252)
spawnMobile("geonosis", "geonosian_worker", 1, -126.897, -34, -194.489, 264, 610003253)
spawnMobile("geonosis", "geonosian_worker", 1, -126.428, -34, -188.965, 265, 610003253)
spawnMobile("geonosis", "geonosian_worker", 1, -125.926, -34, -183.292, 260, 610003253)
spawnMobile("geonosis", "geonosian_worker", 1, -137.665, -34, -197.196, 307, 610003253)
spawnMobile("geonosis", "geonosian_worker", 1, -137.779, -34, -191.105, 201, 610003253)
spawnMobile("geonosis", "geonosian_worker", 1, -137.697, -34, -185.955, 248, 610003253)
spawnMobile("geonosis", "geonosian_worker", 1, -137.692, -34, -180.683, 232, 610003253)

--Main Boss Mutation In This Room
spawnMobile("geonosis", "geonosian_worker", 1, -132.534, -34, -179.164, 183, 610003253)

--Hallway Leading to Mutation Chambers
spawnMobile("geonosis", "geonosian_worker", 1, -130.324, -34, -251.245, 0, 610003251)
spawnMobile("geonosis", "geonosian_worker", 1, -124.628, -34, -249.112, 221, 610003251)
spawnMobile("geonosis", "geonosian_worker", 1, -124.568, -34, -251.192, 345, 610003251)
spawnMobile("geonosis", "geonosian_worker", 1, -130.604, -34, -266.801, 84, 610003254)
spawnMobile("geonosis", "geonosian_worker", 1, -130.619, -34, -269.293, 62, 610003254)
spawnMobile("geonosis", "geonosian_worker", 1, -120.54, -34, -266.887, 257, 610003254)
spawnMobile("geonosis", "geonosian_worker", 1, -122.142, -33.7989, -281.704, 0, 610003254)
spawnMobile("geonosis", "geonosian_worker", 1, -135.459, -33.7989, -281.903, 90, 610003254)

--Mutation Chamber Area
spawnMobile("geonosis", "geonosian_worker", 1, -117.915, -34.0566, -350.885, 279, 610003256)
spawnMobile("geonosis", "geonosian_worker", 1, -142.774, -33.8302, -368.149, 20, 610003256)
spawnMobile("geonosis", "geonosian_worker", 1, -123.394, -33.5989, -388.88, 275, 610003256)
spawnMobile("geonosis", "geonosian_worker", 1, -154.578, -34.5771, -389.208, 72, 610003256)
spawnMobile("geonosis", "geonosian_worker", 1, -67.1776, -34.0585, -368.317, 253, 610003257)
spawnMobile("geonosis", "geonosian_worker", 1, -84.4995, -33.5259, -348.224, 92, 610003257)
spawnMobile("geonosis", "geonosian_worker", 1, -51.7504, -34.3358, -346.822, 244, 610003257)
spawnMobile("geonosis", "geonosian_worker", 1, -91.6429, -33.7439, -386.132, 330, 610003257)

--NPC Leading To Last Boss Chamber
spawnMobile("geonosis", "geonosian_worker", 1, -26.1393, -33.8793, -420.797, 353, 610003259)
spawnMobile("geonosis", "geonosian_worker", 1, -11.0825, -33.9954, -419.778, 266, 610003259)
spawnMobile("geonosis", "geonosian_worker", 1, -13.1736, -33.9954, -412.108, 174, 610003259)
spawnMobile("geonosis", "geonosian_worker", 1, -10.8175, -33.9954, -411.624, 195, 610003259)
spawnMobile("geonosis", "geonosian_worker", 1, -4.21572, -33.9967, -416.993, 276, 610003259)

--Lower Level Boss
spawnMobile("geonosis", "geonosian_worker", 1, 18.0504, -34, -380.885, 182, 610003260)

--Top Level Boss In Weapon Stock Room
spawnMobile("geonosis", "geonosian_worker", 1, 13.4259, -22.0449, -335.883, 153, 610003260)

--Spiders Guarding Main Boss Room
spawnMobile("geonosis", "geonosian_worker", 1, 37.4869, -34, -333.112, 308, 610003260)
spawnMobile("geonosis", "geonosian_worker", 1, 37.7062, -34, -335.1, 237, 610003260)
spawnMobile("geonosis", "geonosian_worker", 1, 40.4216, -34, -335.006, 215, 610003261)
spawnMobile("geonosis", "geonosian_worker", 1, 40.1, -34, -332.8, 356, 610003261)
spawnMobile("geonosis", "geonosian_worker", 1, 43.0376, -34, -332.7, 343, 610003261)
spawnMobile("geonosis", "geonosian_worker", 1, 44.4303, -34, -335.068, 208, 610003261)
spawnMobile("geonosis", "geonosian_worker", 1, 46.806, -34, -338.362, 14, 610003261)
spawnMobile("geonosis", "geonosian_worker", 1, 49.1715, -34, -337.73, 339, 610003261)
spawnMobile("geonosis", "geonosian_worker", 1, 46.7663, -34, -328.556, 113, 610003261)
spawnMobile("geonosis", "geonosian_worker", 1, 58.8023, -34.2097, -329.562, 263, 610003261)

--Main Boss Room
spawnMobile("geonosis", "geonosian_worker", 1, 95.8945, -34.2503, -329.149, 267, 610003261)
end
