MokkStrongholdScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("MokkStrongholdScreenPlay", true)

function MokkStrongholdScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
	end
end

function MokkStrongholdScreenPlay:spawnMobiles()

    spawnMobile("dantooine", "mokk_guard",1800,-7052.2, 2.3, -3334.8, 71,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7073.3, 2.1, -3339.2, 57,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7017.5, 7.5, -3340.9, -122,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7039.9, 1.9, -3309.6, 11,0)

    spawnMobile("dantooine", "mokk_sentry",1800,-7050.4, 6.0, -3383.7, -168,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7067.2, 2.0, -3315.2, -166,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7025.5, 2.2, -3291.4, -164,0)

    spawnMobile("dantooine", "mokk_sentry",1800,-7057.1, 2.0, -3301.5, 172,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7063.6, 2.5, -3353.5, 111,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7060.9, 2.7, -3362.2, -74,0)

    spawnMobile("dantooine", "mokk_sentry",1800,-7016.5, 2.6, -3311.9, 124,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7021.7, 2.3, -3306.6, -138,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7068.4, 2.0, -3318.0, -19,0)

    spawnMobile("dantooine", "mokk_huurton_reaper",900,-7043.4, 3.0, -3351.4, 39,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7043.3, 2.4, -3331.7, -113,0)
    spawnMobile("dantooine", "mokk_huurton_reaper",900,-7074.3, 2.0, -3325.3, -70,0)

    spawnMobile("dantooine", "mokk_sentry",1800,-7024.6, 2.3, -3294.5, -48,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7035.2, 1.9, -3293.5, 116,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7057.7, 2.0, -3305.8, 12,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7061.0, 2.5, -3357.5, -113,0)

    spawnMobile("dantooine", "mokk_guard",1800,-7015.6, 2.8, -3314.6, -60,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7036.6, 2.0, -3317.6, 12,0)

    spawnMobile("dantooine", "mokk_sentry",1800,-7056.5, 2.0, -3317.7, -127,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7054.8, 2.0, -3312.5, -18,0)
    spawnMobile("dantooine", "mokk_sentry",1800,-7026.7, 2.6, -3322.9, 57,0)

    spawnMobile("dantooine", "mokk_huurton_reaper",900,-7058.8, 1.9, -3319.5, 55,0)
    spawnMobile("dantooine", "mokk_huurton_reaper",900,-7036.5, 2.8, -3348.7, 18,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7050.9, 2.1, -3329.7, 143,0)

    spawnMobile("dantooine", "mokk_guard",1800,-7052.3, 2.2, -3331.9, 111,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7064.9, 2.2, -3346.6, 13,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7043.9, 1.2, -3306.2, -168,0)

    spawnMobile("dantooine", "mokk_guard",1800,-7033.1, 3.0, -3357.4, 42,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7091.3, 1.8, -3326.6, -90,0)
    spawnMobile("dantooine", "mokk_guard",1800,-7028.4, 2.0, -3314.8, -177,0)

    spawnMobile("dantooine", "mokk_guard",1800,-7044.6, 2.6, -3337.0, -41,0)
    spawnMobile("dantooine", "mokk_huurton_reaper",900,-7054, 2.5, -3346, -161,0)
    spawnMobile("dantooine", "mokk_huurton_reaper",900,-7047, 2.8, -3348, -152,0)
end