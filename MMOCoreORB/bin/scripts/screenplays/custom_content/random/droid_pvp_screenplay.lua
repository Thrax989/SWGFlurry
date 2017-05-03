droid_pvp_screenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "droid_pvp_screenplay ",

}

registerScreenPlay("droid_pvp_screenplay", true)

function droid_pvp_screenplay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
	end
end

functiondroid_pvp_screenplay:spawnMobiles()
  	spawnMobile("kaas", "droid_pvp", 300, -5186,80,-2190,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5183,80,-2193,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5181,80,-2195,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5176,80,-2195,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2195,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5170,80,-2195,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5166,80,-2194,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5162,80,-2194,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5158,80,-2194,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5155,80,-2194,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2290,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2293,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2296,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2299,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5173,80,-2302,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5170,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5167,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5164,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5161,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5158,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5155,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5152,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5149,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5146,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5143,80,-2310,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5073,80,-2270,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5070,80,-2210,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5067,80,-2210,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5063,80,-2282,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5063,80,-2279,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5063,80,-2276,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5075,80,-2287,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5072,80,-2287,15, 0)
	spawnMobile("kaas", "droid_pvp", 300, -5069,80,-2287,15, 0)
	
end