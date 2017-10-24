includeFile("mindsoft/spawnControl.lua")
require("mindsoft/bf_tools_convo_api")
--spHelper=require("screenplayHelper")

restussTrialExpansion = ScreenPlay:new { 
	numberOfActs = 1, 
	screenplayName = "restussTrialExpansion" --add screenplay name for squad control.
}

registerScreenPlay("restussTrialExpansion", true) --register screenplay<restussTrialExpansion> and start<true> on load.

function restussTrialExpansion:start() --The :start() function is the "beginning" for all screenplays.
	writeData("restussTrialLastFaction",0)
	restussTrialExpansion.repeater()
end

--Choose a faction:
function restussTrialExpansion:chooseFaction()
	local fTable = {

	--Add New Factions Here:
	"imp","reb","neutral"

	}
	local fListCount = table.getn(fTable)
	local fChoice = math.random(1,fListCount)
	local fPrevious = readData("restussTrialLastFaction")
	while fPrevious == fChoice do
		fChoice = math.random(1,fListCount)
	end
	writeData("restussTrialLastFaction",fChoice)
	fChoice = (fTable[fChoice])
	return(fChoice)
end

--Choose A mobile from the (factions) list:
function restussTrialExpansion:chooseMobile(mFaction)
	local mTable = {
		["imp"] = {
		"restuss_imp_boss",
		"restuss_imp_boss_b",
		"restuss_imp_boss_c"

		},

		["reb"] = {
		"restuss_rebel_boss",
		"restuss_rebel_boss_b",
		"restuss_rebel_boss_c"

		},
		["neutral"] = {
		"emperors_guard",
		"restuss_def",
		"restuss_ns"

		}
	}

	local mListcount = table.getn(mTable[mFaction])
	local mChoice = math.random(1,mListcount)
	mChoice = (mTable[mFaction][mChoice])
	return(mChoice)
end

--Choose a location to spawn the selected mobile:
function restussTrialExpansion:chooseLocation(lFaction)
	--Add waypoints here.
	---(note:make sure to place in proper faction).
	local lTable = {
		["imp"] = {
			{5342, 80, 5747},
			{5342, 80, 5640},
			{5272, 80, 5643},
			{5090, 80, 5746},
			{5265, 80, 5825}, --<-- shared imp reb neut.
			--{5384, 80, 5641}, --<-- shared imp reb neut.
			{5327, 80, 5551}, --<-- shared imp reb neut.
			{5488, 80, 5748} --<-- shared imp reb neut.
		},
		["reb"] = {
			{5189, 80, 5809},
			{5118, 80, 5696},
			{5196, 80, 5532},
			{5467, 80, 5649},
			{5265, 80, 5825}, --<-- shared imp reb neut.
			--{5384, 80, 5641}, --<-- shared imp reb neut.
			{5327, 80, 5551}, --<-- shared imp reb neut.
			{5488, 80, 5748} --<-- shared imp reb neut.
		},
		["neutral"] = {
			{5223,80,5686},
			{5360,80,5868},
			{5380,80,5576},
			{5488,80,5816},
			{5265, 80, 5825}, --<-- shared imp reb neut.
			--{5384, 80, 5641}, --<-- shared imp reb neut.
			{5327, 80, 5551}, --<-- shared imp reb neut.
			{5482, 80, 5739} --<-- shared imp reb neut.
		}
	}
	local lListcount = table.getn(lTable[lFaction])
	local lChoice = math.random(1,lListcount)
	lChoice = (lTable[lFaction][lChoice])
	return(lChoice)
end

function restussTrialExpansion:spawnAdds(pBoss,pPlayer)
	if not LuaSceneObject(pPlayer):isCreature() then
		return 0
	end
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)
		local xBoss = boss:getPositionX()
		local yBoss = boss:getPositionY() 
		if (bossHealth <= (bossMaxHealth *0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind *0.5)) then
			local spawnList = {}			
			if boss:isRebel() then
				spawnList = {
					"restuss_gungan_bomber",
					"restuss_padawan"
				}
			elseif boss:isImperial() then
				spawnList = {
					"restuss_acolyte",
					"restuss_trooper"
				}
			else
				spawnList = {
					"restuss_assassin",
					"restuss_brute"
				}
			end
		--lspawnMobile=function(zoneName, spawnList, respawnTimer, x, z, y, heading, parentID, spawnRange, spawnCount)
		listID = lspawnMobile("rori", spawnList, -1, xBoss, 0, yBoss, math.random(1,360), 0, 4, math.random(1,5))
		for k,v in pairs(listID) do
			CreatureObject(v):engageCombat(pPlayer)
		end
		dropObserver(DAMAGERECEIVED,pBoss)
		end
	end
	return 0
end





--Process Selection and Spawn Logic:
function restussTrialExpansion:control(...)
	local finalFaction = restussTrialExpansion.chooseFaction()--get faction.
	local finalMobile = restussTrialExpansion.chooseMobile(_,finalFaction)--get mobile.
	local finalLocation = restussTrialExpansion.chooseLocation(_,finalFaction)--get location.
	local x,z,y = finalLocation[1],finalLocation[2],finalLocation[3]--set variables for location.
	local pBoss = rspawnMobile("rori", finalMobile, 0, x, z, y, math.random(1,360), 0, 6)--spawn.
	createObserver(OBJECTDESTRUCTION, "restussTrialExpansion", "timerSet", pBoss)--set observer for death.
	createObserver(DAMAGERECEIVED, "restussTrialExpansion", "spawnAdds",pBoss)--setup adds
	return pBoss
end

--randomize respawn.
function restussTrialExpansion:timerSet(pBoss,pPlayer)--set min to 1 and max to 2 for instaspawn.
	createObserver(LOOTCREATURE , "restussTrialExpansion", "looted", pBoss)
	dropObserver(OBJECTDESTRUCTION,pBoss)
	local min = (5*60)--set minimum spawn time here (in seconds). bloodfin standard is 10-20mins
	local max = (20*60)--set maximum spawn time here (in seconds).
	local timer = math.random(min*10,max*10)
	--restussTrialExpansion:control()
	createEvent(timer,"restussTrialExpansion","control",timer)
	return 0
end

function restussTrialExpansion:looted(pBoss,pPlayer)
			dropObserver(LOOTCREATURE, pBoss )
-- Get some information about the player and npc quest giver.
			local creature = LuaCreatureObject(pPlayer)
			local npcCreature = LuaCreatureObject(pBoss)
			local isNpcImperial = npcCreature:isImperial()
 			local isImperial = creature:isImperial()
			local isNpcRebel = npcCreature:isRebel()
 			local isRebel = creature:isRebel()
			local Boss = LuaSceneObject(pBoss)
	local bossName = Boss:getDisplayedName()
	if creature:hasScreenPlayState( 64 , "restuss_expansion_quest") then
		--if npc is not neutral
		if (npcCreature:isNeutral() == false) then
		--Player is imp and Npc is not
			if isImperial and (isImperial ~= isNpcImperial) then
				--set the kill stat for npc if there is a match.
				if (bossName ==  "Contracted Rebel Liberator") then -- and creature:hasScreenPlayState( 4 , "restuss_expansion_quest_kills") then --reb c
					bf_tools:rewardGroupAll( pPlayer, "screenplay", 8, "restuss_expansion_quest_kills", 4, "imperial" )
				elseif (bossName ==  "Rebel Liberator Commander") then --and creature:hasScreenPlayState( 2 , "restuss_expansion_quest_kills") then --reb b
					bf_tools:rewardGroupAll( pPlayer, "screenplay", 4, "restuss_expansion_quest_kills", 2 , "imperial")
				elseif ( bossName == "Rebel Liberator") then --reb a
					bf_tools:rewardGroupAll( pPlayer, "screenplay", 2, "restuss_expansion_quest_kills", {64,"restuss_expansion_quest"}, "imperial" )
				end

		--Player is reb and Npc is not
			elseif isRebel and (isRebel ~= isNpcRebel) then
				--set the kill stat for npc if there is a match.
				if (bossName ==  "Imperial Mercenary") then --and creature:hasScreenPlayState( 32 , "restuss_expansion_quest_kills") then --imp c
					bf_tools:rewardGroupAll( pPlayer, "screenplay", 64, "restuss_expansion_quest_kills", 32, "rebel" )
				elseif (bossName ==  "Imperial Restuss Commander") then --and creature:hasScreenPlayState( 16 , "restuss_expansion_quest_kills") then --imp b
					bf_tools:rewardGroupAll( pPlayer, "screenplay", 32, "restuss_expansion_quest_kills", 16 , "rebel")
				elseif ( bossName == "Imperial Inquisitor" ) then --imp a
					bf_tools:rewardGroupAll( pPlayer, "screenplay", 16, "restuss_expansion_quest_kills", {64,"restuss_expansion_quest"}, "rebel" )
				end
			end
		else
			--NPC is Neutral code
				--goes here	
		end
	end
	return 0
end

--set number of spawns.
function restussTrialExpansion:repeater()
	local setSpawns = 2 --set number of simultaneous spawn cycles here.
	local p = 0
	repeat
		restussTrialExpansion:control()
		p = p + 1
	until p == setSpawns
end
