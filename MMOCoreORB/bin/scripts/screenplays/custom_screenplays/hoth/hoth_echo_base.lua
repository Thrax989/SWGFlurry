
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
	
	

end
