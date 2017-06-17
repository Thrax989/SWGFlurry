ISDScreenPlay = ScreenPlay:new 
{
  numberOfActs = 1,

  screenplayName = "ISDScreenPlay",
}

registerScreenPlay("ISDScreenPlay", true)

function ISDScreenPlay:start()
  if (isZoneEnabled("dungeon1")) then
    self:spawnMobiles()
  end
end

function ISDScreenPlay:spawnMobiles()

  

  --Main Room First Fight:  Continued on Line 184
    local pDroid = spawnMobile("dungeon1", "blackguard_mouse_droid", 10800, -0.2, 173.8, 27.0, 0, 34673093)
          createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notifyDroidDead", pDroid)
  
  --Hallway 1
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 69.2, 173.8, 31.5, -90, 34673082)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 69.2, 173.8, 30.1, -90, 34673082)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 69.1, 173.8, 33.0, -90, 34673082)
  
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 65.9, 173.8, 18.2, 0, 34673082)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 68.2, 173.8, 18.4, 0, 34673082)
  
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 67.1, 173.8, 46.9, -179, 34673082)

-- Hallway 2
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 66.8, 173.8, 72.8, -179, 34673083)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 61.3, 173.8, 71.8, 90, 34673083)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 72.5, 173.8, 72.2, -90, 34673083)
  
-- Main Level Engineering Crawlspace
  spawnMobile("dungeon1", "blackguard_engineer", 300, 59.4, 173.8, 93.7, -135, 34673079)
  spawnMobile("dungeon1", "blackguard_engineer", 300, 71.1, 173.8, 104.4, 30, 34673079)
  spawnMobile("dungeon1", "blackguard_engineer", 300, 52.0, 173.8, 138.3, -81, 34673077)

-- Hallway 3
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 78.7, 173.8, 88.0, 179, 34673072)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 81.8, 173.8, 88.0, 179, 34673072)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 68.2, 173.8, 18.4, 179, 34673072)

  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 89.4, 173.8, 94.5, -90, 34673075)

  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 80.8, 173.8, 104.9, -179, 34673072)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 78.7, 173.8, 104.9, -179, 34673072)
  
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 79.8, 173.8, 114.6, 179, 34673072)

  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 78.5, 173.8, 127.6, 179, 34673072)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 81.5, 173.8, 127.6, 179, 34673072)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 80.2, 173.8, 131.2, 179, 34673072)
  
-- Hallway 4
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 63.4, 173.8, 147.4, 179, 34673070)
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 66.5, 173.8, 146.8, 179, 34673070)
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 65.1, 173.8, 152.7, 179, 34673070)
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 66.3, 173.8, 164.2, 179, 34673070)
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 63.2, 173.8, 164.2, 179, 34673070)

-- Gunnery Control
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 71.5, 173.8, 174.9, -90, 34673070)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 58.2, 173.8, 174.9, 90, 34673070)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 64.8, 173.8, 180.6, -179, 34673070)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 68.6, 173.8, 203.9, -90, 34673070)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 61.3, 173.8, 203.9, 90, 34673070)

  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 51.3, 173.8, 198.7, 90, 34673070)
  
-- Launch Control  
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 29.4, 192.3, 205.3, 90, 34673071)
  spawnMobile("dungeon1", "imperial_pilot", 300, 6.4, 192.8, 197.2, 179, 34673071)
  spawnMobile("dungeon1", "black_sun_boarder", 300, -0.1, 192.8, 196.7, 179, 34673071)
  spawnMobile("dungeon1", "black_sun_boarder", 300, -9.9, 192.3, 204.2, -90, 34673071)

-- Hallway 5
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 84.1, 173.8, 217.6, 157, 34673069)
  
  -- Hangar level Security station
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 87.3, 172.5, 302.2, 0, 34673059)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 83.1, 171.8, 357.8, 179, 34673060)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 87.4, 171.8, 359.0, 179, 34673060)
  
  -- Engineering Level
  spawnMobile("dungeon1", "black_sun_boarder", 300, 17.1, 140.8, 364.8, 90, 34673098)
  spawnMobile("dungeon1", "black_sun_boarder", 300, 22.1, 140.8, 365.0, -90, 34673098)

  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 20.2, 140.6, 379.3, 179, 34673099)
  
  spawnMobile("dungeon1", "black_sun_boarder", 300, 42.3, 140.6, 409.1, 0, 34673101)
  spawnMobile("dungeon1", "black_sun_boarder", 300, 41.4, 140.6, 421.7, 179, 34673101)
  spawnMobile("dungeon1", "black_sun_boarder", 300, 41.8, 140.6, 439.1, 179, 34673101)

  spawnMobile("dungeon1", "blackguard_engineer", 300, 33.9, 141.1, 433.9, 179, 34673102)
  spawnMobile("dungeon1", "blackguard_engineer", 300, 28.5, 141.1, 433.6, 179, 34673102)
  spawnMobile("dungeon1", "blackguard_engineer", 300, 27.9, 140.6, 439.7, 0, 34673102)
  
  spawnMobile("dungeon1", "blackguard_engineer", 300, 18.6, 140.6, 448.8, -90, 34673103)
  spawnMobile("dungeon1", "black_sun_boarder", 300, 15.9, 140.6, 445.0, -179, 34673103)

  spawnMobile("dungeon1", "blackguard_engineer", 300, 43.0, 141.6, 479.1, 95, 34673104)
  spawnMobile("dungeon1", "blackguard_engineer", 300, 43.8, 141.6, 486.5, 60, 34673104)
  spawnMobile("dungeon1", "black_sun_boarder", 300, 36.1, 140.6, 483.5, -179, 34673104)
  spawnMobile("dungeon1", "black_sun_boarder", 300, 17.1, 140.6, 485.8, -179, 34673104)
  spawnMobile("dungeon1", "black_sun_boarder", 300, -8.1, 140.6, 484.3, 90, 34673104)

  spawnMobile("dungeon1", "black_sun_boarder", 300, -7.7, 140.6, 518.4, -179, 34673114)
  
 
  -- Engine room: Commented because the room appears to be bugged, all NPCs spawn glitched in a corner. 
  spawnMobile("dungeon1", "black_sun_boarder", 300, -2.8, 140.6, 526.5, -1, 34673115)
  spawnMobile("dungeon1", "black_sun_boarder", 300, -12.0, 122.3, 579.0, 158, 34673115)
  spawnMobile("dungeon1", "black_sun_boarder", 300, -4.2, 122.3, 580.0, -158, 34673115)
  spawnMobile("dungeon1", "black_sun_boarder", 300, -8.8, 152.3, 528.0, -90, 34673115)
  spawnMobile("dungeon1", "black_sun_boarder", 300, -8.4, 156.3, 548.6, -179, 34673115)


-- Prat approach
  spawnMobile("dungeon1", "watch_captain_prat", 300, -55.6, 172.1, 332.5, 0, 34673063)
  spawnMobile("dungeon1", "blackguard_interrogator_droid", 300, -54.4, 172.1, 332.5, 0, 34673063)
  spawnMobile("dungeon1", "blackguard_interrogator_droid", 300, -57.4, 172.1, 332.5, 0, 34673063)

  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -55.7, 172.1, 349.8, 16, 34673063)
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -53.0, 172.1, 349.3, 16, 34673063)

  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -48.8, 171.6, 361.5, 44, 34673063)
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -47.5, 171.6, 360.0, 44, 34673063)
  
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -39.7, 171.1, 367.5, 59, 34673063)
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -39.2, 171.1, 365.4, 68, 34673063)

  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -20.6, 172.9, 370.2, 90, 34673063)
  spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -20.6, 172.9, 367.8, 90, 34673063)
  
  -- Kenkirk Approach
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 17.9, 170.6, 391.7, 179, 34673062)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 21.5, 170.6, 391.7, 179, 34673062)

  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 18.6, 170.6, 407.3, 179, 34673062)
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 21.5, 170.6, 407.3, 179, 34673062)

  spawnMobile("dungeon1", "commander_kenkirk", 300, 19.9, 170.6, 420.0, 179, 34673062)

-- Command Deck
  spawnMobile("dungeon1", "blackguard_dark_trooper", 300, 20.1, 453.6, 412.7, 0, 34673106)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 4.5, 453.6, 410.6, 90, 34673106)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 4.5, 453.6, 413.1, 90, 34673106)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 0.0, 453.6, 401.9, 0, 34673106)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 0.2, 453.6, 390.7, 0, 34673106)

  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 5.9, 453.6, 368.4, -90, 34673108)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 1.6, 453.6, 363.9, 0, 34673108)

  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, -3.8, 453.6, 355.4, 179, 34673109)
  
  spawnMobile("dungeon1", "imperial_captain", 300, -21.5, 453.6, 357.5, -90, 34673109)
  spawnMobile("dungeon1", "imperial_noncom", 300, -11.5, 453.6, 360.4, 90, 34673109)
  spawnMobile("dungeon1", "imperial_noncom", 300, -11.8, 453.6, 354.9, 90, 34673109)
  spawnMobile("dungeon1", "imperial_major", 300, 9.3, 453.6, 355.8, 0, 34673110)

  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, -0.1, 453.6, 340.5, 0, 34673110)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, 1.7, 453.6, 342.4, 0, 34673110)
  spawnMobile("dungeon1", "blackguard_stormtrooper", 300, -2.4, 453.6, 342.5, 0, 34673110)

  spawnMobile("dungeon1", "imperial_noncom", 300, -5.4, 451.4, 326.6, -148, 34673110)
  spawnMobile("dungeon1", "imperial_noncom", 300, -3.5, 451.4, 329.5, 0, 34673110)

  spawnMobile("dungeon1", "imperial_noncom", 300, 3.9, 451.4, 328.8, -169, 34673110)
  spawnMobile("dungeon1", "imperial_noncom", 300, 5.8, 451.4, 326.3, 129, 34673110)

  spawnMobile("dungeon1", "grand_admiral_sait", 300, -0.1, 453.6, 325.3, 179, 34673110)


  end



--Start Krix Swiftshadow Fight   
function ISDScreenPlay:notifyDroidDead(pDroid, pKiller)
  local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "krix_swift", 300, -0.2, 173.8, 27.0, 0, 34673093) print("spawned Krix")
      spatialChat(pBoss, "Welcome friends, You're just in time for the party.  Allow me to show you some hospitality!") 
              createObserver(DAMAGERECEIVED, "ISDScreenPlay", "boss_damage", pBoss) print("observer set")
        return 0
end

function ISDScreenPlay:boss_damage(playerObject, creatureObject, damage)
  local player = LuaCreatureObject(playerObject)
  local boss = LuaCreatureObject(creatureObject)
  
  health = boss:getHAM(0)
  maxHealth = boss:getMaxHAM(0)

  if (health <= (maxHealth * 0.95)) then print("checking HAM")
    spatialChat(playerObject, "Well, it seems we need a more suitable welcome.  Get 'em Boys!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd1", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd1") == 1) then print("checking spawnAdd1")
      local pAdd1 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 30.1, 173.8, 40.6, -90, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd1)print("luaCreatureObject pointer")
      spatialChat(pAdd1, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd2", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd2") == 1) then print("checking spawnAdd2")
      local pAdd2 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 30.1, 173.8, 36.4, -90, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd2)print("luaCreatureObject pointer")
      spatialChat(pAdd2, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd3", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd3") == 1) then print("checking spawnAdd3")
      local pAdd3 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 30.1, 173.8, 26.5, -90, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd3)print("luaCreatureObject pointer")
      spatialChat(pAdd3, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd4", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd4") == 1) then print("checking spawnAdd4")
      local pAdd4 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 21.5, 173.8, 11.3, -50, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd4)print("luaCreatureObject pointer")
      spatialChat(pAdd4, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd5", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd5") == 1) then print("checking spawnAdd5")
      local pAdd5 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 14.4, 173.8, 6.5, -50, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd5)print("luaCreatureObject pointer")
      spatialChat(pAdd5, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd6", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd6") == 1) then print("checking spawnAdd6")
      local pAdd6 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 10.0, 173.8, 6.5, 0, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd6)print("luaCreatureObject pointer")
      spatialChat(pAdd6, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd7", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd7") == 1) then print("checking spawnAdd7")
      local pAdd7 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, 0.0, 173.8, 6.5, 0, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd7)print("luaCreatureObject pointer")
      spatialChat(pAdd7, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd8", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd8") == 1) then print("checking spawnAdd8")
      local pAdd8 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -9.9, 173.8, 6.5, 0, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd8)print("luaCreatureObject pointer")
      spatialChat(pAdd8, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd9", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd9") == 1) then print("checking spawnAdd9")
      local pAdd9 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -20.0, 173.8, 6.5, 45, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd9)print("luaCreatureObject pointer")
      spatialChat(pAdd9, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd10", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd10") == 1) then print("checking spawnAdd10")
      local pAdd10 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -23.8, 173.8, 10.4, 45, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd10)print("luaCreatureObject pointer")
      spatialChat(pAdd10, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd11", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd11") == 1) then print("checking spawnAdd11")
      local pAdd11 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -30.4, 173.8, 16.9, 45, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd11)print("luaCreatureObject pointer")
      spatialChat(pAdd11, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd12", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd12") == 1) then print("checking spawnAdd12")
      local pAdd12 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -30.7, 173.8, 26.5, 90, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd12)print("luaCreatureObject pointer")
      spatialChat(pAdd12, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd13", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd13") == 1) then print("checking spawnAdd13")
      local pAdd13 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -30.7, 173.8, 35.6, 90, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd13)print("luaCreatureObject pointer")
      spatialChat(pAdd13, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.95)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd14", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd14") == 1) then print("checking spawnAdd14")
      local pAdd14 = spawnMobile("dungeon1", "blackguard_stormtrooper_commando", 300, -30.7, 173.8, 44.5, 90, 34673093)print("add spawned")
      local firstTime = LuaCreatureObject(pAdd14)print("luaCreatureObject pointer")
      spatialChat(pAdd14, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.75)) then print("checking HAM")
    spatialChat(playerObject, "Come on now, do yourselves a favor and just die.") print("spatial")       
    return 1
  
  end
  if (health <= (maxHealth * 0.5)) then print("checking HAM")
    spatialChat(playerObject, "You're too late, this ship belongs to us!") print("spatial")       
    return 1
  
  end
  if (health <= (maxHealth * 0.25)) then print("checking HAM")
    spatialChat(playerObject, "You'll never leave this hangar alive.") print("spatial")       
    return 1
  
  end
  return 0
end

-- End of Krix Swiftshadow Fight
