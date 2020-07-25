swgflurry@defiant:~/Git/Core3/MMOCoreORB/bin$ ./core3 runUnitTests
(0 s) [TestCore] Running unit tests...
[==========] Running 48 tests from 11 test cases.
[----------] Global test environment set-up.
[----------] 1 test from BasicScreenPlayTest
[ RUN      ] BasicScreenPlayTest.ScreenPlayLuaInitialize
(0 s) [ConfigManager] Did not find conf/config-local.lua
(0 s) [DirectorManager] DEBUG - initializeLuaEngine started
(0 s) [BadgeList] Loaded 151 badges.
[       OK ] BasicScreenPlayTest.ScreenPlayLuaInitialize (996 ms)
[----------] 1 test from BasicScreenPlayTest (996 ms total)

[----------] 2 tests from BasicTerrainTest
[ RUN      ] BasicTerrainTest.LoadTestTerrainTest
(0 s) [ConfigManager] Did not find conf/config-local.lua
[       OK ] BasicTerrainTest.LoadTestTerrainTest (306 ms)
[ RUN      ] BasicTerrainTest.LoadTestSpaceTerrain
(1 s) [ConfigManager] Did not find conf/config-local.lua
[       OK ] BasicTerrainTest.LoadTestSpaceTerrain (31 ms)
[----------] 2 tests from BasicTerrainTest (337 ms total)

[----------] 3 tests from CircularAreaShapeTest
[ RUN      ] CircularAreaShapeTest.CircularAreaShapeHasItsCenterAtZeroZeroZeroAfterCreation
[       OK ] CircularAreaShapeTest.CircularAreaShapeHasItsCenterAtZeroZeroZeroAfterCreation (0 ms)
[ RUN      ] CircularAreaShapeTest.CircularAreaShapeHasRadiusEqualToZeroAfterCreation
[       OK ] CircularAreaShapeTest.CircularAreaShapeHasRadiusEqualToZeroAfterCreation (0 ms)
[ RUN      ] CircularAreaShapeTest.CircularAreaShapeHasRadiusSquareEqualToZeroAfterCreation
[       OK ] CircularAreaShapeTest.CircularAreaShapeHasRadiusSquareEqualToZeroAfterCreation (0 ms)
[----------] 3 tests from CircularAreaShapeTest (1 ms total)

[----------] 2 tests from CommandLuaTest
[ RUN      ] CommandLuaTest.LoadCommandLuas
(1 s) [ConfigManager] Did not find conf/config-local.lua
(1 s) [CommandConfigManager] ERROR - Could not create command counterAttack
(1 s) [CommandConfigManager] ERROR - Could not create command gmPlayClientEffect
[       OK ] CommandLuaTest.LoadCommandLuas (55 ms)
[ RUN      ] CommandLuaTest.CheckAnimationCRCS
(1 s) [ConfigManager] Did not find conf/config-local.lua
[       OK ] CommandLuaTest.CheckAnimationCRCS (23 ms)
[----------] 2 tests from CommandLuaTest (78 ms total)

[----------] 8 tests from ConfigManagerTest
[ RUN      ] ConfigManagerTest.StringTest
(1 s) [ConfigManager] Did not find conf/config-local.lua
[       OK ] ConfigManagerTest.StringTest (0 ms)
[ RUN      ] ConfigManagerTest.BoolTest
(1 s) [ConfigManager] Did not find conf/config-local.lua
[       OK ] ConfigManagerTest.BoolTest (0 ms)
[ RUN      ] ConfigManagerTest.Int16Test
(1 s) [ConfigManager] Did not find conf/config-local.lua
[       OK ] ConfigManagerTest.Int16Test (1 ms)
[ RUN      ] ConfigManagerTest.EnabledZones
(1 s) [ConfigManager] Did not find conf/config-local.lua
[>>>>>>>>>>] ZonesEnabled = { 'chandrila', 'corellia', 'coruscant', 'dantooine', 'dathomir', 'dungeon1', 'dungeon2', 'endor', 'geonosis', 'hoth', 'hutta', 'jakku', 'kaas', 'kashyyyk', 'korriban', 'lok', 'mandalore', 'mustafar', 'naboo', 'rori', 'taanab', 'talus', 'tatooine', 'tutorial', 'yavin4' }
[       OK ] ConfigManagerTest.EnabledZones (0 ms)
[ RUN      ] ConfigManagerTest.TreFiles
(1 s) [ConfigManager] Did not find conf/config-local.lua
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/ConfigManagerTest.cpp:73: Failure
Value of: treFilesToLoad.get(0) == "default_patch.tre"
  Actual: false
Expected: true
[  FAILED  ] ConfigManagerTest.TreFiles (0 ms)
[ RUN      ] ConfigManagerTest.SetTest
(1 s) [ConfigManager] Did not find conf/config-local.lua
[       OK ] ConfigManagerTest.SetTest (1 ms)
[ RUN      ] ConfigManagerTest.DynamicTest
(1 s) [ConfigManager] Did not find conf/config-local.lua
[       OK ] ConfigManagerTest.DynamicTest (0 ms)
[ RUN      ] ConfigManagerTest.DumpConfig
(1 s) [ConfigManager] Did not find conf/config-local.lua
(1 s) [ConfigManager] dumpConfig: START (Config Age: 0 s)
(1 s) [ConfigManager] Core3.AutoReg usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.CharacterBuilderEnabled usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: 'true'
(1 s) [ConfigManager] Core3.CleanupMailCount usageCounter: 4 (0/s) bool: true int: 25000 float: 25000 str: '25000'
(1 s) [ConfigManager] Core3.DBHost usageCounter: 4 (0/s) bool: true int: 127 float: 127 str: '127.0.0.1'
(1 s) [ConfigManager] Core3.DBInstances usageCounter: 4 (0/s) bool: true int: 2 float: 2 str: '2'
(1 s) [ConfigManager] Core3.DBName usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'swgemu'
(1 s) [ConfigManager] Core3.DBPass usageCounter: 4 (0/s) bool: true int: 123456 float: 123456 str: '*******'
(1 s) [ConfigManager] Core3.DBPort usageCounter: 4 (0/s) bool: true int: 3306 float: 3306 str: '3306'
(1 s) [ConfigManager] Core3.DBSecret usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '*******'
(1 s) [ConfigManager] Core3.DBUser usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'swgemu'
(1 s) [ConfigManager] Core3.DeleteCharacters usageCounter: 4 (0/s) bool: true int: 10 float: 10 str: '10'
(1 s) [ConfigManager] Core3.DumpObjFiles usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.InactiveAccountText usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'The server administrators have disabled your account.'
(1 s) [ConfigManager] Core3.InactiveAccountTitle usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'Account Disabled'
(1 s) [ConfigManager] Core3.LogFile usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'log/core3.log'
(1 s) [ConfigManager] Core3.LogFileLevel usageCounter: 4 (0/s) bool: true int: 4 float: 4 str: '4'
(1 s) [ConfigManager] Core3.LogJSON usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '0'
(1 s) [ConfigManager] Core3.LogSync usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '0'
(1 s) [ConfigManager] Core3.LoginAllowedConnections usageCounter: 4 (0/s) bool: true int: 3000 float: 3000 str: '3000'
(1 s) [ConfigManager] Core3.LoginPort usageCounter: 4 (0/s) bool: true int: 44453 float: 44453 str: '44453'
(1 s) [ConfigManager] Core3.LoginProcessingThreads usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.LoginRequiredVersion usageCounter: 4 (0/s) bool: true int: 20050408 float: 2.00504e+07 str: '20050408-18:00'
(1 s) [ConfigManager] Core3.LuaLogJSON usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '0'
(1 s) [ConfigManager] Core3.MOTD usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'Please dont forget to hard restart your clients if the server crashed/restarted.\n********************************************\nMain Server Website - www.swgflurry.com\n+-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+\n   |S|W|G| |F|L|U|R|R|Y| |S|E|R|V|E|R|\n+-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+\n Main Discord - https://discord.gg/RVx66Sw\n********************************************\n'
(1 s) [ConfigManager] Core3.MakeLogin usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.MakePing usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.MakeStatus usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.MakeWeb usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '0'
(1 s) [ConfigManager] Core3.MakeZone usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.MantisHost usageCounter: 4 (0/s) bool: true int: 127 float: 127 str: '127.0.0.1'
(1 s) [ConfigManager] Core3.MantisName usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'swgemu'
(1 s) [ConfigManager] Core3.MantisPass usageCounter: 4 (0/s) bool: true int: 123456 float: 123456 str: '*******'
(1 s) [ConfigManager] Core3.MantisPort usageCounter: 4 (0/s) bool: true int: 3306 float: 3306 str: '3306'
(1 s) [ConfigManager] Core3.MantisPrfx usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'mantis_'
(1 s) [ConfigManager] Core3.MantisUser usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'swgemu'
(1 s) [ConfigManager] Core3.MaxAuctionSearchJobs usageCounter: 4 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.MaxLogLines usageCounter: 4 (0/s) bool: true int: 1000000 float: 1e+06 str: '1e+06'
(1 s) [ConfigManager] Core3.MaxNavMeshJobs usageCounter: 4 (0/s) bool: true int: 6 float: 6 str: '6'
(1 s) [ConfigManager] Core3.MetricsHost usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: 'localhost'
(1 s) [ConfigManager] Core3.MetricsPort usageCounter: 4 (0/s) bool: true int: 8125 float: 8125 str: '8125'
(1 s) [ConfigManager] Core3.MetricsPrefix usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: ''
(1 s) [ConfigManager] Core3.ORB usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: ''
(1 s) [ConfigManager] Core3.ORBPort usageCounter: 4 (0/s) bool: true int: 44419 float: 44419 str: '44419'
(1 s) [ConfigManager] Core3.PathfinderLogJSON usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '0'
(1 s) [ConfigManager] Core3.PingAllowedConnections usageCounter: 4 (0/s) bool: true int: 3000 float: 3000 str: '3000'
(1 s) [ConfigManager] Core3.PingPort usageCounter: 4 (0/s) bool: true int: 44462 float: 44462 str: '44462'
(1 s) [ConfigManager] Core3.PlayerLogLevel usageCounter: 4 (0/s) bool: true int: 4 float: 4 str: '4'
(1 s) [ConfigManager] Core3.ProgressMonitors usageCounter: 5 (0/s) bool: true int: 1 float: 1 str: 'true'
(1 s) [ConfigManager] Core3.RESTServerPort usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '0'
(1 s) [ConfigManager] Core3.Revision usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '\"03b1077cbc was Karl \'lordkator\' Bunch, 8 months ago, message: [updated] Session API Client enable/disable\"\n\"4129c4ae5e was Victor Popovici, 8 months ago, message: [fixed] added disconnect delay for login server error messages to display\"\n\"02053cce5a was Victor Popovici, 8 months ago, message: [updated] engine3 submodule [fixed] toString constness [fixed] cleaned up more code\"\n\"24a049261e was Karl \'lordkator\' Bunch, 8 months ago, message: [updated] Add galaxyId to Session API Client routes\"\n\"ba1bea5057 was Victor Popovici, 8 months ago, message: [fixed] stability issues [fixed] cleaned up more code\"\n\"9ab3ac8556 was Karl \'lordkator\' Bunch, 8 months ago, message: [updated] Session API Client exception handling\"\n\"98e93c6b13 was Karl \'lordkator\' Bunch, 8 months ago, message: [updated] refactor Session API Client to be async\"\n\"80be04bcc7 was Karl \'lordkator\' Bunch, 8 months ago, message: [added] Session API Client\"\n\"249f7d171b was Phoenix, 8 months ago, message: [Fix] Mantis 8127 - Parking Garage system message shows again properly.\"\n\"3827d0a924 was Karl \'lordkator\' Bunch, 8 months ago, message: [added] Login sends disconnect packet after error by default.\"'
(1 s) [ConfigManager] Core3.StatusAllowedConnections usageCounter: 4 (0/s) bool: true int: 500 float: 500 str: '500'
(1 s) [ConfigManager] Core3.StatusInterval usageCounter: 4 (0/s) bool: true int: 30 float: 30 str: '30'
(1 s) [ConfigManager] Core3.StatusPort usageCounter: 4 (0/s) bool: true int: 44455 float: 44455 str: '44455'
(1 s) [ConfigManager] Core3.TermsOfService usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: ''
(1 s) [ConfigManager] Core3.TermsOfServiceVersion usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '0'
(1 s) [ConfigManager] Core3.TreFiles usageCounter: 4 (0/s) bool: true int: 26 float: 26 str: '<Vector 26> = { flurry4.tre, flurry3.tre, flurry2.tre, flurry1.tre, mtg_patch_022.tre, mtg_planets.tre, mtg_patch_021.tre, mtg_patch_019.tre, mtg_patch_018.tre, mtg_patch_017.tre, mtg_patch_016.tre, mtg_patch_015.tre, mtg_patch_014.tre, mtg_patch_013_configurable_02.tre, mtg_patch_012_configurable_01.tre, mtg_patch_011_files_01.tre, mtg_patch_010_object_01.tre, mtg_patch_009_Shader_01.tre, mtg_patch_008_texture_04.tre, mtg_patch_007_texture_03.tre, mtg_patch_006_texture_02.tre, mtg_patch_005_texture_01.tre, mtg_patch_004_appearance_04.tre, mtg_patch_003_appearance_03.tre, mtg_patch_002_appearance_02.tre, mtg_patch_001_appearance_01.tre }'
(1 s) [ConfigManager] Core3.TrePath usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '/home/swgflurry/Git/Core3/TRE'
(1 s) [ConfigManager] Core3.UnloadContainers usageCounter: 5 (0/s) bool: true int: 1 float: 1 str: '1'
(1 s) [ConfigManager] Core3.WebAccessLog usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '../log/webaccess.log'
(1 s) [ConfigManager] Core3.WebErrorLog usageCounter: 4 (0/s) bool: false int: 0 float: 0 str: '../log/weberror.log'
(1 s) [ConfigManager] Core3.WebPorts usageCounter: 4 (0/s) bool: true int: 44460 float: 44460 str: '44460'
(1 s) [ConfigManager] Core3.WebSessionTimeout usageCounter: 4 (0/s) bool: true int: 600 float: 600 str: '600'
(1 s) [ConfigManager] Core3.ZoneAllowedConnections usageCounter: 4 (0/s) bool: true int: 30000 float: 30000 str: '30000'
(1 s) [ConfigManager] Core3.ZoneGalaxyID usageCounter: 4 (0/s) bool: true int: 2 float: 2 str: '2'
(1 s) [ConfigManager] Core3.ZoneProcessingThreads usageCounter: 4 (0/s) bool: true int: 10 float: 10 str: '10'
(1 s) [ConfigManager] Core3.ZonesEnabled usageCounter: 4 (0/s) bool: true int: 25 float: 25 str: '<Vector 25> = { chandrila, corellia, coruscant, dantooine, dathomir, dungeon1, dungeon2, endor, geonosis, hoth, hutta, jakku, kaas, kashyyyk, korriban, lok, mandalore, mustafar, naboo, rori, taanab, talus, tatooine, tutorial, yavin4 }'
(1 s) [ConfigManager] Hottest key: Core3.ProgressMonitors usageCounter: 2 (0/s)
(1 s) [ConfigManager] dumpConfig: END
[       OK ] ConfigManagerTest.DumpConfig (2 ms)
[----------] 8 tests from ConfigManagerTest (4 ms total)

[----------] 12 tests from JediManagerTest
[ RUN      ] JediManagerTest.ShouldRunFileJediManagerLuaAtLoadConfiguration
[       OK ] JediManagerTest.ShouldRunFileJediManagerLuaAtLoadConfiguration (0 ms)
[ RUN      ] JediManagerTest.ShouldReadTheJediProgressionTypeVariableAtLoadConfigurations
[       OK ] JediManagerTest.ShouldReadTheJediProgressionTypeVariableAtLoadConfigurations (0 ms)
[ RUN      ] JediManagerTest.ShouldRunTheHolocronJediManagerLuaFileIfHolocronJediProgressionIsConfigured
[       OK ] JediManagerTest.ShouldRunTheHolocronJediManagerLuaFileIfHolocronJediProgressionIsConfigured (0 ms)
[ RUN      ] JediManagerTest.ShouldRunTheVillageJediManagerLuaFileIfVillageJediProgressionIsConfigured
[       OK ] JediManagerTest.ShouldRunTheVillageJediManagerLuaFileIfVillageJediProgressionIsConfigured (0 ms)
[ RUN      ] JediManagerTest.ShouldReadTheCustomJediProgressionFileStringIfCustomJediProgressionIsConfigured
[       OK ] JediManagerTest.ShouldReadTheCustomJediProgressionFileStringIfCustomJediProgressionIsConfigured (0 ms)
[ RUN      ] JediManagerTest.ShouldLoadTheCustomJediProgressionFileIfCustomJediProgressionIsConfigured
[       OK ] JediManagerTest.ShouldLoadTheCustomJediProgressionFileIfCustomJediProgressionIsConfigured (0 ms)
[ RUN      ] JediManagerTest.ShouldReadTheJediProgressionSystemNameAtLoadConfiguration
[       OK ] JediManagerTest.ShouldReadTheJediProgressionSystemNameAtLoadConfiguration (1 ms)
[ RUN      ] JediManagerTest.OnPlayerCreatedShouldCallTheOnPlayerCreatedMethodInTheLuaJediManager
[       OK ] JediManagerTest.OnPlayerCreatedShouldCallTheOnPlayerCreatedMethodInTheLuaJediManager (0 ms)
[ RUN      ] JediManagerTest.OnPlayerLoggedInShouldCallTheOnPlayerLoggedInMethodInTheLuaJediManager
[       OK ] JediManagerTest.OnPlayerLoggedInShouldCallTheOnPlayerLoggedInMethodInTheLuaJediManager (0 ms)
[ RUN      ] JediManagerTest.OnPlayerLoggedOutShouldCallTheOnPlayerLoggedOutMethodInTheLuaJediManager
[       OK ] JediManagerTest.OnPlayerLoggedOutShouldCallTheOnPlayerLoggedOutMethodInTheLuaJediManager (0 ms)
[ RUN      ] JediManagerTest.CheckForceStatusCommandShouldCallTheCheckForceStatusCommandMethodInTheLuaJediManager
[       OK ] JediManagerTest.CheckForceStatusCommandShouldCallTheCheckForceStatusCommandMethodInTheLuaJediManager (0 ms)
[ RUN      ] JediManagerTest.UseItemShouldCallTheUseItemMethodInTheLuaJediManager
[       OK ] JediManagerTest.UseItemShouldCallTheUseItemMethodInTheLuaJediManager (1 ms)
[----------] 12 tests from JediManagerTest (2 ms total)

[----------] 3 tests from LuaMobileTest
[ RUN      ] LuaMobileTest.LuaMobileTemplatesTest
(1 s) [ConfigManager] Did not find conf/config-local.lua
(1 s) [TemplateManager] Loading object templates
	Loading templates: [40%]	(6 s) [SharedObjectTemplate resource_spawn] WARNING - expecting SHOT got RCCT in file: object/resource_container/base/shared_base_resource_container.iff
	Loading templates: [56%]	(8 s) [Console] ERROR - file:scripts/object/tangible/component/vehicle/base/base_vehicle.lua ERROR .../object/tangible/component/vehicle/base/base_vehicle.lua:47: attempt to index a nil value (global 'object_tangible_component_vehicle_base_shared_base_vehicle')
	Loading templates: [57%]	(8 s) [SharedObjectTemplate civilian_a] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate civilian_aa] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate civilian_b] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate civilian_c] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate civilian_d] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate civilian_e] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate military_a] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate military_b] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate military_c] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate military_d] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
(8 s) [SharedObjectTemplate military_e] WARNING - could not open lua derv: object/tangible/component/vehicle/base/base_vehicle.iff
	Loading templates: [95%]	(11 s) [TreeArchive] WARNING - Did not find fileName: shipcontrol_pob.iff
	Loading templates: [102%]	(12 s) [Console] ERROR - file:scripts/object/tangible/wearables/cape/cape_kubaz.lua ERROR scripts/object/tangible/wearables/cape/cape_kubaz.lua:1: attempt to index a nil value (global 'object_tangible_wearables_cape_shared_cape_kubaz')
	Loading templates: [108%]	(13 s) [SharedObjectTemplate hoth_generator] WARNING - expecting SHOT got STAT in file: object/building/heroic/shared_hoth_generator.iff
	Loading templates: [124%]	(14 s) [SharedObjectTemplate tcg_8_single_pod_airspeeder] WARNING - expecting SHOT got SITN in file: object/intangible/vehicle/shared_tcg_8_single_pod_airspeeder.iff
	Loading templates: [137%]	(16 s) [SharedObjectTemplate hoth_turret_s1] WARNING - expecting SHOT got SIOT in file: object/mobile/shared_hoth_turret_s1.iff
(16 s) [SharedObjectTemplate hoth_turret_s2] WARNING - expecting SHOT got SIOT in file: object/mobile/shared_hoth_turret_s2.iff
	Loading templates: [185%]	
(20 s) [TemplateManager] Finished loading object templates
(21 s) [CommandConfigManager] ERROR - Could not create command counterAttack
(21 s) [CommandConfigManager] ERROR - Could not create command gmPlayClientEffect
(21 s) [FactionManager] Loading config file.
(21 s) [FactionManager] loaded 22 ranks
(21 s) [DnaManager] Loading DNA Information
(21 s) [DnaManager] Loaded 201 dna stats.
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_force_crystal_hunter was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_force_crystal_hunter was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_force_crystal_hunter was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: nightsister_elder
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: nightsister_elder
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: nightsister_elder
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: nightsister_elder
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: nightsister_elder
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: nightsister_elder
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: nightsister_elder
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: exar_boss
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: exar_boss
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: exar_boss
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: exar_boss
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: exar_boss
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: exar_boss
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: exar_boss
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: dark_jedi_master
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: dark_jedi_master
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: dark_jedi_master
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: dark_jedi_master
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: dark_jedi_master
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: dark_jedi_master
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: dark_jedi_master
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: event_marvolo
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: event_marvolo
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: event_marvolo
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: event_marvolo
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: event_marvolo
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: event_marvolo
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: event_marvolo
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: general_luke
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: general_luke
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: general_luke
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: general_luke
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: general_luke
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: general_luke
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: general_luke
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:441: Failure
      Expected: 10000000
To be equal to: totalChance
      Which is: 6400000
Loot groups total chance is incorrect dune_sea_krayt_dragon
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: lord_vader
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: lord_vader
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: lord_vader
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: lord_vader
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: lord_vader
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: lord_vader
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: lord_vader
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: senior_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: senior_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: senior_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: senior_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: senior_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: senior_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: singing_mountain_clan_guardian
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: singing_mountain_clan_guardian
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: singing_mountain_clan_guardian
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: singing_mountain_clan_guardian
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: singing_mountain_clan_guardian
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: singing_mountain_clan_guardian
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_singing_mountain_clan_arch_witch was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_singing_mountain_clan_arch_witch was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_singing_mountain_clan_arch_witch was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: bh_singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: bh_singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: bh_singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: bh_singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: bh_singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: bh_singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:195: Failure
Value of: mobNames.contains(objName)
  Actual: false
Expected: true
Mobile tauntaun has invalid objectName: @mob/creature_names:tauntaun
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: axkva_min
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: axkva_min
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: axkva_min
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: axkva_min
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: axkva_min
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: axkva_min
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: axkva_min
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:417: Failure
Value of: socialGroup.isEmpty()
  Actual: true
Expected: false
Social group is empty on pack mobile: worldboss_4
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: nightsister_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: nightsister_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: nightsister_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: nightsister_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: nightsister_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: nightsister_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: exar_clone
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: exar_clone
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: exar_clone
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: exar_clone
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: exar_clone
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: exar_clone
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: exar_clone
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group weapon_all from darth_caedus was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: darth_caedus
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: spiderclan_protector
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: spiderclan_protector
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: spiderclan_protector
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: spiderclan_protector
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: spiderclan_protector
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: spiderclan_protector
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: spiderclan_sentinel
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: spiderclan_sentinel
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: spiderclan_sentinel
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: spiderclan_sentinel
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: spiderclan_sentinel
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: spiderclan_sentinel
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:248: Failure
Value of: maxDamage >= minDamage
  Actual: false
Expected: true
Max damage is lower than min damage on mobile: wampa_boss
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: event_exar
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: event_exar
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: event_exar
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: event_exar
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: event_exar
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: event_exar
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: event_exar
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: event_nsqueen
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: event_nsqueen
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: event_nsqueen
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: event_nsqueen
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: event_nsqueen
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: event_nsqueen
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: event_nsqueen
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:195: Failure
Value of: mobNames.contains(objName)
  Actual: false
Expected: true
Mobile rebel_echo_comm has invalid objectName: @mob/creature_names:rebel_echo_comm
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_feral_force_wielder was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_feral_force_wielder was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_feral_force_wielder was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: kunn_kuroosh
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: kunn_kuroosh
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: kunn_kuroosh
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: kunn_kuroosh
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: kunn_kuroosh
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: kunn_kuroosh
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_nightsister_outcast was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_nightsister_outcast was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_nightsister_outcast was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:195: Failure
Value of: mobNames.contains(objName)
  Actual: false
Expected: true
Mobile event_rebelsoldier has invalid objectName: @mob/creature_names:rebel_soldier
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: general_han
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: general_han
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: general_han
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: general_han
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: general_han
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: general_han
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: general_han
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_dark_adept was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_dark_adept was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_dark_adept was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: bh_dark_adept
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: bh_dark_adept
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: bh_dark_adept
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: bh_dark_adept
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: bh_dark_adept
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: bh_dark_adept
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: spiderclan_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: spiderclan_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: spiderclan_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: spiderclan_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: spiderclan_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: spiderclan_stalker
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:417: Failure
Value of: socialGroup.isEmpty()
  Actual: true
Expected: false
Social group is empty on pack mobile: worldboss_2
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: singing_mountain_clan_huntress
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: singing_mountain_clan_huntress
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: singing_mountain_clan_huntress
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: singing_mountain_clan_huntress
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: singing_mountain_clan_huntress
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: singing_mountain_clan_huntress
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:417: Failure
Value of: socialGroup.isEmpty()
  Actual: true
Expected: false
Social group is empty on pack mobile: worldboss_5
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: worldboss_5
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: worldboss_5
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: worldboss_5
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: worldboss_5
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: worldboss_5
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: worldboss_5
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: worldboss_5
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: singing_mountain_clan_dragoon
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: singing_mountain_clan_dragoon
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: singing_mountain_clan_dragoon
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: singing_mountain_clan_dragoon
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: singing_mountain_clan_dragoon
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: singing_mountain_clan_dragoon
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_nightsister_spell_weaver was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_nightsister_spell_weaver was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_nightsister_spell_weaver was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: bh_nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: bh_nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: bh_nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: bh_nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: bh_nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: bh_nightsister_spell_weaver
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:254: Failure
Value of: maxHam >= minHam
  Actual: false
Expected: true
Base ham max is lower than base ham on mobile: bh_spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_spiderclan_auspex was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_spiderclan_auspex was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_spiderclan_auspex was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: bh_spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: bh_spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: bh_spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: bh_spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: bh_spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: bh_spiderclan_auspex
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: force_crystal_hunter
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: force_crystal_hunter
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: force_crystal_hunter
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: force_crystal_hunter
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: force_crystal_hunter
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: force_crystal_hunter
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: nightsister_ranger_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: nightsister_ranger_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: nightsister_ranger_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: nightsister_ranger_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: nightsister_ranger_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: nightsister_ranger_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:195: Failure
Value of: mobNames.contains(objName)
  Actual: false
Expected: true
Mobile sherkarmini has invalid objectName: @mob/creature_names:sherkarmini
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:195: Failure
Value of: mobNames.contains(objName)
  Actual: false
Expected: true
Mobile rebel_echo_pilot has invalid objectName: @mob/creature_names:rebel_echo_pilot
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: master_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: master_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: master_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: master_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: master_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: master_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: master_prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: nightsister_ranger
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: nightsister_ranger
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: nightsister_ranger
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: nightsister_ranger
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: nightsister_ranger
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: nightsister_ranger
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_tusken_carnage_champion was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_tusken_carnage_champion was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:437: Failure
Value of: foundGroup != nullptr
  Actual: false
Expected: true
Loot group tierrwo from bh_tusken_carnage_champion was not found in LootGroupMap
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: dolac_dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: dolac_dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: dolac_dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: dolac_dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: dolac_dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: dolac_dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: dolac_dark_jedi_knight
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: event_grim_sage
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: event_grim_sage
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: event_grim_sage
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: event_grim_sage
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: event_grim_sage
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: event_grim_sage
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: event_grim_sage
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch_quest
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: exar_guard
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: exar_guard
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: exar_guard
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: exar_guard
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: exar_guard
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: exar_guard
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: exar_guard
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:195: Failure
Value of: mobNames.contains(objName)
  Actual: false
Expected: true
Mobile rebel_snow_trooper has invalid objectName: @mob/creature_names:rebel_snow_trooper
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:195: Failure
Value of: mobNames.contains(objName)
  Actual: false
Expected: true
Mobile giant_wampa has invalid objectName: @mob/creature_names:giant_wampa
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: prophet_of_the_dark_side
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle2_npc is not a valid command in mobile template: mauler_acolyte
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone2_npc is not a valid command in mobile template: mauler_acolyte
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast2_npc is not a valid command in mobile template: mauler_acolyte
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown2_npc is not a valid command in mobile template: mauler_acolyte
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken2_npc is not a valid command in mobile template: mauler_acolyte
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcethrow2_npc is not a valid command in mobile template: mauler_acolyte
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: mauler_acolyte
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: singing_mountain_clan_arch_witch
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningsingle1_npc is not a valid command in mobile template: spiderclan_web_dancer
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: mindblast1_npc is not a valid command in mobile template: spiderclan_web_dancer
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcechoke_npc is not a valid command in mobile template: spiderclan_web_dancer
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceweaken1_npc is not a valid command in mobile template: spiderclan_web_dancer
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forceknockdown1_npc is not a valid command in mobile template: spiderclan_web_dancer
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:480: Failure
Value of: commandName.isEmpty() || commandConfigManager->contains(commandName)
  Actual: false
Expected: true
Attack: forcelightningcone1_npc is not a valid command in mobile template: spiderclan_web_dancer
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:195: Failure
Value of: mobNames.contains(objName)
  Actual: false
Expected: true
Mobile rebel_echo_officer has invalid objectName: @mob/creature_names:rebel_echo_officer
/home/swgflurry/Git/Core3/MMOCoreORB/src/tests/LuaMobileTest.cpp:205: Failure
Value of: templateData != nullptr
  Actual: false
Expected: true
Mobile gungan_bomber has invalid template configured: object/mobile/shared_gungan_m_hood_greeter.iff
Segmentation fault
swgflurry@defiant:~/Git/Core
