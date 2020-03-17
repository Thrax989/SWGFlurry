--True here tells the server to load this screenplay at server load. False tells it to wait until explicitly started.
stages = { 
	firstQuest = 1, 
	completedQuest = 2,
	lightSideFRS = 4,
	darkSideFRS = 8,
	leftFRS = 16
}

jedi_FRS = ScreenPlay:new {
	screenplayName = jedi_FRS,
}

registerScreenPlay("jedi_FRS", true)

--This gets executed automatically when the screenplay is started
function jedi_FRS:start()
	self:spawnMobiles()
end

--Put all the initial spawning of mobiles in a nice method like this.
function jedi_FRS:spawnMobiles()
end