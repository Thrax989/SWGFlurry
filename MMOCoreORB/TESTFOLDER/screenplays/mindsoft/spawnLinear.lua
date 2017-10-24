--spawnLinear( planet, spawnlist, x1, y1, z, x2, y2, mob count)
--String zoneName, String Template, int respawnTimer, float x1, float z, float y1, float x2, float y2, float heading, unsigned long parentID, int count, int spawn range)
spawnLinear = function(zoneName,spawnList,timer,xStart,z,yStart,xEnd,yEnd,heading,parentID,spawnRange,count)
	print("spawnLinear Started")
	local xStep,yStep = (-1*((xStart-xEnd)/count)),( -1*((yStart-yEnd)/count))
	--print("steps x,y",xStep,yStep)	
	--print(zoneName,spawnList,timer,xStart,z,yStart,xEnd,yEnd,heading,parentID,count,spawnRange)	
	local i = 1 --Prime varialbles for loop
	local xCurrent = xStart
	local yCurrent = yStart
	--print("spawn","xstart", "xend","xstep","ystart","yend", "ystep","count")
	--print("",xStart, xEnd, xStep, yStart, yEnd, yStep, count)
	--print("\n#","spwnX","spwnY","template")
	while i < count+1 do
		local Dint,Dfrac =  math.modf(xCurrent) --Set x to 1 place decimal number
		local xSpawn = Dint + .1*(math.floor(Dfrac*10))
		Dint,Dfrac =  math.modf(yCurrent) --Set y to 1 place decimal number
		local ySpawn = Dint + .1*(math.floor(Dfrac*10))
		--print(xSpawn,ySpawn,"Spawn")
		
                if type(spawnList) == "table" then
			--lspawnMobile(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount)
			pSquad = lspawnMobile(zoneName, spawnList, timer, xSpawn, z, ySpawn, heading, parentID, spawnRange, 1)--list spawn mobiles	
		else
			pSquad = rspawnMobile(zoneName, spawnList, timer, x, z, y, heading, parentID, spawnRange )--range spawn mobiles
		end
		--print(i,xSpawn,ySpawn,spawn)
		print("spawnLinear Ended")
		xCurrent= xCurrent + xStep --Increment variables for next step
		yCurrent= yCurrent + yStep
		i = i + 1
	end
end



