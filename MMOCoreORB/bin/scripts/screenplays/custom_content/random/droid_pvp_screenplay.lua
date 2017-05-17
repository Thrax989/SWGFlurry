droid_pvp_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "droid_pvp_screenplay ",
}

registerScreenPlay("droid_pvp_screenplay", true)

function droid_pvp_screenplay:start()
	if (isZoneEnabled("kaas")) then
		self:spawnMobiles()
	end
end

function droid_pvp_screenplay:spawnMobiles()
       spawnMobile("kaas", "droid_pvp", 300, -5100,80,-2287,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5103,80,-2287,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5106,80,-2287,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5128,80,-2287,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5131,80,-2287,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5134,80,-2287,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2294,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2297,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2300,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5159,80,-2310,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5156,80,-2310,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5153,80,-2310,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5142,80,-2319,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5142,80,-2322,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5142,80,-2325,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5092,80,-2335,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5092,80,-2332,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5092,80,-2329,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5092,80,-2301,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5092,80,-2298,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5092,80,-2295,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5062,80,-2281,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5062,80,-2278,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5062,80,-2275,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5067,80,-2269,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5070,80,-2269,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5073,80,-2269,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5143,80,-2135,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5140,80,-2135,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5137,80,-2135,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5092,80,-2141,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5089,80,-2141,15, 0)
       spawnMobile("kaas", "droid_pvp", 300, -5086,80,-2141,15, 0)
       spawnMobile("kaas", "empguard_pvp", 1800, -5050,80,-2417,15, 0)
       spawnMobile("kaas", "guard_pvp", 1800, -5191,80,-2417,15, 0)
       spawnMobile("kaas", "imp_pvp", 1800, -5071,80,-2287,15, 0)
       spawnMobile("kaas", "reb_pvp", 1800, -5156,80,-2287,15, 0)
end
