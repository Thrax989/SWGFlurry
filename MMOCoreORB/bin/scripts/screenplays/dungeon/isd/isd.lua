local ObjectManager = require("managers.object.object_manager")print("Object manager loaded for ISD")
ISDScreenPlay = ScreenPlay:new 
{
  numberOfActs = 1,

  screenplayName = "ISDScreenPlay",
}

registerScreenPlay("ISDScreenPlay", true)print("Registered ISD")

function ISDScreenPlay:start()
  if (isZoneEnabled("dungeon1")) then
print("Dungeon 1 Enabled Spawning ISD")
    self:spawnMobiles()
  end
end

function ISDScreenPlay:spawnMobiles()



-- Base FloorStorm Troopers Guarding Door Entrances -- Guards at entrance 100% complete
spawnMobile("dungeon1", "isd_stormtrooper", 0, 40.6567, 173.835, 34.0745, 261, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 40.6779, 173.835, 29.086, 269, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 33.5028, 173.835, 3.61873, 308, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 29.9749, 173.835, 0.0756065, 305, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -29.9486, 173.835, 0.12338, 35, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -33.501, 173.835, 3.61753, 53, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -40.6873, 173.835, 34.0851, 95, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -40.6764, 173.835, 29.0936, 71, 4336902)
--Elevator Control Shaft Guards  10% complete
spawnMobile("dungeon1", "isd_stormtrooper", 0, -48.4635, 173.835, 21.3722, 78, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -47.9885, 173.835, 17.3455, 89, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 47.691, 173.835, 22.586, 260, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 47.9413, 173.835, 17.3783, 269, 4336902)


--Upper Floor Room Guards will patrol Elevator Points 50% complete
spawnMobile("dungeon1", "isd_stormtrooper", 0, -47.941, 181.335, 17.5886, 80, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -47.9893, 181.335, 22.5846, 92, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 47.7055, 181.335, 17.6227, 279, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 47.6649, 181.335, 22.5756, 246, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 40.7362, 181.335, 24.163, 262, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 40.7167, 181.335, 15.9608, 270, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -40.7103, 181.335, 16.0802, 87, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -40.75, 181.335, 24.1963, 87, 4336902)

-- Left Hallway Troopers --way 3045 173 -2968 50% complete 
spawnMobile("dungeon1", "isd_stormtrooper", 0, 44.309, 173.835, 29.086, 0, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 44.309, 173.835, 34.086, 179, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 47.191, 173.835, 34.086, 178, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 49.309, 173.835, 34.086, 182, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 50.691, 173.835, 34.086, 178, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 50.691, 173.835, 29.086, 354, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 49.309, 173.835, 29.086, 350, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 47.191, 173.835, 29.086, 359, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 52.809, 173.835, 29.086, 0, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 52.809, 173.835, 34.086, 176, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 57.691, 173.835, 34.086, 177, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.809, 173.835, 34.086, 175, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 57.691, 173.835, 29.086, 356, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.809, 173.835, 29.086, 355, 4336891)

--Right Hallway Troopers -- 50% complete ---2937 137 -2969
spawnMobile("dungeon1", "isd_mouse_droid", 0, -66.4228, 173.835, 31.2338, 91, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -59.809, 173.835, 29.086, 352, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -57.691, 173.835, 29.086, 358, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -52.809, 173.835, 29.086, 352, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -50.691, 173.835, 29.086, 348, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -49.309, 173.835, 29.086, 351, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -47.191, 173.835, 29.086, 359, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -44.309, 173.835, 29.086, 0, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -44.309, 173.835, 34.086, 170, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -47.191, 173.835, 34.086, 177, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -49.309, 173.835, 34.086, 179, 4336902)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -50.691, 173.835, 34.086, 175, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -52.809, 173.835, 34.0861, 178, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -57.691, 173.835, 34.086, 179, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -59.809, 173.835, 34.086, 181, 4336901)


--Main Strech too 2nd instance area
spawnMobile("dungeon1", "isd_stormtrooper", 0, 69.5, 173.835, 37.0327, 233, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 67.7099, 173.835, 75.5727, 12, 4336892)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 66.0803, 173.835, 75.5168, 351, 4336892)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.5532, 173.835, 70.0976, 64, 4336892)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.4742, 173.835, 73.9164, 125, 4336892)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 50.3973, 173.835, 69.722, 258, 4336890)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 49.5, 173.835, 71.9717, 79, 4336890)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 50.4035, 173.835, 74.8044, 250, 4336890)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 53.9988, 173.835, 85.586, 169, 4336889)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 66.1162, 173.835, 81.5044, 76, 4336889)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 66.3651, 173.835, 84.086, 111, 4336889)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.4009, 173.835, 92.9488, 222, 4336888)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 58.3923, 173.835, 93.9701, 230, 4336888)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 56.9955, 173.835, 95.3667, 226, 4336888)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 72.9082, 173.835, 103.918, 46, 4336888)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 71.5221, 173.835, 105.311, 46, 4336888)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 70.2656, 173.835, 106.594, 49, 4336888)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 69.75, 173.835, 117.071, 273, 4336887)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 51.4393, 173.835, 114.098, 159, 4336887)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 51.0128, 173.835, 118.314, 241, 4336887)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 50.5, 173.837, 125.44, 81, 4336887)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 55.5, 173.837, 125.454, 268, 4336887)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 50.1889, 173.835, 137.588, 266, 4336886)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 51.3225, 173.835, 140.523, 358, 4336886)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 54.4909, 173.835, 140.813, 14, 4336886)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.5, 173.835, 139.87, 113, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.2581, 173.835, 136.188, 59, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 65.0243, 173.835, 133.094, 359, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 70.579, 173.835, 138.873, 355, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 82.5, 173.835, 137.611, 184, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 78.8584, 173.835, 148.336, 344, 4336882)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 81.0336, 173.835, 148.336, 351, 4336882)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 77.5, 173.835, 123.946, 174, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 82.5, 173.835, 123.946, 183, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 77.5, 173.835, 114.568, 175, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 82.5, 173.835, 103.946, 352, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 77.5, 173.835, 103.946, 177, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 77.5, 173.835, 94.7323, 2, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 88.8528, 173.835, 92.0207, 179, 4336884)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 88.7512, 173.835, 97.1677, 348, 4336884)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 77.5, 173.835, 80.2241, 8, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 82.5, 173.835, 80.0384, 357, 4336881)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 84, 173.835, 63.8969, 266, 4336885)




--Hall WAy Tech Befor Mini boss
spawnMobile("dungeon1", "isd_stormtrooper", 0, 0.0153364, 175.335, -13.2076, 177, 4336896)

--Mini Boss In main Hatch note change NPC TEMPLATE
spawnMobile("dungeon1", "isd_stormtrooper", 0, -0.039244, 177.335, -58.358, 359, 4336897)
--Guards Guarding Mini Boss Change Templates When Ready
spawnMobile("dungeon1", "isd_stormtrooper", 0, 2.04692, 175.835, -43.3428, 337, 4336896)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -2.04691, 175.835, -43.3428, 15, 4336896)


--Hallway Techs
spawnMobile("dungeon1", "isd_stormtrooper", 0, -3.25, 175.71, -35.5379, 263, 4336896)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 3.25, 175.71, -35.87, 89, 4336896)


--Mini Boss Officer Room
spawnMobile("dungeon1", "isd_stormtrooper", 0, 8.90682, 175.335, -34.1395, 351, 4336895)


--Right door way right side of KRIX
spawnMobile("dungeon1", "isd_stormtrooper", 0, -16.6519, 175.335, -19.414, 163, 4336898)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -16.6823, 175.335, -25.414, 345, 4336898)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -32.0267, 175.335, -19.914, 185, 4336900)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -32.0744, 175.335, -24.914, 333, 4336900)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -52.3691, 175.085, -16.0054, 251, 4336900)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -55.0353, 175.085, -20.049, 334, 4336900)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -59.1815, 174.585, -9.64514, 321, 4336900)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -63.033, 174.585, -12.6892, 320, 4336900)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -68.7092, 173.835, 27.603, 263, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -64.5176, 173.835, 20.1768, 357, 4336901)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -69.2962, 173.835, 9.6136, 25, 4336900)

--Left side of Krix Hallway
spawnMobile("dungeon1", "isd_stormtrooper", 0, 8.95032, 175.335, -13.414, 171, 4336894)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 6, 175.335, -21.881, 100, 4336894)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 16.6051, 175.335, -25.414, 345, 4336894)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 16.5237, 175.335, -19.414, 165, 4336894)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 32.2088, 175.335, -23.7555, 173, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 32.2285, 175.335, -21.0168, 347, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 43.2261, 175.335, -19.7326, 60, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 46.1172, 175.335, -19.0861, 76, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 57.3558, 174.96, -18.5117, 18, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 54.3681, 174.96, -14.6551, 74, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 64.6047, 174.46, -10.1261, 14, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.3461, 174.585, -9.37018, 41, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 63.7118, 173.96, 1.30909, 27, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 68.5249, 173.96, 0.539704, 352, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 64.5, 173.835, 13.6481, 9, 4336893)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 69.447, 173.835, 14.1914, 321, 4336891)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 69.5, 173.835, 26.0028, 310, 4336891)
	
--2nd Hall way leading to 2nd instance

spawnMobile("dungeon1", "isd_stormtrooper", 0, 62.5, 173.835, 150.446, 10, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 67.5, 173.835, 150.446, 347, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 67.5, 173.835, 168.586, 338, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 62.5, 173.835, 168.586, 13, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.238, 173.835, 172.255, 355, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 57.0226, 173.835, 172.258, 358, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 55.2553, 173.835, 174.529, 29, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 70.5342, 173.835, 172.516, 331, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 73.0006, 173.835, 172.514, 325, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 74.75, 173.835, 174.515, 322, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 68.4483, 173.835, 182.865, 187, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 67.3288, 173.835, 184.991, 184, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 66.531, 173.835, 181.278, 184, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 62.0273, 173.835, 181.383, 176, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 62.9089, 173.835, 184.992, 133, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 55.25, 173.835, 191.283, 277, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 53.6404, 173.835, 196.086, 53, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 38.7498, 173.835, 196.086, 84, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 37.5, 173.835, 205.315, 88, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 39.4598, 173.835, 208.086, 177, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 53.6404, 173.835, 201.086, 160, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 57.3684, 173.835, 206.515, 172, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 59.8178, 173.835, 208.842, 164, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 63.6407, 173.835, 209.385, 170, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 66.6452, 173.835, 209.385, 180, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 70.3363, 173.835, 208.696, 180, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 72.4852, 173.835, 206.654, 250, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 74.75, 173.835, 191.462, 283, 4336879)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 52.3002, 172.335, 240.068, 112, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 52.309, 172.335, 235.086, 58, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 64.8727, 172.585, 233.782, 75, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 65.9257, 172.585, 238.542, 130, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 73.677, 173.085, 229.804, 103, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 76.5847, 173.085, 233.74, 151, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 79.6943, 173.585, 223.464, 156, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 83.8402, 173.585, 225.995, 171, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 84.5, 173.835, 209.086, 147, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 88.5, 173.835, 209.086, 199, 4336878)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 88.9677, 173.835, 198.454, 259, 4336878)
	
--Main 2nd room for 2nd part of instance
spawnMobile("dungeon1", "isd_stormtrooper", 0, 45.1635, 172.335, 223.84, 335, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 34.0999, 172.335, 251.418, 349, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 33.8942, 172.335, 265.85, 190, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 34.2778, 172.335, 279.541, 181, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 33.9855, 172.335, 293.618, 227, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 42.5, 172.335, 301.297, 281, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, 42.2867, 172.335, 314.901, 201, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -42.5, 172.335, 327.166, 86, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -42.5, 172.335, 314.933, 63, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -33.6858, 172.335, 293.336, 53, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -34.2345, 172.335, 279.227, 4, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -34.3442, 172.335, 265.706, 4, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -33.2016, 172.335, 251.203, 5, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -42.5, 172.335, 244.223, 21, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -42.5, 172.335, 230.42, 21, 4336867)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -45.1635, 172.335, 223.744, 29, 4336867)
spawnMobile("dungeon1", "at_st", 0, -22.159, 172.335, 274.07, 155, 4336867)
spawnMobile("dungeon1", "at_st", 0, 24.7408, 172.335, 270.483, 196, 4336867)
spawnMobile("dungeon1", "at_at", 0, -20.7854, 172.335, 298.615, 22, 4336867)
spawnMobile("dungeon1", "at_at", 0, 14.5818, 172.335, 296.699, 340, 4336867)
spawnMobile("dungeon1", "at_at", 0, -2.99155, 172.335, 302.711, 177, 4336867)
spawnMobile("dungeon1", "at_st", 0, -1.45511, 172.335, 316.803, 353, 4336867)
--Boss for main room
spawnMobile("dungeon1", "stormtrooper", 0, -2.72086, 172.335, 340.14, 159, 4336867)
	
	
	
--Commander watch captin thrat
spawnMobile("dungeon1", "isd_stormtrooper", 0, -60.4748, 172.335, 235.654, 354, 4336876)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -60.4954, 172.335, 239.477, 169, 4336876)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -74.25, 172.335, 237.476, 77, 4336876)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -72.7842, 172.335, 248.336, 2, 4336876)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -64.7903, 172.335, 243.491, 175, 4336876)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -63.5, 172.335, 256.336, 216, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -72.4645, 172.335, 253.836, 87, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -68.782, 172.335, 251.336, 351, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -68.9372, 172.335, 256.336, 171, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -84.0053, 172.21, 252.34, 191, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -86.8844, 172.21, 253.279, 195, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -89.3248, 172.21, 255.064, 229, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -91.0889, 172.21, 257.515, 253, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -91.9761, 172.21, 260.206, 251, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -92.2499, 172.21, 264.552, 279, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -86.3092, 172.086, 266.035, 180, 4336877)
spawnMobile("dungeon1", "isd_stormtrooper", 0, -76.8794, 172.335, 261.836, 90, 4336877)

--Droid 1 Trigger 1st DROIDEKA
	local T1Droid = spawnMobile("dungeon1", "droideka", 0, -6.32669, 173.835, 12.5935, 304, 4336902)print("Trigger 1 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify1DroidDead", T1Droid)
--Droid 2 Trigger 2nd DROIDEKA
	local T2Droid = spawnMobile("dungeon1", "droideka", 0, 4.61058, 173.835, 12.7671, 341, 4336902)print("Trigger 2 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify2DroidDead", T2Droid)
--[[
--Droid 3 Trigger
	local T3Droid = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 3 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify3DroidDead", T3Droid)
--Droid 4 Trigger
	local T4Droid = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 4 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify4DroidDead", T4Droid)
--Droid 5 Trigger
	local T5Droid = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 5 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify5DroidDead", T5Droid)
--Droid 6 Trigger
	local T6Droid = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 6 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify6DroidDead", T6Droid)
--Droid 7 Trigger
	local T7Droid = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 7 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify7DroidDead", T7Droid)
--Droid 8 Trigger
	local T8Droid = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 8 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify8DroidDead", T8Droid)
--Droid 9 Trigger
	local T9Droid =spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 9 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify9DroidDead", T9Droid)
--Droid 10 Trigger
	local T10Droid = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902)print("Trigger 10 Loaded")
        	createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notify10DroidDead", T10Droid) ]]--
end
--Phase 1 Of 10 Instance KRIX BOSS
function ISDScreenPlay:notify1DroidDead(T1Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "krix_swift", 1, -0.0544035, 173.835, 0.702554, 354, 4336902) print("Phase 1 Started")
        return 0
end
--Phase 2 Of 10 Instance
function ISDScreenPlay:notify2DroidDead(T2Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, 11.5961, 173.835, 21.7531, 224, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, 10.3578, 173.835, 26.7773, 296, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, 12.9387, 173.835, 34.8748, 227, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, 8.23861, 173.835, 36.1331, 207, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, 5.4772, 173.835, 40.0623, 205, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, -1.77409, 173.835, 36.3142, 173, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, -6.74336, 173.835, 41.23, 156, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, -10.5487, 173.835, 35.5427, 99, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, -17.0569, 173.835, 36.5125, 112, 4336902)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 0, -19.2227, 173.835, 28.7735, 97, 4336902)
        return 0
end
--Phase 3 Of 10 Instance
function ISDScreenPlay:notify3DroidDead(T3Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 3 Started")
        return 0
end
--Phase 4 Of 10 Instance
function ISDScreenPlay:notify4DroidDead(T4Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 4 Started")
        return 0
end
--Phase 5 Of 10 Instance
function ISDScreenPlay:notify5DroidDead(T5Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 5 Started")
	spatialChat(pBoss, "Support unit has arrived")
        return 0
end
--Phase 6 Of 10 Instance
function ISDScreenPlay:notify6DroidDead(T6Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 6 Started")
        return 0
end
--Phase 7 Of 10 Instance
function ISDScreenPlay:notify7DroidDead(T7Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 7 Started")
        return 0
end
--Phase 8 Of 10 Instance
function ISDScreenPlay:notify8DroidDead(T8Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 8 Started")
        return 0
end
--Phase 9 Of 10 Instance
function ISDScreenPlay:notify9DroidDead(T9Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 9 Started")
        return 0
end
--Phase 10 Of 10 Instance
function ISDScreenPlay:notify10DroidDead(T10Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "isd_stormtrooper", 1, 0.188488, 173.835, 27.0266, 338, 4336902) print("Phase 10 Started")
	spatialChat(pBoss, "Support unit has arrived")
        return 0
end
