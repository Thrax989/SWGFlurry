local ObjectManager = require("managers.object.object_manager")

corellia_doaba_guerfel_gcw = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "corellia_doaba_guerfel_gcw"
}

registerScreenPlay("corellia_doaba_guerfel_gcw", true)

function corellia_doaba_guerfel_gcw:start()
	if (isZoneEnabled("corellia")) then
	    if math.random(100) >= 50 then
			self:spawnRebels()
		else
			self:spawnImperials()
		end
	end
end
function corellia_doaba_guerfel_gcw:spawnImperials()

	--Imperial Npcs
	spawnMobile("corellia", "crackdown_imperial_noncom", 400,3327.5,308,5518.6,25,0)
	spawnMobile("corellia", "crackdown_storm_commando", 400,3181.3,300,5298.6,-147,0)

end

function corellia_doaba_guerfel_gcw:spawnRebels()
        --Rebel Npcs
	spawnMobile("corellia", "crackdown_rebel_commando", 400,3327.5,308,5518.6,25,0)
	spawnMobile("corellia", "crackdown_rebel_commando", 400,3181.3,300,5298.6,-147,0)
end
