EndorgoraxScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("EndorgoraxScreenPlay", true)

function EndorgoraxScreenPlay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles()
	end
end

function EndorgoraxScreenPlay:spawnMobiles()
spawnMobile("endor", "gorax_elder", 3600, 3605.63, 202.415, 5100.26, 37, 0)
spawnMobile("endor", "gorax_elder", 3600, 3762.72, 198.491, 5596.5, 168, 0)
spawnMobile("endor", "gorax_elder", 3600, 4326.17, 197.822, 5665.12, 206, 0)
spawnMobile("endor", "gorax_elder", 3600, 5520.37, 27.1577, 4747.5, 333, 0)
spawnMobile("endor", "gorax_elder", 3600, 4347.61, 2.23196, 2952.6, 135, 0)
spawnMobile("endor", "gorax_elder", 3600, 3639.09, 11.1055, 477.889, 258, 0)
spawnMobile("endor", "gorax_elder", 3600, 1326.19, 52.8642, -699.071, 39, 0)
spawnMobile("endor", "gorax_elder", 3600, 1493.24, 5, -3123.97, 122, 0)
spawnMobile("endor", "gorax_elder", 3600, 2794.38, 25.316, -4037.45, 45, 0)
spawnMobile("endor", "gorax_elder", 3600, 5828.97, 49.7974, -4889.72, 225, 0)
spawnMobile("endor", "gorax_elder", 3600, 7211.69, 16.5274, -6096.5, 139, 0)
spawnMobile("endor", "gorax_elder", 3600, 4114.8, 17.9066, -7255.57, 225, 0)
spawnMobile("endor", "gorax_elder", 3600, 3076.88, 12.1153, -5532.99, 0, 0)
spawnMobile("endor", "gorax_elder", 3600, 1792.88, 2.73443, -5124.92, 71, 0)
spawnMobile("endor", "gorax_elder", 3600, 184.421, 2.12167, -4859.01, 225, 0)
spawnMobile("endor", "gorax_elder", 3600, -1012.61, 26.6225, -5722, 199, 0)
spawnMobile("endor", "gorax_elder", 3600, -3886.48, 4.01108, -4481.92, 333, 0)
spawnMobile("endor", "gorax_elder", 3600, -5419.42, 4.65788, -5102.42, 213, 0)
spawnMobile("endor", "gorax_elder", 3600, -5779.89, 26.8482, -3693.38, 48, 0)
spawnMobile("endor", "gorax_elder", 3600, -4917.48, 97.8148, -2417.92, 225, 0)
spawnMobile("endor", "gorax_elder", 3600, -6267.1, 7.01668, 671.068, 153, 0)
spawnMobile("endor", "gorax_elder", 3600, -6496.51, 9.94173, 3577.26, 26, 0)
spawnMobile("endor", "gorax_elder", 3600, -4122.55, 20.9869, 5053.71, 307, 0)
spawnMobile("endor", "gorax_elder", 3600, -1846.56, 5.51344, 5287, 90, 0)
spawnMobile("endor", "gorax_elder", 3600, -487.81, 203.764, 3081.98, 35, 0)
end
