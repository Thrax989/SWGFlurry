RoriRestussScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "RoriRestussScreenPlay"
}

registerScreenPlay("RoriRestussScreenPlay",  true)

function RoriRestussScreenPlay:start()
	if (isZoneEnabled("rori")) then
		self:spawnMobiles()
    		self:spawnSceneObjects()
	end
end

function RoriRestussScreenPlay:spawnSceneObjects()

end

function RoriRestussScreenPlay:spawnMobiles()

spawnMobile("rori", "the_hand", 3600, 5274.56, 80, 5742.2, 4, 0)
spawnMobile("rori", "general_hark", 3600, 5502.42, 80, 5652.51, 320, 0)

-- Imperials
  pNpc = spawnMobile("rori", "imperial_clone_trooper", 1200, 5261, 80, 5679, 115, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "imperial_clone_trooper", 1200, 5288, 80, 5689, 70, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "imperial_clone_trooper", 1200, 5275, 80, 5807, -24, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "imperial_clone_trooper", 1200, 5298, 80, 5835, 37, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "imperial_clone_trooper", 1200, 5227, 80, 5614, 121, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "imperial_clone_trooper", 1200, 5226, 80, 5628, 44, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "imperial_clone_trooper_general", 1200, 5273, 80, 5710, 160, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "imperial_clone_trooper_general", 1200, 5287, 80, 5777, 0, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "imperial_clone_trooper_general", 1200, 5208, 80, 5632, -151, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "at_st", 1200, 5194, 80, 5781, -47, 0)
  AiAgent(pNpc):setAiTemplate("example")

  pNpc = spawnMobile("rori", "at_st", 1200, 5191, 80, 5696, -147, 0)
  AiAgent(pNpc):setAiTemplate("example")  

-- Rebels
pNpc = spawnMobile("rori", "rebel_clone_trooper", 1200, 5467, 80, 5655, -99, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "rebel_clone_trooper", 1200, 5487, 80, 5694, -115, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "rebel_clone_trooper", 1200, 5454, 80, 5657, -75, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "rebel_clone_trooper", 1200, 5515, 80.5, 5749, 25, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "rebel_clone_trooper", 1200, 5497, 80.7, 5821, 37, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "rebel_clone_trooper_general", 1200, 5510, 80, 5617, -7, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "rebel_clone_trooper_general", 1200, 5472, 80, 5758, -122, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "rebel_clone_trooper_general", 1200, 5474, 80, 5811, 30, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "atxt", 1200, 5485, 80, 5664, -56, 0)
AiAgent(pNpc):setAiTemplate("example")

pNpc = spawnMobile("rori", "atxt", 1200, 5391, 80, 5763, -160, 0)
AiAgent(pNpc):setAiTemplate("example")
end
