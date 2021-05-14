--////////////////////////////////////////////////////////
--//   		     Spawn Points Table			//
--//    	                          	//
--////////////////////////////////////////////////////////
--// SpawnPointsTable is intended for use with 		//
--// world_boss_spawner.lua.  It defines zones in which	//
--// world bosses may spawn, along with the x/y values 	//
--// around which the world bosses may spawn, in a set  //
--// radius.    					//
--// 							//
--// planetName is the name of the zone, xRef and yRef  //
--// are, respectively, the x and y values of a point 	//
--// in the approximate middle of a city or outpost, 	//
--// and  minRadus is the approximate radius (in 	//
--// meters), where no spawns will occur. The intention	//
--// of this is to prevent boss mobiles from spawning	//
--// inside cities. Since cities vary in size, it 	//
--// seemed best to declare a minimum value   		//
--// independently for each city.			//
--////////////////////////////////////////////////////////

SpawnPointsTable = {

	--Corellia
	{planetName = "corellia", xRef = -224, yRef = -4558, minRadius = 475}, --Coronet
	{planetName = "corellia", xRef = 3233, yRef = 5356, minRadius = 550}, --Doaba Guerfel
	{planetName = "corellia", xRef = -3403, yRef = 3000, minRadius = 550}, --Kor Vella
	{planetName = "corellia", xRef = -5191, yRef = -2574, minRadius = 600},  --Tyrena
	{planetName = "corellia", xRef = 6816, yRef = -5719, minRadius = 400},  --Bela Vistal
		
	--Dantooine
	{planetName = "dantooine", xRef = -629, yRef = 2491, minRadius = 400}, --Mining Outpost		
	{planetName = "dantooine", xRef = 1587, yRef = -6400, minRadius = 400}, --Agro Outpost
		
	--Dathomir
	{planetName = "dathomir", xRef = 598, yRef = 3062, minRadius = 400}, --Trade Outpost		
	{planetName = "dathomir", xRef = -86, yRef = -1595, minRadius = 400}, --Science Outpost		

	--Endor
	{planetName = "endor", xRef = -905, yRef = 1588, minRadius = 400}, --Smuggler Outpost		
	{planetName = "endor", xRef = 3222, yRef = -3461, minRadius = 400}, --Research Outpost	
	
	--Lok
	{planetName = "lok", xRef = 406, yRef = 5151, minRadius = 500}, --Nym's Stronghold	
		
	--Naboo
	{planetName = "naboo", xRef = -5168, yRef = 4224, minRadius = 900}, --Theed
	{planetName = "naboo", xRef = 5187, yRef = 6674, minRadius = 350}, --Kaadara
	{planetName = "naboo", xRef = 1694, yRef = 2628, minRadius = 600}, --Keren
	{planetName = "naboo", xRef = 4805, yRef = -4835, minRadius = 350}, --Moenia
	{planetName = "naboo", xRef = 4977, yRef = -1473, minRadius = 450}, --Dee'ja Peak
		
	--Rori
	{planetName = "rori", xRef = -5213, yRef = -2276, minRadius = 350}, --Narmle
	{planetName = "rori", xRef = 5292, yRef = 5717, minRadius = 300}, --Restuss

	--Talus
	{planetName = "talus", xRef = 426, yRef = -3016, minRadius = 400}, --Dearic
	{planetName = "talus", xRef = 4326, yRef = 5243, minRadius = 400}, --Nashal

	--Tatooine
	{planetName = "tatooine", xRef = 1347, yRef = 3135, minRadius = 500}, --Mos Entha
	{planetName = "tatooine", xRef = -2955, yRef = 2213, minRadius = 450}, --Mos Espa
	{planetName = "tatooine", xRef = -1254, yRef = -3695, minRadius = 400}, --Bestine
	{planetName = "tatooine", xRef = 3436, yRef = -4768, minRadius = 400}, --Mos Eisley
	{planetName = "tatooine", xRef = 6, yRef = -5286, minRadius = 400}, --Anchorhead
		
	--Yavin
	{planetName = "yavin4", xRef = -301, yRef = 4861, minRadius = 400}, --Mining Outpost
	{planetName = "yavin4", xRef = -6933, yRef = -5706, minRadius = 400}, --Labor Outpost
  }