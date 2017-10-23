
EchoBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "EchoBaseScreenPlay",
}
 
registerScreenPlay("EchoBaseScreenPlay", true)
 
function EchoBaseScreenPlay:start()
	if (isZoneEnabled("hoth")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function EchoBaseScreenPlay:spawnSceneObjects()



end


function EchoBaseScreenPlay:spawnMobiles()
	
--Rebs


--Imp forces

spawnMobile("hoth", "at_at", 1800, -4198, 84.7, 5625, -96, 0)
spawnMobile("hoth", "at_at", 1800, -4166, 84.7, 5504.3, -89, 0)
spawnMobile("hoth", "at_at", 1800, -4156.8, 87.8, 5913.4, -128, 0)

spawnMobile("hoth", "at_st", 300, -4317.8, 81.6, 5734, -103, 0)
spawnMobile("hoth", "at_st", 300, -4283.8, 84.7, 5517.1, -84, 0)

spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5668, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5672, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5676, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5680, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5684, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5688, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5692, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5696, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5700, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4270, 84.7, 5704, -90, 0)

spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5668, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5672, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5676, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5680, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5684, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5688, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5692, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5696, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5700, -90, 0)
spawnMobile("hoth", "snowtrooper", 300, -4265, 84.7, 5704, -90, 0)
	
	

end
