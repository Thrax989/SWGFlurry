local ObjectManager = require("managers.object.object_manager")

naboo_kaadara_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "naboo_kaadara_gcw"
}

registerScreenPlay("naboo_kaadara_gcw", true)

function naboo_kaadara_gcw:start()
	if (isZoneEnabled("naboo")) then
	if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function naboo_kaadara_gcw:spawnImperials()

--imperial garrison
	spawnMobile("naboo", "stormtrooper", 300, 0, 0.3, 7.7, 0, 1259939)
	spawnMobile("naboo", "stormtrooper", 300, 0, 0.3, 6.2, 0, 1259939)
	spawnMobile("naboo", "stormtrooper", 300, 3.7, 0.3, -2.0, 0, 1259940)
	spawnMobile("naboo", "stormtrooper_rifleman", 300, -3.7, -3.3, 4.9, 180, 1259942)
	spawnMobile("naboo", "stormtrooper_medic", 300, 7.8, -6.8, -5.8, -65, 1259943)
	spawnMobile("naboo", "stormtrooper_colonel", 300, 3.5, -6.8, -4.8, 0, 1259943)
	spawnMobile("naboo", "stormtrooper_sniper", 300, -3.7, -13.8, -18.5, 90, 1259944)
	spawnMobile("naboo", "stormtrooper_colonel", 300, -0.9, -13.7, -4.7, -45, 1259945)
	spawnMobile("naboo", "stormtrooper", 300, -5.1, -13.7, 7.5, 180, 1259945)
	spawnMobile("naboo", "stormtrooper", 300, -1.9, -13.7, 7.5, 180, 1259945)
	spawnMobile("naboo", "stormtrooper_medic", 300, -5.3, -13.8, 13.5, -30, 1259950)
	spawnMobile("naboo", "stormtrooper_squad_leader", 300, 14.7, -13.8, 5.2, 0, 1260045)
	spawnMobile("naboo", "stormtrooper", 300, 14.7, -13.8, 8.0, 0, 1260045)
	spawnMobile("naboo", "stormtrooper", 300, 14.7, -13.8, 9.8, 0, 1260045)
	spawnMobile("naboo", "imperial_commander", 600, 15.1, -11.5, -20.4, 0, 1260046)

	spawnMobile("naboo", "stormtrooper", 300, 3.7, 0.1, 2.1, -90, 1260051)
	spawnMobile("naboo", "stormtrooper", 300, 0, 0.1, -1.9, 0, 1260050)
	spawnMobile("naboo", "stormtrooper", 300, 0, 0.1, -1.9, 0, 1260057)
	spawnMobile("naboo", "imperial_colonel", 300, 5.3, 0.1, 4.5, -150, 1260058)

	spawnMobile("naboo", "stormtrooper", 300, 5384.5, -197.2, 6455, -97, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5384.5, -197.2, 6458, -97, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5381.5, -197.2, 6454.5, -97, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5381.5, -197.2, 6457.5, -97, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5378.5, -197.2, 6454, -97, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5378.5, -197.2, 6457, -97, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5375.5, -197.2, 6453.5, -97, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5375.5, -197.2, 6456.5, -97, 0)

	--imperials in the city
	spawnMobile("naboo", "stormtrooper", 300, 5290.5, -192, 6582.2, -90, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5294.5, -192, 6582.2, -90, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5298.5, -192, 6582.2, -90, 0)

	spawnMobile("naboo", "stormtrooper", 300, math.random(20) + 5189.5, -192, math.random(28) + 6624.5, math.random(360), 0)
	spawnMobile("naboo", "stormtrooper_medic", 300, math.random(20) + 5189.5, -192, math.random(28) + 6624.5, math.random(360), 0)
	spawnMobile("naboo", "stormtrooper_rifleman", 300, math.random(20) + 5189.5, -192, math.random(28) + 6624.5, math.random(360), 0)
	spawnMobile("naboo", "stormtrooper", 300, math.random(20) + 5189.5, -192, math.random(20) + 6624.5, math.random(360), 0)
	spawnMobile("naboo", "stormtrooper", 300, 29.9, 0.3, -2, -79, 1741439)
	spawnMobile("naboo", "stormtrooper", 300, 18.6, 0.3, 9.5, -90, 1741439)
	spawnMobile("naboo", "stormtrooper", 300, -7.2, 0.3, -3.2, -111, 1741443)
	spawnMobile("naboo", "stormtrooper", 300, -18.4, 0.3, -6.6, -101, 1741443)

	spawnMobile("naboo", "stormtrooper", 300, 5095.7, -192, 6744.4, 136, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5105.6, -192, 6733.9, 136, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5137.7, -192, 6692.9, 136, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5148.6, -192, 6682.4, 136, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5023.0, -192, 6714.8, -40, 0)
	spawnMobile("naboo", "stormtrooper", 300, 5011.7, -192, 6728.2, -40, 0)
	spawnMobile("naboo", "stormtrooper", 300, 4985.0, -192, 6763.0, 88, 0)

end

function naboo_kaadara_gcw:spawnRebels()

--rebel garrison
	spawnMobile("naboo", "rebel_trooper", 300, 0, 0.3, 7.7, 0, 1259939)
	spawnMobile("naboo", "rebel_trooper", 300, 0, 0.3, 6.2, 0, 1259939)
	spawnMobile("naboo", "rebel_trooper", 300, 3.7, 0.3, -2.0, 0, 1259940)
	spawnMobile("naboo", "rebel_commando", 300, -3.7, -3.3, 4.9, 180, 1259942)
	spawnMobile("naboo", "rebel_medic", 300, 7.8, -6.8, -5.8, -65, 1259943)
	spawnMobile("naboo", "rebel_first_lieutenant", 300, 3.5, -6.8, -4.8, 0, 1259943)
	spawnMobile("naboo", "specforce_marine", 300, -3.7, -13.8, -18.5, 90, 1259944)
	spawnMobile("naboo", "rebel_first_lieutenant", 300, -0.9, -13.7, -4.7, -45, 1259945)
	spawnMobile("naboo", "rebel_trooper", 300, -5.1, -13.7, 7.5, 180, 1259945)
	spawnMobile("naboo", "rebel_trooper", 300, -1.9, -13.7, 7.5, 180, 1259945)
	spawnMobile("naboo", "rebel_medic", 300, -5.3, -13.8, 13.5, -30, 1259950)
	spawnMobile("naboo", "rebel_major", 300, 14.7, -13.8, 5.2, 0, 1260045)
	spawnMobile("naboo", "rebel_trooper", 300, 14.7, -13.8, 8.0, 0, 1260045)
	spawnMobile("naboo", "rebel_trooper", 300, 14.7, -13.8, 9.8, 0, 1260045)
	spawnMobile("naboo", "rebel_staff_sergeant", 600, 15.1, -11.5, -20.4, 0, 1260046)

	spawnMobile("naboo", "rebel_trooper", 300, 3.7, 0.1, 2.1, -90, 1260051)
	spawnMobile("naboo", "rebel_trooper", 300, 0, 0.1, -1.9, 0, 1260050)
	spawnMobile("naboo", "rebel_trooper", 300, 0, 0.1, -1.9, 0, 1260057)
	spawnMobile("naboo", "rebel_first_lieutenant", 300, 5.3, 0.1, 4.5, -150, 1260058)

	spawnMobile("naboo", "rebel_trooper", 300, 5384.5, -197.2, 6455, -97, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5384.5, -197.2, 6458, -97, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5381.5, -197.2, 6454.5, -97, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5381.5, -197.2, 6457.5, -97, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5378.5, -197.2, 6454, -97, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5378.5, -197.2, 6457, -97, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5375.5, -197.2, 6453.5, -97, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5375.5, -197.2, 6456.5, -97, 0)

	--rebels in the city
	spawnMobile("naboo", "rebel_trooper", 300, 5290.5, -192, 6582.2, -90, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5294.5, -192, 6582.2, -90, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5298.5, -192, 6582.2, -90, 0)

	spawnMobile("naboo", "rebel_trooper", 300, math.random(20) + 5189.5, -192, math.random(28) + 6624.5, math.random(360), 0)
	spawnMobile("naboo", "rebel_medic", 300, math.random(20) + 5189.5, -192, math.random(28) + 6624.5, math.random(360), 0)
	spawnMobile("naboo", "rebel_staff_sergeant", 300, math.random(20) + 5189.5, -192, math.random(28) + 6624.5, math.random(360), 0)
	spawnMobile("naboo", "rebel_trooper", 300, math.random(20) + 5189.5, -192, math.random(20) + 6624.5, math.random(360), 0)
	spawnMobile("naboo", "rebel_trooper", 300, 29.9, 0.3, -2, -79, 1741439)
	spawnMobile("naboo", "rebel_trooper", 300, 18.6, 0.3, 9.5, -90, 1741439)
	spawnMobile("naboo", "rebel_trooper", 300, -7.2, 0.3, -3.2, -111, 1741443)
	spawnMobile("naboo", "rebel_trooper", 300, -18.4, 0.3, -6.6, -101, 1741443)

	spawnMobile("naboo", "rebel_trooper", 300, 5095.7, -192, 6744.4, 136, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5105.6, -192, 6733.9, 136, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5137.7, -192, 6692.9, 136, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5148.6, -192, 6682.4, 136, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5023.0, -192, 6714.8, -40, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 5011.7, -192, 6728.2, -40, 0)
	spawnMobile("naboo", "rebel_trooper", 300, 4985.0, -192, 6763.0, 88, 0)
end
