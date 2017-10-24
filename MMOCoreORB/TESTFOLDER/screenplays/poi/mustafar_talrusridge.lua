MustafarTalrusRidgeScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TalrusRidgeScreenPlay"
}

registerScreenPlay("MustafarTalrusRidgeScreenPlay", true)

function MustafarTalrusRidgeScreenPlay:start()
	if (isZoneEnabled("mustafar")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
--		self:setMoodString()
--		pNpc = spawnMobile()
	end
end

function MustafarTalrusRidgeScreenPlay:spawnSceneObjects()
	--tarlus lairs front of cave moving out
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 851, 85, 1275, 155, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 871, 81, 1285, 155, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 891, 85, 1301, 165, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 969, 89, 1218, -100, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 895, 93, 1146, 80, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 1015, 86, 1019, 165, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 1061, 88, 913, 155, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 1093, 93, 786, 175, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 1144, 96, 743, -160, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 1122, 95, 628, 90, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 1135, 94, 630, 135, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 1174, 97, 583, -160, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/creature_lairs/must_tulrus_lair.iff", 1093, 112, 506, 90, 0)


	--pillars front of cave moving out
--	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy_2.iff", 780, 110, 1255, 90, 0)
--	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 787, 111, 1253, 90, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 884, 93, 1324, -179, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 899, 95, 1324, -179, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 994, 84, 1113, 135, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 1133, 94, 675, 170, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 1123, 97, 557, 135, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 1176, 100, 526, -165, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 1136, 92, 510, -179, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy_2.iff", 1171, 92, 471, -179, 0)
	spawnSceneObject("mustafar", "object/building/mustafar/terrain/must_lg_spire_lumpy.iff", 1109, 103, 468, -179, 0)








end

function MustafarTalrusRidgeScreenPlay:spawnMobiles()

--	infront of cave moving out
	spawnMobile("mustafar", "musty_talrus_ancient", 300, 909, 85, 1270, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 919, 87, 1282, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 909, 85, 1283, 179, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 872, 83, 1261, 170, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 876, 82, 1274, 170, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 862, 82, 1271, 170, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 818, 95, 1263, 90, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 801, 101, 1263, 90, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 805, 101, 1256, 90, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 912, 81, 1216, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 926, 82, 1223, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 903, 83, 1199, 90, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 909, 85, 1270, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 919, 87, 1282, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 909, 85, 1283, 179, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 953, 85, 1186, -90, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 942, 84, 1198, -135, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 940, 83, 1172, -170, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 923, 87, 1130, 90, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 924, 90, 1117, 90, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1025, 87, 1085, -175, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1044, 93, 1074, -175, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1014, 85, 1060, -175, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1028, 85, 984, 155, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1008, 89, 990, 155, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 994, 94, 977, 155, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1080, 89, 941, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1064, 88, 923, 155, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1105, 90, 835, 170, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1090, 90, 826, 170, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1098, 92, 799, 170, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1041, 103, 843, 135, 0)
	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1037, 108, 831, 90, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1143, 95, 735, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1117, 92, 738, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1137, 94, 709, -165, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1142, 94, 648, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1159, 95, 637, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1138, 93, 617, -165, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1171, 95, 573, -165, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1152, 92, 580, -179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1162, 92, 554, -170, 0)

	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1154, 89, 530, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1108, 104, 527, 179, 0)
	spawnMobile("mustafar", "musty_talrus", 300, 1141, 90, 478, 179, 0)
	spawnMobile("mustafar", "musty_talrus_ancient", 300, 1126, 94, 445, 179, 0)
	spawnMobile("mustafar", "musty_talrus_magma", 300, 1163, 87, 444, 179, 0)
	spawnMobile("mustafar", "musty_talrus", 300, 1148, 87, 418, 179, 0)





--[[

	local pNpc = spawnMobile("jakku", "mercenary",60,-4507.3, 6.9, -3849.0, -71, 0)
	self:setMoodString(pNpc, "conversation")

	]]





end
