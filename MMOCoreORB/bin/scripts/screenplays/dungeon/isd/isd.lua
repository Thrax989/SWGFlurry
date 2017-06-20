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
-- Base FloorStorm Troopers Guarding Door Entrances -- Guards at entrance 100% complete
spawnMobile("dungeon1", "stormtrooper", 1, 40.6567, 173.835, 34.0745, 261, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 40.6779, 173.835, 29.086, 269, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 33.5028, 173.835, 3.61873, 308, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 29.9749, 173.835, 0.0756065, 305, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -29.9486, 173.835, 0.12338, 35, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -33.501, 173.835, 3.61753, 53, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -40.6873, 173.835, 34.0851, 95, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -40.6764, 173.835, 29.0936, 71, 4336902)
--Elevator Control Shaft Guards  10% complete
spawnMobile("dungeon1", "stormtrooper", 1, -48.4635, 173.835, 21.3722, 78, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -47.9885, 173.835, 17.3455, 89, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.691, 173.835, 22.586, 260, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.9413, 173.835, 17.3783, 269, 4336902)


--Upper Floor Room Guards will patrol Elevator Points 50% complete
spawnMobile("dungeon1", "stormtrooper", 1, -47.941, 181.335, 17.5886, 80, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -47.9893, 181.335, 22.5846, 92, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.7055, 181.335, 17.6227, 279, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.6649, 181.335, 22.5756, 246, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 40.7362, 181.335, 24.163, 262, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 40.7167, 181.335, 15.9608, 270, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -40.7103, 181.335, 16.0802, 87, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, -40.75, 181.335, 24.1963, 87, 4336902)






-- Left Hallway Troopers --way 3045 173 -2968
spawnMobile("dungeon1", "stormtrooper", 1, 44.309, 173.835, 29.086, 0, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 44.309, 173.835, 34.086, 179, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.191, 173.835, 34.086, 178, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 49.309, 173.835, 34.086, 182, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 50.691, 173.835, 34.086, 178, 4336891)
spawnMobile("dungeon1", "stormtrooper", 1, 50.691, 173.835, 29.086, 354, 4336891)
spawnMobile("dungeon1", "stormtrooper", 1, 49.309, 173.835, 29.086, 350, 4336902)
spawnMobile("dungeon1", "stormtrooper", 1, 47.191, 173.835, 29.086, 359, 4336902)

--set up captin of the ISD -- NPC Tempalte will need to be changed Stromtroopers are BASE testing NPC
spawnMobile("dungeon1", "stormtrooper", 1, -0.641077, 181.335, -2.51546, 355, 4336902)

    local pDroid = spawnMobile("dungeon1", "isd_mouse_droid", 180, -10.0259, 173.835, 18.2381, 349, 4336902)

          createObserver(OBJECTDESTRUCTION, "ISDScreenPlay", "notifyDroidDead", pDroid)
end

--Start Krix Swiftshadow Fight   
function ISDScreenPlay:notifyDroidDead(pDroid, pKiller)
  local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("dungeon1", "krix_swift", 180, 0.0366271, 173.835, 18.1507, 351, 4336902)
 print("spawned Krix")
      spatialChat(pBoss, "Welcome friends, You're just in time for the party.  Allow me to show you some hospitality!") 
              createObserver(DAMAGERECEIVED, "ISDScreenPlay", "boss_damage", pBoss) print("observer set")
        return 0
end

function ISDScreenPlay:boss_damage(playerObject, creatureObject, damage)
  local player = LuaCreatureObject(playerObject)
  local boss = LuaCreatureObject(creatureObject)
  
  health = boss:getHAM(0)
  maxHealth = boss:getMaxHAM(0)

  if (health <= (maxHealth * 0.90)) then print("checking HAM")
    spatialChat(playerObject, "Well, it seems we need a more suitable welcome.  Get 'em Boys!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd1", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd1") == 1) then print("checking spawnAdd1")
      local pAdd1 = spawnMobile("dungeon1", "stormtrooper", 180, 10.0035, 173.835, 18.2251, 345, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd1)print("luaCreatureObject pointer")
      spatialChat(pAdd1, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.85)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd2", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd2") == 1) then print("checking spawnAdd2")
      local pAdd2 = spawnMobile("dungeon1", "stormtrooper", 180, 19.9453, 173.835, 18.2015, 351, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd2)print("luaCreatureObject pointer")
      spatialChat(pAdd2, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.80)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd3", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd3") == 1) then print("checking spawnAdd3")
      local pAdd3 = spawnMobile("dungeon1", "stormtrooper", 180, 19.8971, 173.835, 27.1461, 262, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd3)print("luaCreatureObject pointer")
      spatialChat(pAdd3, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.75)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd4", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd4") == 1) then print("checking spawnAdd4")
      local pAdd4 = spawnMobile("dungeon1", "stormtrooper", 180, 9.96949, 173.835, 27.1469, 260, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd4)print("luaCreatureObject pointer")
      spatialChat(pAdd4, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.70)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd5", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd5") == 1) then print("checking spawnAdd5")
      local pAdd5 = spawnMobile("dungeon1", "stormtrooper", 180, 0.086636, 173.835, 27.1788, 269, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd5)print("luaCreatureObject pointer")
      spatialChat(pAdd5, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.65)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd6", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd6") == 1) then print("checking spawnAdd6")
      local pAdd6 = spawnMobile("dungeon1", "stormtrooper", 180, -9.91026, 173.835, 27.1188, 270, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd6)print("luaCreatureObject pointer")
      spatialChat(pAdd6, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.60)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd7", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd7") == 1) then print("checking spawnAdd7")
      local pAdd7 = spawnMobile("dungeon1", "stormtrooper", 180, -9.95836, 173.835, 35.9215, 81, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd7)print("luaCreatureObject pointer")
      spatialChat(pAdd7, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.55)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd8", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd8") == 1) then print("checking spawnAdd8")
      local pAdd8 = spawnMobile("dungeon1", "stormtrooper", 180, -0.359259, 173.835, 35.9656, 92, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd8)print("luaCreatureObject pointer")
      spatialChat(pAdd8, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.50)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd9", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd9") == 1) then print("checking spawnAdd9")
      local pAdd9 = spawnMobile("dungeon1", "stormtrooper", 180, 9.94771, 173.835, 36.0872, 98, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd9)print("luaCreatureObject pointer")
      spatialChat(pAdd9, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.45)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd10", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd10") == 1) then print("checking spawnAdd10")
      local pAdd10 = spawnMobile("dungeon1", "stormtrooper", 180, 19.737, 173.835, 36.0361, 96, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd10)print("luaCreatureObject pointer")
      spatialChat(pAdd10, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.40)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd11", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd11") == 1) then print("checking spawnAdd11")
      local pAdd11 = spawnMobile("dungeon1", "stormtrooper", 180, 20.1338, 173.835, 44.9507, 267, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd11)print("luaCreatureObject pointer")
      spatialChat(pAdd11, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.35)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd12", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd12") == 1) then print("checking spawnAdd12")
      local pAdd12 = spawnMobile("dungeon1", "stormtrooper", 180, 10.2458, 173.835, 44.9517, 267, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd12)print("luaCreatureObject pointer")
      spatialChat(pAdd12, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.30)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd13", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd13") == 1) then print("checking spawnAdd13")
      local pAdd13 = spawnMobile("dungeon1", "stormtrooper", 180, 0.16975, 173.835, 44.841, 264, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd13)print("luaCreatureObject pointer")
      spatialChat(pAdd13, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.25)) then print("checking HAM")
   -- spatialChat(playerObject, "I don't know where Bill is!") print("spatial")
    writeData("ISDScreenPlay:spawnAdd14", 1) print("writing data")
    if (readData("ISDScreenPlay:spawnAdd14") == 1) then print("checking spawnAdd14")
      local pAdd14 = spawnMobile("dungeon1", "stormtrooper", 180, -9.88203, 173.835, 44.9118, 270, 4336902)
print("add spawned")
      local firstTime = LuaCreatureObject(pAdd14)print("luaCreatureObject pointer")
      spatialChat(pAdd14, "Time to Die!") print("spatial for add")
      firstTime:engageCombat(pPlayer)print("engaging combat")
    end
    
    return 1
  
  end
  if (health <= (maxHealth * 0.20)) then print("checking HAM")
    spatialChat(playerObject, "Come on now, do yourselves a favor and just die.") print("spatial")       
    return 1
  
  end
  if (health <= (maxHealth * 0.15)) then print("checking HAM")
    spatialChat(playerObject, "You're too late, this ship belongs to us!") print("spatial")       
    return 1
  
  end
  if (health <= (maxHealth * 0.10)) then print("checking HAM")
    spatialChat(playerObject, "You'll never leave this hangar alive.") print("spatial")       
    return 1
  
  end
  return 0
end
