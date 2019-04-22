
ImperialStarDestroyerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "ImperialStarDestroyerScreenPlay",
}
 
registerScreenPlay("ImperialStarDestroyerScreenPlay", true)
 
function ImperialStarDestroyerScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end



function ImperialStarDestroyerScreenPlay:spawnSceneObjects()

	--elevator00
	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff",54.42,181.334,20.06,14201199,-0.7,0,0.7,0)
	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff",54.42,173.83,20.06,14201199,-0.7,0,0.7,0)

	--elevator01

	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff",-54.438,181.33,20,14201200,0.7,0,0.7,0)
	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff",-54.367,173.8349,20.03,14201200,0.7,0,0.7,0)

	--elevator02

	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff",48.98,192.335,205.61,14201201,-0.7,0,0.7,0)
	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff",48.98,173.83,205.63,14201201,-0.7,0,0.7,0)

	--elevator03

	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff",19.99,453.35,430.5768,14201210,0,0,-1,0)
	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff",19.99,170.58,430.5768,14201210,0,0,-1,0)

	--reactorelevator

	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff",19.76,140.58,347.586,14201202,1,0,0,0)
	spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff",19.76,170.58,347.586,14201202,1,0,0,0)



end


function ImperialStarDestroyerScreenPlay:spawnMobiles()
	

	--Bridge

	spawnMobile("dungeon2", "admiral_sait", 3600, 0.0, 453.6, 320.9, 178, 14201215)
	spawnMobile("dungeon2", "elite_novatrooper_commander", 360, -6.5, 453.6, 345.1, 0, 14201215)
	spawnMobile("dungeon2", "elite_novatrooper_commander", 360, 6.5, 453.6, 345.1, 0, 14201215)

	spawnMobile("dungeon2", "imperial_second_lieutenant", 360, -21.4, 435.6, 359.2, -66, 14201214)
	spawnMobile("dungeon2", "imperial_colonel", 360, -21.5, 453.6, 355.8, -109, 14201214)
	spawnMobile("dungeon2", "imperial_colonel", 360, -11.6, 453.6, 357.3, 4, 14201214)
	spawnMobile("dungeon2", "imperial_major", 360, -11.7, 453.6, 358.9, 137, 14201214)

	spawnMobile("dungeon2", "elite_novatrooper", 360, -18.6, 453.6, 364.8, 0, 14201214)
	spawnMobile("dungeon2", "elite_novatrooper", 360, -12, 453.6, 364.8, 0, 14201214)
	spawnMobile("dungeon2", "novatrooper", 360, -17.2, 453.7, 371.9, 172, 14201214)
	spawnMobile("dungeon2", "novatrooper", 360, -13.5, 453.7, 372.1, -167, 14201214)

	spawnMobile("dungeon2", "novatrooper", 360, 2.4, 453.6, 360.6, -49, 14201213)
	spawnMobile("dungeon2", "novatrooper", 360, -2.5, 453.6, 360.4, 43, 14201213)
	spawnMobile("dungeon2", "imperial_second_lieutenant", 360, 8.2, 453.6, 367.1, 151, 14201213)
	spawnMobile("dungeon2", "imperial_second_lieutenant", 360, 7.8, 453.6, 363, 3, 14201213)

	spawnMobile("dungeon2", "novatrooper", 360, 17.5, 453.6, 417.2, 22, 14201211)
	spawnMobile("dungeon2", "novatrooper", 360, 22.5, 453.6, 417.2, -55, 14201211)


--tractorbeam

	spawnMobile("dungeon2", "imperial_officer", 300, -5.4, 177.3, -48.8, 89, 14201193)
	spawnMobile("dungeon2", "imperial_officer", 300, -5.6, 177.3, -51.5, 75, 14201193)
	spawnMobile("dungeon2", "imperial_officer", 300, -8.3, 177.3, -47.5, 15, 14201193)

	spawnMobile("dungeon2", "imperial_officer", 300, 5.1, 177.3, -50.1, -109, 14201193)
	spawnMobile("dungeon2", "imperial_officer", 300, 7.1, 177.3, -47.8, -24, 14201193)

	spawnMobile("dungeon2", "novatrooper", 300, 3.5, 177.7, -60.4, -28, 14201193)
	spawnMobile("dungeon2", "novatrooper", 300, -3.7, 177.7, -60.8, 14, 14201193)

--room05

	--spawnMobile("dungeon2", "quest_giver", 300, 9.1, 175.3, -34.3, -7, 14201191)

--hallway09

	spawnMobile("dungeon2", "novatrooper", 300, 11.9, 175.3, -26.3, -47, 14201190)
	spawnMobile("dungeon2", "novatrooper", 300, 6.0, 175.3, -26.4, 35, 14201190)

--hallway06

	spawnMobile("dungeon2", "novatrooper", 300, 69.5, 173.8, 30.1, -90, 14201187)
	spawnMobile("dungeon2", "novatrooper", 300, 69.5, 173.8, 33.1, -90, 14201187)

	spawnMobile("dungeon2", "novatrooper", 300, 64.5, 173.8, 37.3, 138, 14201187)
	spawnMobile("dungeon2", "novatrooper", 300, 64.5, 173.8, 25.9, 37, 14201187)

--hallway13
	spawnMobile("dungeon2", "novatrooper", 300, -69.1, 173.8, 35.5, 125, 14201197)
	spawnMobile("dungeon2", "novatrooper", 300, -64.9, 173.8, 35.4, -125, 14201197)
	spawnMobile("dungeon2", "novatrooper", 300, -69.5, 173.8, 33.3, 90, 14201197)

	spawnMobile("dungeon2", "novatrooper", 300, -64.5, 173.8, 25.7, -57, 14201197)
	spawnMobile("dungeon2", "novatrooper", 300, -69.1, 173.8, 25.6, 54, 14201197)

--undercarriage
	spawnMobile("dungeon2", "imperial_colonel", 300, 1.2, 192.8, 196.7, -169, 14201176)
	spawnMobile("dungeon2", "imperial_major", 300, -1.2, 192.8, 196.7, 169, 14201176)

	spawnMobile("dungeon2", "imperial_officer", 300, -11.2, 192.3, 206.6, -3, 14201176)
	spawnMobile("dungeon2", "imperial_officer", 300, -7.6, 192.3, 207.2, 1, 14201176)

	--spawnMobile("dungeon2", "quest_giver", 300, -1.9, 192.3, 201.8, 53, 14201176)
	spawnMobile("dungeon2", "imperial_first_lieutenant", 300, -0.1, 192.3, 204.9, 170, 14201176)

	spawnMobile("dungeon2", "imperial_officer", 300, 11.2, 192.3, 207, 7, 14201176)
	spawnMobile("dungeon2", "imperial_officer", 300, 7.5, 192.3, 207, -4, 14201176)

	spawnMobile("dungeon2", "novatrooper", 300, 15.3, 192.3, 207.1, 108, 14201176)
	spawnMobile("dungeon2", "novatrooper", 300, 15.2, 192.3, 204.2, 62, 14201176)


	
	

end
