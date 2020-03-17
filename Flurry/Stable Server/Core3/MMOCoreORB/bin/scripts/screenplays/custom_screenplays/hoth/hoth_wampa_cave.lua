
WampaCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "WampaCaveScreenPlay",
}
 
registerScreenPlay("WampaCaveScreenPlay", true)
 
function WampaCaveScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function WampaCaveScreenPlay:spawnSceneObjects()

	



end


function WampaCaveScreenPlay:spawnMobiles()
	
	spawnMobile("hoth", "wampa", 300, 9.7, -40.5, -77, -20, 6452965)
	spawnMobile("hoth", "wampa", 300, -8.5, -40.4, -75.8, 32, 6452965)
	spawnMobile("hoth", "wampa", 300, 47.3, -47, -56.8, -116, 6452966)
	spawnMobile("hoth", "wampa", 300, 63.3, -56.8, -178.3, -48, 6452967)
	spawnMobile("hoth", "wampa", 300, -5.9, -45, -140.2, 33, 6452967)
	spawnMobile("hoth", "wampa", 300, -5.6, -64.2, -230.2, -57, 6452969)
	spawnMobile("hoth", "wampa", 300, -15.2, -65.6, -215, 22, 6452969)
	spawnMobile("hoth", "wampa", 300, -94.8, -69.6, -94.5, 171, 6452970)
	spawnMobile("hoth", "wampa", 300, -66.1, -68.3, -106.7, 38, 6452971)
	spawnMobile("hoth", "wampa", 300, -36.8, -71.1, -84.6, -123, 6452971)
	spawnMobile("hoth", "wampa", 300, -42.2, -69.8, -108.7, -49, 6452971)
	spawnMobile("hoth", "wampa", 300, -76.7, -99.4, -158.7, 7, 6452970)
	spawnMobile("hoth", "wampa", 300, -87.8, -103.4, -122.7, -151, 6452973)
	spawnMobile("hoth", "wampa", 300, -91.6, -102, -141.4, 49, 6452970)
	spawnMobile("hoth", "wampa", 300, -64.9, -69.9, -170.8, 129, 6452970)
	spawnMobile("hoth", "wampa", 300, -66.1, -70, -195.8, 50, 6452970)
	spawnMobile("hoth", "giant_wampa", 3600, -93.1, -100.9, -99.6, 168, 6452973)
	

	spawnMobile("hoth", "wampa", 300, 9.7, -40.5, -77, -20, 6452989)
	spawnMobile("hoth", "wampa", 300, -8.5, -40.4, -75.8, 32, 6452989)
	spawnMobile("hoth", "wampa", 300, 47.3, -47, -56.8, -116, 6452990)
	spawnMobile("hoth", "wampa", 300, 63.3, -56.8, -178.3, -48, 6452991)
	spawnMobile("hoth", "wampa", 300, -5.9, -45, -140.2, 33, 6452991)
	spawnMobile("hoth", "wampa", 300, -5.6, -64.2, -230.2, -57, 6452993)
	spawnMobile("hoth", "wampa", 300, -15.2, -65.6, -215, 22, 6452993)
	spawnMobile("hoth", "wampa", 300, -94.8, -69.6, -94.5, 171, 6452994)
	spawnMobile("hoth", "wampa", 300, -66.1, -68.3, -106.7, 38, 6452995)
	spawnMobile("hoth", "wampa", 300, -36.8, -71.1, -84.6, -123, 6452995)
	spawnMobile("hoth", "wampa", 300, -42.2, -69.8, -108.7, -49, 6452995)
	spawnMobile("hoth", "wampa", 300, -76.7, -99.4, -158.7, 7, 6452994)
	spawnMobile("hoth", "wampa", 300, -87.8, -103.4, -122.7, -151, 6452997)
	spawnMobile("hoth", "wampa", 300, -91.6, -102, -141.4, 49, 6452994)
	spawnMobile("hoth", "wampa", 300, -64.9, -69.9, -170.8, 129, 6452994)
	spawnMobile("hoth", "wampa", 300, -66.1, -70, -195.8, 50, 6452994)

	spawnMobile("hoth", "wampa", 300, 26.2, -39.1, -39.0, 5, 6452976)	
	spawnMobile("hoth", "wampa", 300, 21.1, -41.4, -70.1, 2, 6452976)	
	spawnMobile("hoth", "wampa", 300, 40.9, -47.2, -36.9, 177, 6452976)
	spawnMobile("hoth", "wampa", 300, 48.4, -47.6, -70.9, -118, 6452976)
	spawnMobile("hoth", "wampa", 300, 82.6, -46.2, -118.0, 20, 6452979)
	spawnMobile("hoth", "wampa", 300, 91.6, -46.2, -100.3, -166, 6452979)
	spawnMobile("hoth", "wampa", 300, 83.3, -46.2, -137.8, 70, 6452985)
	spawnMobile("hoth", "wampa", 300, 81.5, -46.4, -147.9, 7, 6452985)
	spawnMobile("hoth", "wampa", 300, 90.2, -61.2, -7.9, -153, 6452977)
	spawnMobile("hoth", "wampa", 300, 84.9, -64.0, -24.5, 2, 6452977)	
	spawnMobile("hoth", "wampa", 300, 94.6, -67.7, -38.1, 7, 6452977)
	spawnMobile("hoth", "wampa", 300, 85.1, -76.2, -59.7, 0, 6452978)	
	spawnMobile("hoth", "wampa", 300, 68.6, -76.7, -69.1, 2, 6452978)
	spawnMobile("hoth", "wampa", 300, 91.0, -76.4, -86.9, 2, 6452978)
	spawnMobile("hoth", "wampa", 300, 66.0, -76.8, -87.6, 2, 6452978)
	spawnMobile("hoth", "wampa", 300, 63.2, -75.5, -65.1, 12, 6452978)
	spawnMobile("hoth", "wampa", 300, 61.2, -69.1, -125.9, 2, 6452980)
	spawnMobile("hoth", "wampa", 300, 96.7, -66.4, -106.0, -168, 6452979)
	spawnMobile("hoth", "wampa", 300, 114.4, -66.9, -86.0, -143, 6452982)
	spawnMobile("hoth", "wampa", 300, 126.6, -66.6, -110.8, 2, 6452982)
	spawnMobile("hoth", "wampa", 300, 135.4, -66.4, -119.9, -155, 6452982)
	spawnMobile("hoth", "wampa", 300, 156.0, -65.4, -129.4, 2, 6452982)
	spawnMobile("hoth", "wampa", 300, 135.1, -66.9, -93.4, -127, 6452982)
	spawnMobile("hoth", "wampa", 300, 183.3, -66.0, -95.5, -103, 6452983)
	spawnMobile("hoth", "wampa", 300, 183.9, -65.7, -105.8, 2, 6452983)
	spawnMobile("hoth", "wampa", 300, 192.5, -66.7, -99.4, -90, 6452983)	
	spawnMobile("hoth", "wampa", 300, 52.2, -67.9, -41.0, 77, 6452976)
	spawnMobile("hoth", "wampa", 300, 129.5, -66.3, -114.0, 55, 6452982)
	

	
	


	
	

end
