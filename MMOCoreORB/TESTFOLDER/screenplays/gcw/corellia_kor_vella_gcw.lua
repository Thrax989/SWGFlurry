local ObjectManager = require("managers.object.object_manager")

corellia_kor_vella_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "corellia_kor_vella_gcw"
}

registerScreenPlay("corellia_kor_vella_gcw", true)

function corellia_kor_vella_gcw:start()
	if (isZoneEnabled("corellia")) then
	if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function corellia_kor_vella_gcw:spawnImperials()

	--imperial base near starport
	spawnMobile("corellia", "stormtrooper", 360, -3003.5, 31.0, 2930.4, 180, 0)
	spawnMobile("corellia", "stormtrooper", 360, -3007.5, 31.0, 2930.4, 180, 0)
	spawnMobile("corellia", "stormtrooper", 360, -3003.5, 31.0, 2926.4, 180, 0)
	spawnMobile("corellia", "stormtrooper", 360, -3007.5, 31.0, 2926.4, 180, 0)
	spawnMobile("corellia", "stormtrooper", 360, -3003.5, 31.0, 2922.4, 180, 0)
	spawnMobile("corellia", "stormtrooper", 360, -3007.5, 31.0, 2922.4, 180, 0)

	spawnMobile("corellia", "stormtrooper", 360, -2992.1, 30.9, 2913.5, -125, 0)
	spawnMobile("corellia", "stormtrooper", 360, -2992.1, 30.9, 2903.5, -55, 0)

	spawnMobile("corellia", "stormtrooper", 360, 3.7, 0.3, 1.1, 0, 1331934)
	spawnMobile("corellia", "stormtrooper", 360, 3.7, 0.3, -2.3, 0, 1331934)
	spawnMobile("corellia", "stormtrooper", 360, -3.4, -3.3, 5.2, 180, 1331936)
	spawnMobile("corellia", "stormtrooper", 360, 1.3, -6.7, -6.0, 45, 1331937)
	spawnMobile("corellia", "stormtrooper", 360, 7.3, -6.7, -6.0, -45, 1331937)
	spawnMobile("corellia", "stormtrooper", 360, -5.1, -13.7, 7.5, 180, 1331939)
	spawnMobile("corellia", "stormtrooper", 360, -1.9, -13.7, 7.5, 180, 1331939)
	spawnMobile("corellia", "stormtrooper_medic", 360, -5.7, -13.8, 13.8, -33, 1331940)
	spawnMobile("corellia", "imperial_second_lieutenant", 360, 16.0, -13.8, 9.6, 180, 1331941)
	spawnMobile("corellia", "imperial_trooper", 360, 17.0, -13.8, -2.5, -45, 1331941)
	spawnMobile("corellia", "imperial_major_general", 360, 15.1, -11.5, -20.8, 0, 1331942)

	spawnMobile("corellia", "stormtrooper_medic", 360, 0.2, 0.1, -5.1, 0, 1331946)
	spawnMobile("corellia", "imperial_major", 360, 4.6, 0.1, -2.1, -135, 1331948)

	spawnMobile("corellia", "stormtrooper", 360, -0.2, 0.1, 1.3, -90, 1331953)
	spawnMobile("corellia", "imperial_colonel", 360, 4.6, 0.1, -2.1, -135, 1331955)

	--imperials in the city
	spawnMobile("corellia", "imperial_noncom", 400, -3660.31, 86, 3103.26, 39.0513, 0)

	spawnMobile("corellia", "dark_trooper", 400, -3773.66, 86, 3203.13, 22.9816, 0)

	spawnMobile("corellia", "imperial_private", 400, -3387, 86, 2960, 95, 0)
	spawnMobile("corellia", "imperial_private", 400, -3404.35, 74, 3347.14, 188, 0)

	spawnMobile("corellia", "imperial_first_lieutenant", 400, -3662.58, 86, 3090.82, 101, 0)
	spawnMobile("corellia", "imperial_first_lieutenant", 400, -3074, 31, 2825, 235, 0)
	spawnMobile("corellia", "imperial_first_lieutenant", 400, -3674.98, 86, 3104.95, 180, 0)

	spawnMobile("corellia", "imperial_sergeant", 400, -3435, 86, 3034, 90, 0)
	spawnMobile("corellia", "imperial_sergeant", 400, -3424, 86, 3018, 30, 0)
	spawnMobile("corellia", "imperial_sergeant", 400, -3368.45, 86, 3242.5, 216, 0)
	spawnMobile("corellia", "imperial_sergeant", 400, -3366, 86, 3232, 166, 0)
	spawnMobile("corellia", "imperial_sergeant", 400, -3582, 86, 3143, 333, 0)

	spawnMobile("corellia", "stormtrooper", 400, -3621.27, 86, 3142.55, 28.2333, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3631.32, 86, 3136.46, 252.779, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3410.43, 86, 3142.78, 151.613, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3406.24, 86, 3137.43, 204.684, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3395.4, 86, 3017.79, 72.2994, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3395.16, 86, 3023.07, 57.428, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3344.8, 80.6241, 3240.26, 200.272, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3343.2, 81.762, 3240.54, 177.569, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3767.99, 86, 3180.85, 154.813, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3761.11, 86, 3190.17, 63.2948, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3411.64, 74, 3344.7, 179.356, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3416.53, 74, 3346.57, 326.897, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3157.47, 31, 2797.69, 352.434, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3155.56, 31, 2792.15, 348.853, 0)

	spawnMobile("corellia", "stormtrooper", 400, -3425, 86, 3034, 90, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3368.29, 86, 2949.6, 170.619, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3420, 86, 3034, 90, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3430, 86, 3070, 0, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3430, 86, 3065, 0, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3430, 86, 3060, 0, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3430, 86, 3050, 0, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3381.8, 86, 3298.1, -79, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3719.35, 86, 3175.2, 326.578, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3595.9, 86, 3172.4, 152, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3619.55, 86, 3121.89, 113.533, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3612.9, 86, 3130.8, 95, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3726.46, 86, 3185.97, 120.721, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3754, 86, 3172, -30, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3774.9, 86, 3203.38, 281.283, 0)
	spawnMobile("corellia", "stormtrooper", 400, -3774.65, 86, 3204.62, 22.9721, 0)

	spawnMobile("corellia", "stormtrooper_medic", 400, -3112, 31, 2814, 168, 0)
	spawnMobile("corellia", "stormtrooper_medic", 400, -3386, 86, 2992, 354.507, 0)

	spawnMobile("corellia", "stormtrooper_sniper", 400, -3093, 31.0391, 2803, 347.01, 0)
	spawnMobile("corellia", "stormtrooper_sniper", 400, -3460.41, 78, 3112.21, 232.636, 0)
	spawnMobile("corellia", "stormtrooper_sniper", 400, -3430, 86, 3055, 0, 0)
	spawnMobile("corellia", "stormtrooper_sniper", 400, -3318.03, 86, 3230.13, 115.958, 0)
	spawnMobile("corellia", "stormtrooper_sniper", 400, -3326.35, 86, 3231.94, 52.9842, 0)
	spawnMobile("corellia", "stormtrooper_sniper", 400, -3602.47, 86, 3214.02, 44.6678, 0)
	spawnMobile("corellia", "stormtrooper_sniper", 400, -3613.06, 86, 3212.07, 47.9151, 0)
	spawnMobile("corellia", "stormtrooper_sniper", 400, -3715.75, 86.0549, 3169.75, 326.9, 0)

		--Cantina
	spawnMobile("corellia", "stormtrooper_commando", 400, 48.13, 0.1, 2.47, 292, 3005397)

		--Medical Center
	spawnMobile("corellia", "imperial_warrant_officer_ii", 400, -11.7, 0.18, -13.7, 90, 3375393)
	spawnMobile("corellia", "imperial_master_sergeant", 400, -9.9, 0.18, -13.1, 168, 3375393)
        

end

function corellia_kor_vella_gcw:spawnRebels()
               
               --Rebel base near starport
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -3003.5, 31.0, 2930.4, 180, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -3007.5, 31.0, 2930.4, 180, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -3003.5, 31.0, 2926.4, 180, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -3007.5, 31.0, 2926.4, 180, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -3003.5, 31.0, 2922.4, 180, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -3007.5, 31.0, 2922.4, 180, 0)

	spawnMobile("corellia", "crackdown_rebel_commando", 360, -2992.1, 30.9, 2913.5, -125, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -2992.1, 30.9, 2903.5, -55, 0)

	spawnMobile("corellia", "crackdown_rebel_commando", 360, 3.7, 0.3, 1.1, 0, 1331934)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, 3.7, 0.3, -2.3, 0, 1331934)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -3.4, -3.3, 5.2, 180, 1331936)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, 1.3, -6.7, -6.0, 45, 1331937)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, 7.3, -6.7, -6.0, -45, 1331937)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -5.1, -13.7, 7.5, 180, 1331939)
	spawnMobile("corellia", "crackdown_rebel_commando", 360, -1.9, -13.7, 7.5, 180, 1331939)
	spawnMobile("corellia", "rebel_medic", 360, -5.7, -13.8, 13.8, -33, 1331940)
	spawnMobile("corellia", "rebel_first_lieutenant", 360, 16.0, -13.8, 9.6, 180, 1331941)
	spawnMobile("corellia", "rebel_commander", 360, 17.0, -13.8, -2.5, -45, 1331941)
	spawnMobile("corellia", "rebel_commander", 360, 15.1, -11.5, -20.8, 0, 1331942)

	spawnMobile("corellia", "rebel_medic", 360, 0.2, 0.1, -5.1, 0, 1331946)
	spawnMobile("corellia", "rebel_major", 360, 4.6, 0.1, -2.1, -135, 1331948)

	spawnMobile("corellia", "crackdown_rebel_commando", 360, -0.2, 0.1, 1.3, -90, 1331953)
	spawnMobile("corellia", "rebel_commander", 360, 4.6, 0.1, -2.1, -135, 1331955)

	--rebels in the city
	spawnMobile("corellia", "rebel_trooper", 400, -3660.31, 86, 3103.26, 39.0513, 0)

	spawnMobile("corellia", "sentry_specforce", 400, -3773.66, 86, 3203.13, 22.9816, 0)

	spawnMobile("corellia", "rebel_trooper", 400, -3387, 86, 2960, 95, 0)
	spawnMobile("corellia", "rebel_trooper", 400, -3404.35, 74, 3347.14, 188, 0)

	spawnMobile("corellia", "rebel_first_lieutenant", 400, -3662.58, 86, 3090.82, 101, 0)
	spawnMobile("corellia", "rebel_first_lieutenant", 400, -3074, 31, 2825, 235, 0)
	spawnMobile("corellia", "rebel_first_lieutenant", 400, -3674.98, 86, 3104.95, 180, 0)

	spawnMobile("corellia", "rebel_staff_sergeant", 400, -3435, 86, 3034, 90, 0)
	spawnMobile("corellia", "rebel_staff_sergeant", 400, -3424, 86, 3018, 30, 0)
	spawnMobile("corellia", "rebel_staff_sergeant", 400, -3368.45, 86, 3242.5, 216, 0)
	spawnMobile("corellia", "rebel_staff_sergeant", 400, -3366, 86, 3232, 166, 0)
	spawnMobile("corellia", "rebel_staff_sergeant", 400, -3582, 86, 3143, 333, 0)

	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3621.27, 86, 3142.55, 28.2333, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3631.32, 86, 3136.46, 252.779, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3410.43, 86, 3142.78, 151.613, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3406.24, 86, 3137.43, 204.684, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3395.4, 86, 3017.79, 72.2994, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3395.16, 86, 3023.07, 57.428, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3344.8, 80.6241, 3240.26, 200.272, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3343.2, 81.762, 3240.54, 177.569, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3767.99, 86, 3180.85, 154.813, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3761.11, 86, 3190.17, 63.2948, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3411.64, 74, 3344.7, 179.356, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3416.53, 74, 3346.57, 326.897, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3157.47, 31, 2797.69, 352.434, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3155.56, 31, 2792.15, 348.853, 0)

	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3425, 86, 3034, 90, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3368.29, 86, 2949.6, 170.619, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3420, 86, 3034, 90, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3430, 86, 3070, 0, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3430, 86, 3065, 0, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3430, 86, 3060, 0, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3430, 86, 3050, 0, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3381.8, 86, 3298.1, -79, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3719.35, 86, 3175.2, 326.578, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3595.9, 86, 3172.4, 152, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3619.55, 86, 3121.89, 113.533, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3612.9, 86, 3130.8, 95, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3726.46, 86, 3185.97, 120.721, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3754, 86, 3172, -30, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3774.9, 86, 3203.38, 281.283, 0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400, -3774.65, 86, 3204.62, 22.9721, 0)

	spawnMobile("corellia", "rebel_medic", 400, -3112, 31, 2814, 168, 0)
	spawnMobile("corellia", "rebel_medic", 400, -3386, 86, 2992, 354.507, 0)

	spawnMobile("corellia", "sentry_specforce_sniper", 400, -3093, 31.0391, 2803, 347.01, 0)
	spawnMobile("corellia", "sentry_specforce_sniper", 400, -3460.41, 78, 3112.21, 232.636, 0)
	spawnMobile("corellia", "sentry_specforce_sniper", 400, -3430, 86, 3055, 0, 0)
	spawnMobile("corellia", "sentry_specforce_sniper", 400, -3318.03, 86, 3230.13, 115.958, 0)
	spawnMobile("corellia", "sentry_specforce_sniper", 400, -3326.35, 86, 3231.94, 52.9842, 0)
	spawnMobile("corellia", "sentry_specforce_sniper", 400, -3602.47, 86, 3214.02, 44.6678, 0)
	spawnMobile("corellia", "sentry_specforce_sniper", 400, -3613.06, 86, 3212.07, 47.9151, 0)
	spawnMobile("corellia", "sentry_specforce_sniper", 400, -3715.75, 86.0549, 3169.75, 326.9, 0)

		--Cantina
	spawnMobile("corellia", "crackdown_rebel_commando", 400, 48.13, 0.1, 2.47, 292, 3005397)

		--Medical Center
	spawnMobile("corellia", "rebel_warrant_officer_i", 400, -11.7, 0.18, -13.7, 90, 3375393)
	spawnMobile("corellia", "rebel_staff_sergeant", 400, -9.9, 0.18, -13.1, 168, 3375393)
end
