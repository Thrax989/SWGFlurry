  --*--    Created on: 2/15/2017    --*--
  --*--      Author: TOXIC	    --*--
local ObjectManager = require("managers.object.object_manager") --print("Object manager loaded for RIE")

RoriImperialEncampmentScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("RoriImperialEncampmentScreenPlay", true)--print("registered RIE")

function RoriImperialEncampmentScreenPlay:start()
	if isZoneEnabled("rori") then
	print("Rori Enabled: Spawning RIE")
		self:spawnMobiles()
	end
end

function RoriImperialEncampmentScreenPlay:spawnMobiles()
--Droid 1 Trigger
	local T1Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5628.4, 75.9027, -5666.37, 170, 0)print("Trigger 1 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify1DroidDead", T1Droid)
--Droid 2 Trigger
	local T2Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5622.79, 75.9766, -5666.37, 168, 0)print("Trigger 2 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify2DroidDead", T2Droid)
--Droid 3 Trigger
	local T3Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5622.62, 75.9714, -5657.63, 0, 0)print("Trigger 3 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify3DroidDead", T3Droid)
--Droid 4 Trigger
	local T4Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5628.39, 75.9222, -5657.63, 346, 0)print("Trigger 4 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify4DroidDead", T4Droid)
--Droid 5 Trigger
	local T5Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5626.45, 75.9471, -5661.81, 12, 0)print("Trigger 5 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify5DroidDead", T5Droid)
--Droid 6 Trigger
	local T6Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5501.52, 75.9154, -5659.77, 0, 0)print("Trigger 6 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify6DroidDead", T6Droid)
--Droid 7 Trigger
	local T7Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5507.28, 75.9701, -5659.77, 359, 0)print("Trigger 7 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify7DroidDead", T7Droid)
--Droid 8 Trigger
	local T8Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5507.48, 75.9386, -5668.51, 54, 0)print("Trigger 8 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify8DroidDead", T8Droid)
--Droid 9 Trigger
	local T9Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5501.78, 75.7897, -5668.51, 345, 0)print("Trigger 9 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify9DroidDead", T9Droid)
--Droid 10 Trigger
	local T10Droid = spawnMobile("rori", "death_watch_s_battle_droid", 1, -5504.32, 75.9226, -5664.54, 116, 0)print("Trigger 10 Loaded")
        	createObserver(OBJECTDESTRUCTION, "RoriImperialEncampmentScreenPlay", "notify10DroidDead", T10Droid)
end

--Phase 1 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify1DroidDead(T1Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5622.48, 75.9636, -5673.65, 97, 0) print("Phase 1 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5621.27, 75.9845, -5676.79, 124, 0) print("Phase 1 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5620.74, 75.9892, -5679.25, 352, 0) print("Phase 1 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5620.01, 75.9916, -5681.94, 198, 0) print("Phase 1 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5619.11, 75.9932, -5684.35, 45, 0) print("Phase 1 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5618.38, 75.9937, -5686.87, 168, 0) print("Phase 1 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5616.89, 75.9932, -5691.18, 333, 0) print("Phase 1 Started")
        return 0
end
--Phase 2 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify2DroidDead(T2Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.96, 75.99, -5645.66, 283, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.82, 75.995, -5647.94, 255, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.86, 75.9982, -5650.57, 267, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.84, 75.9997, -5653.28, 261, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.86, 76, -5656.02, 253, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.87, 76, -5658.72, 261, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.91, 76, -5661.29, 264, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.82, 76, -5664.05, 268, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.88, 76, -5666.64, 268, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.85, 76, -5669.31, 270, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.82, 76, -5671.94, 264, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.89, 76, -5674.65, 257, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.91, 76, -5677.16, 262, 0) print("Phase 2 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5611.99, 76, -5679.13, 268, 0) print("Phase 2 Started")
        return 0
end
--Phase 3 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify3DroidDead(T3Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.7, 76, -5679.15, 78, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.73, 76, -5677.17, 348, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.79, 76, -5674.58, 111, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.68, 76, -5671.91, 0, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.59, 76, -5669.17, 26, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.74, 76, -5666.56, 240, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.77, 76, -5664.05, 326, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.8, 76, -5661.21, 341, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.77, 76, -5658.59, 0, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.78, 76, -5655.99, 270, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.79, 76, -5653.22, 83, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.79, 76, -5650.61, 344, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.72, 75.9994, -5647.88, 104, 0) print("Phase 3 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5608.7, 75.9974, -5645.74, 82, 0) print("Phase 3 Started")
        return 0
end
--Phase 4 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify4DroidDead(T4Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5623.49, 75.9406, -5649.98, 323, 0) print("Phase 4 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5622.9, 75.9354, -5648.03, 311, 0) print("Phase 4 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5621.94, 75.9294, -5645.49, 33, 0) print("Phase 4 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5620.89, 75.9249, -5643.14, 26, 0) print("Phase 4 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5619.84, 75.9168, -5640.48, 150, 0) print("Phase 4 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5619, 75.909, -5638.13, 350, 0) print("Phase 4 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5617.83, 75.8999, -5634.71, 221, 0) print("Phase 4 Started")
        return 0
end
--Phase 5 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify5DroidDead(T5Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "nk_mega_droid", 0, -5627.22, 75.9469, -5675.54, 168, 0) print("Phase 5 Started")
	spatialChat(pBoss, "Support unit has arrived")
        local pBoss = spawnMobile("rori", "nk_mega_droid", 0, -5629.17, 75.8788, -5649.41, 131, 0) print("Phase 5 Started")
	spatialChat(pBoss, "Support unit has arrived")
        return 0
end
--Phase 6 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify6DroidDead(T6Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5507.46, 75.9763, -5652.04, 209, 0) print("Phase 6 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5508.43, 75.9807, -5649.35, 69, 0) print("Phase 6 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5509.24, 75.983, -5646.82, 333, 0) print("Phase 6 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5510.14, 75.9847, -5644.25, 210, 0) print("Phase 6 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5511.14, 75.986, -5641.6, 250, 0) print("Phase 6 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5511.78, 75.9851, -5639.09, 135, 0) print("Phase 6 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5513.41, 75.9862, -5635.37, 149, 0) print("Phase 6 Started")
        return 0
end
--Phase 7 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify7DroidDead(T7Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.14, 76, -5646.17, 225, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.31, 76, -5648.38, 203, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.31, 76, -5651.13, 85, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.31, 76, -5653.65, 38, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.31, 76, -5656.39, 158, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.31, 76, -5659, 87, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.24, 76, -5661.63, 168, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.31, 76, -5664.48, 97, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.26, 76, -5667.1, 85, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.29, 75.9998, -5669.7, 92, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.31, 75.999, -5672.44, 206, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.27, 75.9973, -5675.05, 83, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.24, 75.9946, -5677.69, 168, 0) print("Phase 7 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5518.16, 75.9914, -5679.62, 56, 0) print("Phase 7 Started")
        return 0
end
--Phase 8 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify8DroidDead(T8Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.46, 76, -5646.26, 257, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.31, 76, -5648.53, 120, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.31, 76, -5651.1, 41, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.31, 76, -5653.75, 264, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.33, 76, -5656.54, 262, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.45, 76, -5659.18, 0, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.33, 76, -5661.71, 51, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.32, 76, -5664.53, 206, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.36, 76, -5667.11, 270, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.36, 76, -5669.76, 185, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.31, 76, -5672.44, 195, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.32, 75.9999, -5675.14, 33, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.43, 75.9992, -5677.79, 253, 0) print("Phase 8 Started")
        local pBoss = spawnMobile("rori", "death_watch_s_battle_droid", 0, -5521.43, 75.9979, -5679.71, 203, 0) print("Phase 8 Started")
        return 0
end
--Phase 9 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify9DroidDead(T9Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5506.46, 75.8935, -5675.95, 299, 0) print("Phase 9 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5507.26, 75.906, -5678.1, 261, 0) print("Phase 9 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5508.2, 75.9112, -5680.65, 345, 0) print("Phase 9 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5509.22, 75.9142, -5683.08, 293, 0) print("Phase 9 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5510.22, 75.9094, -5685.69, 278, 0) print("Phase 9 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5511.17, 75.8989, -5688.19, 225, 0) print("Phase 9 Started")
        local pBoss = spawnMobile("rori", "alert_droideka", 0, -5512.41, 75.8937, -5690.24, 314, 0) print("Phase 9 Started")
        return 0
end
--Phase 10 Of 10 Instance
function RoriImperialEncampmentScreenPlay:notify10DroidDead(T10Droid, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("rori", "nk_mega_droid", 0, -5501.25, 75.5594, -5676.64, 125, 0) print("Phase 10 Started")
	spatialChat(pBoss, "Support unit has arrived")
        local pBoss = spawnMobile("rori", "nk_mega_droid", 0, -5503.02, 75.946, -5651.8, 43, 0) print("Phase 10 Started")
	spatialChat(pBoss, "Support unit has arrived")
        return 0
end
