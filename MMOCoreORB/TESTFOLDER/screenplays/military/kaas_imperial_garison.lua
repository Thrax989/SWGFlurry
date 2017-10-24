kaas_imperial_garison = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("kaas_imperial_garison", true)
local ObjectManager = require("managers.object.object_manager")

function kaas_imperial_garison:start()
	if (isZoneEnabled("kaas")) then
		self:spawnMobiles()
	end
end

function kaas_imperial_garison:spawnMobiles()

	-- Outside Starport / Teh Cloaner
	spawnMobile("kaas", "at_st", 300, -5125.9, 80.0, -2257.9, 0, 0)
	spawnMobile("kaas", "at_st", 300, -5108.5, 80.0, -2257.9, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5123.9, 80.0, -2218.0, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5114.1, 80.0, -2217.7, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5111.6, 80.0, -2285.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5122.6, 80.0, -2285.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5080.7, 80.0, -2282.6, -90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5080.7, 80.0, -2275.7, -90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5145.8, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5152.1, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5160.6, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5167.4, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5129.4, 84.0, -2221.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5108.9, 84.0, -2221.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5082.5, 80.0, -2272.0, -90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5082.5, 80.0, -2267.8, -90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5109.6, 80.0, -2233.4, 179, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5131.2, 80.0, -2233.4, 179, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5147.8, 80.0, -2265.7, 90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5149.2, 80.0, -2224.3, 179, 0)
	spawnMobile("kaas", "at_st", 300, -5119.9, 80.0, -2192.4, 179, 0)

	-- Inside Police Station
	spawnMobile("kaas", "stormtrooper_squad_leader", 300, -0.0, 2.0, 3.9, 0, 35791428)
	spawnMobile("kaas", "stormtrooper", 300, -0.0, 1.0, -21.7, 0, 35791433)
	spawnMobile("kaas", "stormtrooper_rifleman", 300, 14.2, 1.0, -1.4, 0, 35791431)
	spawnMobile("kaas", "stormtrooper_rifleman", 300, 20.2, 1.0, 8.1, -90, 35791428)
	spawnMobile("kaas", "stormtrooper_rifleman", 300, -20.2, 1.0, 8.1, 90, 35791428)
	spawnMobile("kaas", "imperial_private", 300, -18.5, 1.0, 20.2, 0, 35791430)
	spawnMobile("kaas", "stormtrooper_sniper", 300, -20.5, 1.0, -11.5, 90, 35791428)
	spawnMobile("kaas", "stormtrooper_bombardier", 300, 20.6, 1.0, -11.5, -90, 35791428)
	spawnMobile("kaas", "stormtrooper_bombardier", 300, -17.6, 1.0, -4.6, 0, 35791435)

	spawnMobile("kaas", "sentry_stormtrooper", 300, 2.7, 7.0, -0.4, -1, 35791436)
	spawnMobile("kaas", "sentry_stormtrooper", 300, 9.9, 7.0, -4.4, 0, 35791436)
	spawnMobile("kaas", "sentry_stormtrooper", 300, 7.8, 7.0, -15.2, 0, 35791436)
	spawnMobile("kaas", "sentry_stormtrooper", 300, -9.8, 7.0, -13.1, -121, 35791436)
	spawnMobile("kaas", "sentry_stormtrooper", 300, -4.8, 7.0, -4.7, -131, 35791436)
	spawnMobile("kaas", "sentry_stormtrooper", 300, 3.1, 7.0, -11.3, 121, 35791436)
	spawnMobile("kaas", "sentry_stormtrooper", 300, -0.3, 7.0, -10.20, 123, 35791436)

	-- Temple Entrance Guards

	spawnMobile("kaas", "at_st", 300, -5097.8, 80.0, -2362.2, -134, 0)
	spawnMobile("kaas", "at_st", 300, -5073.8, 80.0, -2346.1, -90, 0)
	spawnMobile("kaas", "at_st", 300, -5136.6, 80.0, -2358.5, 107, 0)
	spawnMobile("kaas", "at_st", 300, -5160.7, 80.0, -2340.2, 131, 0)
	spawnMobile("kaas", "sentry_stormtrooper", 300, -5136.6, 80.0, -2376.7, 0, 0)
	spawnMobile("kaas", "sentry_stormtrooper", 300, -5126.2, 80.0, -2376.7, 0, 0)
	spawnMobile("kaas", "sentry_stormtrooper", 300, -5105.2, 80.0, -2376.7, 0, 0)

  -- Dark Temple Interior
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -18.8, -2.0, 11.8, 0, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 2.0, -17.0, -18.8, 0, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 18.8, -26.5, 2.3, 0, 35791397)
--	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -0.1, -37.3, 15.2, -179, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 11.7, -37.3, 0.0, -90, 35791397)
--	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -11.7, -37.3, 15.2, 90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 16.3, -30.3, 16.6, -140, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 16.6, -21.3, -16.7, -44, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -16.7, -11.3, -16.8, 45, 35791397)
--	spawnMobile("kaas", "jerec", 900, 0.2, -37.3, -24.2, 0, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 20.3, -1.3, 11.2, 90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 20.4, -1.3, -11.0, -90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 0.2, -1.3, -21.0, 0, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -0.1, -1.3, 20.5, -179, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -20.9, -1.3, -11.0, 90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -5120.9, -81.3, -2406.3, 0, 0)

-- Det HQ
	spawnMobile("kaas", "dark_trooper", 200, 2.6, -6.8, -4.9, 90, 35791451)
	spawnMobile("kaas", "dark_trooper", 200, 6.9, -6.8, -4.9, -90, 35791451)
	spawnMobile("kaas", "imperial_inquisitor", 200, 4.5, -6.8, -5.9, 0, 35791451)
	spawnMobile("kaas", "imperial_moff", 200, -0.3, -13.7, -3.6, -90, 35791453)
	spawnMobile("kaas", "imperial_general", 200, -6.8, -13.7, -0.2, 90, 35791453)
	spawnMobile("kaas", "imperial_general", 200, -6.8, -13.7, -7.0, 90, 35791453)
	spawnMobile("kaas", "novatrooper", 200, -6.8, -13.7, -13.3, 90, 35791453)
	spawnMobile("kaas", "novatrooper", 200, -6.8, -13.7, 5.7, 90, 35791453)
	spawnMobile("kaas", "imperial_inquisitor", 200, -6.4, -13.7, -3.7, 90, 35791453)
	spawnMobile("kaas", "imperial_medic", 200, -7.6, -13.8, 12.0, 90, 35791454)
	spawnMobile("kaas", "novatrooper", 200, -1.3, -13.7, 13.9, -90, 35791454)
	spawnMobile("kaas", "novatrooper", 200, 1.9, -13.7, 13.9, -90, 35791454)
	spawnMobile("kaas", "novatrooper", 200, 3.5, -13.7, 13.9, -90, 35791454)
	spawnMobile("kaas", "novatrooper", 200, 0.7, -13.7, 10.2, -90, 35791454)
	spawnMobile("kaas", "novatrooper", 200, 3.0, -13.7, 10.2, -90, 35791454)
	spawnMobile("kaas", "novatrooper", 200, 5.6, -13.7, 10.2, -90, 35791454)
	spawnMobile("kaas", "imperial_inquisitor", 200, 16.8, -13.7, 12.5, -149, 35791455)
	spawnMobile("kaas", "imperial_inquisitor", 200, 13.8, -13.7, 9.3, 56, 35791455)
	spawnMobile("kaas", "imperial_inquisitor", 200, 16.8, -13.7, 8.1, -42, 35791455)
--	spawnMobile("kaas", "emperors_hand", 200, 14.8, -13.8, -21.7, 0, 35791456)
	spawnMobile("kaas", "dark_trooper", 200, 13.2, -13.8, -14.3, 0, 35791456)
	spawnMobile("kaas", "dark_trooper", 200, 17.8, -13.8, -14.2, 0, 35791456)

-- Research Facility
	spawnMobile("kaas", "imperial_noncom", 200, 3.4, -12.0, 30.3, 179, 35791462)
	spawnMobile("kaas", "imperial_captain", 200, 19.4, -12.0, 51.9, 179, 35791462)
	spawnMobile("kaas", "imperial_lieutenant_colonel", 200, 25.4, -12.0, 43.7, 0, 35791462)
	spawnMobile("kaas", "imperial_commander", 200, 10.2, -12.0, 47.1, -90, 35791462)
	spawnMobile("kaas", "imperial_lieutenant_general", 200, 3.6, -12.0, 65.4, 179, 35791462)
	spawnMobile("kaas", "imperial_major", 200, 9.8, -12.0, 62.8, 90, 35791462)
	spawnMobile("kaas", "imperial_corporal", 200, -2.7, -12.0, 63.2, -90, 35791462)
	spawnMobile("kaas", "imperial_first_lieutenant", 200, -12.5, -12.0, 51.4, 179, 35791462)
	spawnMobile("kaas", "imperial_stealth_operative", 200, -12.6, -12.0, 41.0, 179, 35791462)
	spawnMobile("kaas", "sentry_stormtrooper_rifleman", 200, -0.3, -12.0, 37.5, 179, 35791462)
	spawnMobile("kaas", "sentry_stormtrooper_rifleman", 200, 6.7, -12.0, 37.5, 179, 35791462)
	spawnMobile("kaas", "sentry_stormtrooper_rifleman", 200, 25.1, -12.0, 52.7, -128, 35791462)
	spawnMobile("kaas", "sentry_stormtrooper_rifleman", 200, -1.5, -12.0, 68.4, 143, 35791462)
	spawnMobile("kaas", "sentry_stormtrooper_rifleman", 200, -19.6, -12.0, 54.0, 130, 35791462)
	spawnMobile("kaas", "imperial_battle_droid", 200, -65.7, -20.0, 51.4, 90, 35791464)
	spawnMobile("kaas", "imperial_battle_droid", 200, -61.1, -20.0, 48.2, 90, 35791464)
	spawnMobile("kaas", "imperial_battle_droid", 200, -67.9, -20.0, 44.5, 90, 35791464)
	spawnMobile("kaas", "imperial_battle_droid", 200, -54.5, -20.0, 38.0, 0, 35791464)
	spawnMobile("kaas", "imperial_battle_droid", 200, -66.1, -20.0, 57.7, 179, 35791464)
	spawnMobile("kaas", "imperial_inquisitor", 200, -49.7, -20.0, 80.9, -90, 35791466)
	spawnMobile("kaas", "imperial_inquisitor", 200, -53.5, -20.0, 86.1, -139, 35791466)
	spawnMobile("kaas", "imperial_inquisitor", 200, -51.7, -20.0, 77.2, -57, 35791466)
	spawnMobile("kaas", "sentry_imperial_major", 200, -56.3, -20.0, 87.4, -172, 35791466)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, -71.0, -20.0, 80.7, 90, 35791466)
	spawnMobile("kaas", "imperial_inquisitor", 200, -74.9, -20.0, 12.9, -90, 35791465)
	spawnMobile("kaas", "imperial_stealth_operative", 200, -65.1, -20.0, 18.4, 0, 35791465)
	spawnMobile("kaas", "imperial_stealth_operative", 200, -60.6, -20.0, 18.4, 0, 35791465)
--	spawnMobile("kaas", "emperors_hand", 200, -53.9, -20.0, 12.8, 90, 35791465)

	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 22.9, -179, 35791471)

	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 19.1, 0, 35791471)

	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 13.0, -179, 35791471)

	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 9.1, 0, 35791471)

	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 3.0, -179, 35791471)

	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, -1.1, 0, 35791471)

	spawnMobile("kaas", "imperial_sergeant_major", 200, 38.2, -12.0, 0.4, 90, 35791471)
	spawnMobile("kaas", "imperial_sergeant_major", 200, 38.2, -12.0, 10.8, 90, 35791471)
	spawnMobile("kaas", "imperial_sergeant_major", 200, 38.2, -12.0, 21.1, 90, 35791471)

	spawnMobile("kaas", "imperial_noncom", 200, -21.3, -20.0, 8.1, 179, 35791473)
	spawnMobile("kaas", "imperial_noncom", 200, -12.1, -20.0, 8.1, 179, 35791473)
	spawnMobile("kaas", "imperial_noncom", 200, -11.7, -20.0, -2.7, 0, 35791473)
	spawnMobile("kaas", "imperial_noncom", 200, -21.3, -20.0, -2.7, 0, 35791473)

	spawnMobile("kaas", "sentry_stormtrooper_rifleman", 200, -30.3, -20.0, 27.3, 0, 35791475)
	spawnMobile("kaas", "sentry_stormtrooper_rifleman", 200, -30.3, -20.0, 58.3, 0, 35791475)
	spawnMobile("kaas", "sentry_stormtrooper_rifleman", 200, -30.3, -20.0, 82.3, 0, 35791475)

	spawnMobile("kaas", "imperial_major", 200, -37.5, -20.0, 101.1, -90, 35791476)
	spawnMobile("kaas", "dark_trooper", 200, -27.9, -20.0, 106.2, -179, 35791476)
	spawnMobile("kaas", "dark_trooper", 200, -17.9, -20.0, 106.2, -179, 35791476)
	spawnMobile("kaas", "imperial_major", 200, -7.6, -20.0, 100.7, 90, 35791476)

	spawnMobile("kaas", "imperial_medic", 200, -2.5, -20.0, 64.8, -179, 35791478)

	spawnMobile("kaas", "imperial_medic", 200, 35.6, -20.0, 146.2, 0, 35791470)
	spawnMobile("kaas", "imperial_battle_droid", 200, 35.5, -20.0, 121.9, 179, 35791470)
	spawnMobile("kaas", "imperial_battle_droid", 200, 30.3, -20.0, 130.3, 179, 35791470)
	spawnMobile("kaas", "imperial_battle_droid", 200, 40.7, -20.0, 130.1, 179, 35791470)

	spawnMobile("kaas", "imperial_scientist", 200, 72.5, -12.0, 84.0, 0, 35791468)
	spawnMobile("kaas", "imperial_scientist", 200, 65.0, -12.0, 82.1, -179, 35791468)
	spawnMobile("kaas", "imperial_scientist", 200, 57.7, -12.0, 81.2, -179, 35791468)
	spawnMobile("kaas", "imperial_scientist", 200, 49.4, -12.0, 83.6, 0, 35791468)

	spawnMobile("kaas", "captured_jedi", 200, 49.8, -12.0, 64.4, 179, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 49.8, -12.0, 53.4, 0, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 56.8, -12.0, 64.4, 179, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 56.8, -12.0, 53.4, 0, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 64.8, -12.0, 64.4, 179, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 64.8, -12.0, 53.4, 0, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 72.8, -12.0, 64.4, 179, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 72.8, -12.0, 52.4, 0, 35791469)

	spawnMobile("kaas", "imperial_inquisitor", 200, 71.4, -12.0, 59.4, 0, 35791469)
	spawnMobile("kaas", "imperial_inquisitor", 200, 65.1, -12.0, 58.1, 168, 35791469)
	spawnMobile("kaas", "imperial_inquisitor", 200, 55.6, -12.0, 59.3, 21, 35791469)
	spawnMobile("kaas", "imperial_inquisitor", 200, 50.1, -12.0, 58.0, 179, 35791469)


	local pTrigger = spawnMobile("kaas", "prophet_of_the_dark_side", 3600, 11.7, -37.3, 0.0, -90, 35791397)
	if (pTrigger ~= nil ) then	
        createObserver(OBJECTDESTRUCTION, "kaas_imperial_garison", "notifyTriggerDead", pTrigger)
	end

	writeData("kaas_imperial_garison:spawnState",0)
        return 0	
end

function kaas_imperial_garison:notifyTriggerDead(pTrigger, pPlayer)

        local pBoss = spawnMobile("kaas", "jerec", 0, 0.2, -37.3, -24.2, 0, 35791397)
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("kaas_imperial_garison:spawnState", 1)
		writeData("jerecboss", oBoss:getObjectID())
			spatialChat(pBoss, "I have murdered thousands, and do you know that my only regret is that I could not see their blood?")
          createObserver(DAMAGERECEIVED,"kaas_imperial_garison","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "kaas_imperial_garison", "notifyBossDead", pBoss)
		createEvent(1800000, "kaas_imperial_garison", "despawnBoss", pBoss)

		end)
	return 0
end

function kaas_imperial_garison:notifyBossDead(pBoss, pPlayer)
	writeData("kaas_imperial_garison:spawnState", 0)
	return 0
end


function kaas_imperial_garison:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("jerecboss"),true)
	writeData("kaas_imperial_garison:spawnState", 0)
	return 0
end

function kaas_imperial_garison:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if ( boss ~= nil ) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 0.2
		local y1 = -24.2
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY()

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 45

		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "RUN FROM YOUR DEATH! The power of the Dark Side will heal my wounds.")

--			boss:healDamage(pBoss, 0, 2000000)
--			boss:healDamage(pBoss, 3, 2000000)
--			boss:healDamage(pBoss, 6, 2000000)
--			boss:setPvpStatusBitmask(0)
			forcePeace(pBoss)
--			boss:setOptionsBitmask(128)

			createEvent(3500, "kaas_imperial_garison", "resetScreenplayStatus", pPlayer)
		end

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("kaas_imperial_garison:spawnState") == 1) then
			spatialChat(pBoss, "To my side apprentices!")
			writeData("kaas_imperial_garison:spawnState",2)
			local pJos = spawnMobile("kaas", "sariss", 0, 11.7, -37.3, 0.0, -90, 35791397)
			ObjectManager.withCreatureObject(pJos, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
				spatialChat(pJos, "At your command my lord!")

			end

		if (((bossHealth <= (bossMaxHealth *0.89)) or (bossAction <= (bossMaxAction * 0.89)) or (bossMind <= (bossMaxMind *0.89))) and readData("kaas_imperial_garison:spawnState") == 2) then
			spatialChat(pBoss, "Once again, to my side!")
			writeData("kaas_imperial_garison:spawnState", 3)
				local pJosTwo = spawnMobile("kaas", "yun", 0, 0.2, -37.3, -24.2, 0, 35791397)
			ObjectManager.withCreatureObject(pJosTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
				spatialChat(pJosTwo, "In all my years I've only known Dark Jedi. Never one from the light side.")

			end

		if (((bossHealth <= (bossMaxHealth *0.85)) or (bossAction <= (bossMaxAction * 0.85)) or (bossMind <= (bossMaxMind *0.85))) and readData("kaas_imperial_garison:spawnState") == 3) then
			spatialChat(pBoss, "Prophets of the dark side, kill these intruders!")
			writeData("kaas_imperial_garison:spawnState", 4)
				local pJosThree = spawnMobile("kaas", "prophet_of_the_dark_side", 0, 0.2, -37.3, -24.2, 0, 35791397)
			ObjectManager.withCreatureObject(pJosThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)
				spatialChat(pJosThree, "Your death has been foreseen!")

		end
		if (((bossHealth <= (bossMaxHealth *0.84)) or (bossAction <= (bossMaxAction * 0.84)) or (bossMind <= (bossMaxMind *0.84))) and readData("kaas_imperial_garison:spawnState") == 4) then
			spatialChat(pBoss, "Your efforts are pointless.")
			writeData("kaas_imperial_garison:spawnState", 5)
				local pJosFour = spawnMobile("kaas", "prophet_of_the_dark_side", 0, 11.7, -37.3, 0.0, -90, 35791397)
			ObjectManager.withCreatureObject(pJosFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
				spatialChat(pJosFour, "The darkness shall consume the light.")

		end
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("kaas_imperial_garison:spawnState") == 5) then
			spatialChat(pBoss,"Kill your friends, begin your journey to the Dark Side and I will show you true power!")
			writeData("kaas_imperial_garison:spawnState", 6)
				local pJosFive = spawnMobile("kaas", "prophet_of_the_dark_side", 0, 0.2, -37.3, -24.2, 0, 35791397)
			ObjectManager.withCreatureObject(pJosFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
				spatialChat(pJosFive, "Fear, I sense much of it in you.")

		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("kaas_imperial_garison:spawnState") == 6) then
			spatialChat(pBoss,"A pity, then you will die.")
			writeData("kaas_imperial_garison:spawnState", 7)
				local pJosSix = spawnMobile("kaas", "prophet_of_the_dark_side", 0, 11.7, -37.3, 0.0, -90, 35791397)
			ObjectManager.withCreatureObject(pJosSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)
			end)
				spatialChat(pJosSix, "You're an angry one, aren't you.")

		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("kaas_imperial_garison:spawnState") == 7) then
			spatialChat(pBoss,"The Darkside of the Force will replenish me, come to my aid!")
			writeData("kaas_imperial_garison:spawnState", 8)
				local pJosSeven = spawnMobile("kaas",  "prophet_of_the_dark_side", 0, 0.2, -37.3, -24.2, 0, 35791397)
			ObjectManager.withCreatureObject(pJosSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
				spatialChat(pJosSeven, "I can feel your anger.")


		end

		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("kaas_imperial_garison:spawnState") == 8) then
			spatialChat(pBoss, "Strike me down! Kill me and your journey to the Dark Side can begin!")

		end


		end

	return 0




end

function kaas_imperial_garison:resetScreenplayStatus(pPlayer)
	writeData("kaas_imperial_garison:spawnState", 1)
end

function kaas_imperial_garison:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return
	end

	local creature = LuaCreatureObject(pPlayer)
	creature:teleport( -4624.7, 78.9, 6677.5, 0)


end
