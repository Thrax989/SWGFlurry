local ObjectManager = require("managers.object.object_manager")print("Object manager loaded for ISD")
ISDScreenPlay = ScreenPlay:new 
{
  numberOfActs = 1,

  screenplayName = "ISDScreenPlay",
}

registerScreenPlay("ISDScreenPlay", true)print("Registered ISD")

function ISDScreenPlay:start()
  if (isZoneEnabled("dungeon1")) then
print("Dungeon 1 Enabled Spawning ISD")
    self:spawnMobiles()
  end
end

function ISDScreenPlay:spawnMobiles()
--spawnMobile("dungeon1", "stormtrooper", 1, -44.8084, 172.335, 318.598, 80, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -44.411, 172.335, 325.657, 87, 4336867)
  
--spawnMobile("dungeon1", "stormtrooper", 1, -40.7455, 172.335, 300.109, 88, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -41.1799, 172.335, 303.206, 88, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -41.5556, 172.335, 305.905, 117, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -40.9211, 172.335, 309.215, 90, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -40.8416, 172.335, 311.901, 75, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -41.1683, 172.335, 315.132, 87, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -40.6558, 172.335, 329.741, 152, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -41.4177, 172.335, 332.599, 179, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -40.7813, 172.335, 335.3, 180, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -40.6849, 172.335, 338.582, 181, 4336867)
--spawnMobile("dungeon1", "stormtrooper", 1, -40.5371, 172.335, 341.542, 180, 4336867)



--Trigger set 1

    local TBoss = spawnMobile("dungeon1", "stormtrooper", 1, -44.8084, 172.335, 318.598, 80, 4336867)print("trigger 1 Loaded Quest Insane Star Destroyer")
          createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notifyTBoss", TBoss)

--Trigger Starts Once first stormtrooper dies
function ISDScreenPlay:notifyTBoss(TBoss, pKiller)
    local player = LuaCreatureObject(pKiller)
    local pBoss = spawnMobile("dungeon1", "janta_warrior", 0, -44.8084, 172.335, 318.598, 80, 4336867)print("trigger 1 Loaded Quest Boss Insane Star Destroyer")
    return 0
end




  

  --Main Room First Fight:  Continued on Line 184
    local pDroid = spawnMobile("dungeon1", "stormtrooper", 10800, -0.2, 173.8, 27.0, 0, 34673093)
          createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notifyDroidDead", pDroid)


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
