## Repository EST Dec 29, 2016 

## <img src="http://i.imgur.com/OB4Pa6a.png">

## This Server Is A Branch From The MTGserver

This server is specifically for new post 14.1 content and server modifications compatible with Core3. They have been created and submitted by the SWG community. The new content is available for any server to use with just one restriction: We ask that you give full credit to the creator for their work on your server's website and not claim it as your own work. Thank you.

It's purpose is to add all of the NGE assets and anything released by the kind contributors to the MTG website.

The core3 files are a stock version of the SWGEmu unstable branch. Scripts will be added for all new content. Please test, and if you find any problems, please post to this address. https://github.com/Thrax989/SWGFlurry/issues

## Required Server TRE Files
	www.swgflurry.com/TRE/<br>
	maxSearchPriority=27<br>
	searchTree_00_25=flurrynov.tre<br>
	searchTree_00_24=flurrymaster.tre<br>
	searchTree_00_23=flurrytexture.tre<br>
	searchTree_00_22=collection.tre<br>
	searchTree_00_21=mtg22.tre<br>
	searchTree_00_20=mtg_planets.tre<br>
	searchTree_00_19=mtg_patch_021.tre<br>
	searchTree_00_18=mtg_patch_019.tre<br>
	searchTree_00_17=mtg_patch_018.tre<br>
	searchTree_00_16=mtg_patch_017.tre<br>
	searchTree_00_15=mtg_patch_016.tre<br>
	searchTree_00_14=mtg_patch_015.tre<br>
	searchTree_00_13=mtg_patch_014.tre<br>
	searchTree_00_12=mtg_patch_013_configurable_02.tre<br>
	searchTree_00_11=mtg_patch_012_configurable_01.tre<br>
	searchTree_00_10=mtg_patch_011_files_01.tre<br>
	searchTree_00_9=mtg_patch_010_object_01.tre<br>
	searchTree_00_8=mtg_patch_009_Shader_01.tre<br>
	searchTree_00_7=mtg_patch_008_texture_04.tre<br>
	searchTree_00_6=mtg_patch_007_texture_03.tre<br>
	searchTree_00_5=mtg_patch_006_texture_02.tre<br>
	searchTree_00_4=mtg_patch_005_texture_01.tre<br>
	searchTree_00_3=mtg_patch_004_appearance_04.tre<br>
	searchTree_00_2=mtg_patch_003_appearance_03.tre<br>
	searchTree_00_1=mtg_patch_002_appearance_02.tre<br>
	searchTree_00_0=mtg_patch_001_appearance_01.tre<br>

## Required Game Client
https://www.mediafire.com/file/v0u0wcr4k21ihcd/Flurry.7z

## Coding Legend
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Complete`
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) `Incomplete`
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `Testing`

## Server Base Source Code
https://github.com/TheAnswer/Core3<br>

## Server Base Source Code Engine
https://github.com/TheAnswer/PublicEngine<br>

## Website
http://www.swgflurry.com/<br>

## Live Servers Virtual Machine Image
Download - https://www.virtualbox.org/wiki/Downloads
- ![#008000](https://placehold.it/15/008000/000000?text=+)`VirtualBox v5.2.14 or greater`

Once you have downloaded the Flurry Server Image you can Import the image in oracle Follow the following steps below to start your server.

## Live Servers Engine Build
https://github.com/TheAnswer/PublicEngine/commit/516a45fae783108812458369644137baf62fe66d<br>
- ![#008000](https://placehold.it/15/008000/000000?text=+)`Enigne Build Passed`

## Correct Engine Lib
Make sure you Overwrite your UNIX Lib with Linux64 Lib BEFOR YOU BUILD

- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) `Replace This File`
https://github.com/Thrax989/SWGFlurry/tree/master/MMOEngine/lib/unix
- ![#008000](https://placehold.it/15/008000/000000?text=+) `With This File`
https://github.com/Thrax989/SWGFlurry/tree/master/MMOEngine/lib/linux64

Once you have over writen ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) `Unix Lib` with ![#008000](https://placehold.it/15/008000/000000?text=+) `Linux64 Lib` you may now start your server build

## Build Server
Open Terminal
- ![#008000](https://placehold.it/15/008000/000000?text=+)`cd ~/workspace/Core3/MMOCoreORBD`
- ![#008000](https://placehold.it/15/008000/000000?text=+)`Make Config`
- ![#008000](https://placehold.it/15/008000/000000?text=+)`Make Clean`
- ![#008000](https://placehold.it/15/008000/000000?text=+)`Make Idl`
- ![#008000](https://placehold.it/15/008000/000000?text=+)`Make Build`

## Start Server Normal
- ![#008000](https://placehold.it/15/008000/000000?text=+)`cd ~/workspace/Core3/MMOCoreORBD/bin`
- ![#008000](https://placehold.it/15/008000/000000?text=+)`./core3`

## Start Server Crash/Restart Script
- ![#008000](https://placehold.it/15/008000/000000?text=+)`cd ~/workspace/Core3/MMOCoreORBD/bin`
- ![#008000](https://placehold.it/15/008000/000000?text=+)`./startcore3.sh`

## Run Server in gdb debug mode
Open Terminal 
- ![#008000](https://placehold.it/15/008000/000000?text=+)`cd ~/workspace/Core3/MMOCoreORBD/bin`
- ![#008000](https://placehold.it/15/008000/000000?text=+)`gdb ./core3`
This will promt a Black Blank Screen. Type "r" to Run the GDB<br>
If your server segfaults it will promt you "segmentation fault"<br>
type "bt" to do a back trace to find your error<br>

## Run Unit Integrity Test
- ![#008000](https://placehold.it/15/008000/000000?text=+)`cd ~/workspace/Core3/MMOCoreORBD/bin`
- ![#008000](https://placehold.it/15/008000/000000?text=+)`swgemu runUnitTests`

## All Custom Additions
- ![#008000](https://placehold.it/15/008000/000000?text=+) `All standard Pre-CU assets`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `All post 14.1 Weapons`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `CU Armor - Katarn, Rebel Assault/Battle, Imperial Assualt & Scout Troopers`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Mustafar Mobs & NPC's`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Kashyyyk Mobs and worldbuilding assets`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Many NGE Mobs`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `All NGE Backpack`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `NGE Wings / Halos`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `BARC Speeder Neutral / Rebel Imperial / Pod Racers 1 an 2 / Sith Sppeder`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `All NGE Housing Deeds With Appropriate signs / Halloween signs`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `NGE House schematics`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `NGE capes Rebel / Imperial`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `NGE Decorations / Hologram Decorations / 1 year - 10 year vet rewards`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `All TCG Items`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `NGE Wearable,Vehicles,Deeds,Assets`

## Custom Professions
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Spy`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Mechanic`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Melee Bounty Hunter`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Gray force sensative`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Gray Initiate`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Gray Jedi Novice` 
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Gray Jedi Master`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Elder Gray Jedi`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Elder Gray Jedi Master`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Gray Jedi Order`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Grand Master`

## Pre-Pub 9 Jedi Additions
- ![#008000](https://placehold.it/15/008000/000000?text=+) Jedi Holocron Unlock System (4 Badges 1 Slient)
- ![#008000](https://placehold.it/15/008000/000000?text=+) Jedi Lightsaber TEF / Group TEF
- ![#008000](https://placehold.it/15/008000/000000?text=+) Jedi Perma Death (3 Lives Additional lives gained from holocrons) - This system can be turn - ![#008000](https://placehold.it/15/008000/000000?text=+) `On` or - ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) `Off` depending on the server operators choice

## Custom Planets
- ![#008000](https://placehold.it/15/008000/000000?text=+) `corellia`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `dantooine`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `dathomir`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `endor`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `lok`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `naboo`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `rori`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `talus`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `tatooine`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `yavin4`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Mandalore`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Taanab`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Hoth`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Kaas`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `coruscant`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `chandrila`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `nal hutta`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `moraband`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Kashyyyk`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Mustafar`
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) jakku
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) bespin
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) dagobah
- ![#008000](https://placehold.it/15/008000/000000?text=+) `dungeon1`
- ![#008000](https://placehold.it/15/008000/000000?text=+) `dungeon2`
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) ghomrassen
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) kessel
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) kuat
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) moncal
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) myrkr
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) nalhutta
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) ordmantell
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) tralus
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) wayland

## Extended thanks ot the following servers / contributors
Thank you to the following server that provided custom content / alterations to the base core3 experience. Over the course of a few years each individual has added some portion to the frame work or code that is currently in this repository.

https://github.com/TheAnswer/Core3/graphs/contributors

Aftermath 
Awakening 
Empire in Flames
Infinity
Reckoning
Sentinels
Stardust
SWG-Europa
SWG-Rehab
Sunrunner II
