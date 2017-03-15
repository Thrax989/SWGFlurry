## -Star Wars Galaxies Flurry Server-
<img src="http://i.imgur.com/OB4Pa6a.png">

- Main Web site
http://www.swgflurry.com/
- Main Forums
http://www.swgflurry.com/forum/
- Core 3 Base Server Code/Engine
http://review.swgemu.com
- Main Servers Voice Chat 
https://discord.gg/eN82pdc

## -Run Server in gdb debug mode-
Open Terminal "Type" cd /home/vagrant/workspace/Core3/MMOCoreORB/bin Then "type" gdb ./core3 <br>
This will run your core3 in GDB mode so you can debug with "bt" <br>
If your server segfaults it will promt you "segmentation fault"
type "bt" to do a back trace to find your error

## -Run Unit Integrity Test-
cd /home/vagrant/bin/<br>
swgemu<br>
runUnitTests<br>

# Required Mod The Galaxy TRE Files
https://www.mediafire.com/?jav61872qwg7qav 
<br>
	maxSearchPriority=25<br>
	searchTree_00_23=armor.tre<br>
	searchTree_00_22=flurryui.tre<br>
	searchTree_00_21=phoenix_patch_1.tre<br>
	searchTree_00_20=skill_patch.tre<br>
	searchTree_00_19=mtg_planets.tre<br>
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

## Coding Legend
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Complete`
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) `Incomplete`
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `Testing`

### This Server Is A Branch From The MTGserver.

This server is specifically for new post 14.1 content and server modifications compatible with Core3. They have been created and submitted by the SWG community. The new content is available for any server to use with just one restriction: We ask that you give full credit to the creator for their work on your server's website and not claim it as your own work. Thank you.

It's purpose is to add all of the NGE assets and anything released by the kind contributors to the MTG website.

The core3 files are a stock version of the SWGEmu unstable branch. Scripts will be added for all new content. Please test, and if you find any problems, please post to this address. https://github.com/Thrax989/SWGFlurry/issues

## -Everything that has been added so far-
- ![#008000](https://placehold.it/15/008000/000000?text=+) * All standard Pre-CU assets
- ![#008000](https://placehold.it/15/008000/000000?text=+) * All post 14.1 Weapons
- ![#008000](https://placehold.it/15/008000/000000?text=+) * CU Armor - Katarn, Rebel Assault/Battle, Imperial Assualt & Scout Troopers
- ![#008000](https://placehold.it/15/008000/000000?text=+) * Mustafar Mobs & NPC's
- ![#008000](https://placehold.it/15/008000/000000?text=+) * Kashyyyk Mobs and worldbuilding assets
- ![#008000](https://placehold.it/15/008000/000000?text=+) * Many NGE Mobs
- ![#008000](https://placehold.it/15/008000/000000?text=+) * NGE Houses
- ![#008000](https://placehold.it/15/008000/000000?text=+) * Chiss Backpack
- ![#008000](https://placehold.it/15/008000/000000?text=+) * BARC Speeder
- ![#008000](https://placehold.it/15/008000/000000?text=+) * NGE Housing

## Things still left to Test / Balance For Live Server / Test Server

## -Everything that needs to be added-
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) All TCG Items
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) Remaining NGE Wearable,Vehicles,Deeds,Assets

## -Planets That Need Testing-
- ![#008000](https://placehold.it/15/008000/000000?text=+) corellia
- ![#008000](https://placehold.it/15/008000/000000?text=+) dantooine
- ![#008000](https://placehold.it/15/008000/000000?text=+) dathomir
- ![#008000](https://placehold.it/15/008000/000000?text=+) endor
- ![#008000](https://placehold.it/15/008000/000000?text=+) lok
- ![#008000](https://placehold.it/15/008000/000000?text=+) naboo
- ![#008000](https://placehold.it/15/008000/000000?text=+) rori
- ![#008000](https://placehold.it/15/008000/000000?text=+) talus
- ![#008000](https://placehold.it/15/008000/000000?text=+) tatooine
- ![#008000](https://placehold.it/15/008000/000000?text=+) yavin4
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) Kashyyyk
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Mustafar
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Mandalore
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Taanab
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) Hoth
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Kaas
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) jakku
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) chandrila
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) hutta
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) coruscant
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) moraband

## -Armor crafting Balance-
![#008000](https://placehold.it/15/008000/000000?text=+) 8 Complete 24.24%<br>
![#FF0000](https://placehold.it/15/FF0000/000000?text=+) 25 Incomplete 75.76%
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) assault_trooper	
- ![#008000](https://placehold.it/15/008000/000000?text=+) bone
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) bounty_hunter
- ![#008000](https://placehold.it/15/008000/000000?text=+) chitin
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) clone_trooper
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) composite	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) deathtrooper	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) galactic_marine	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) infiltrator	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) ithorian_defender	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) ithorian_guardian	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) ithorian_sentinel	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) kashyyykian_black_mtn	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) kashyyykian_ceremonial	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) kashyyykian_hunting	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) mandalorian	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) mandalorian_imperial	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) mandalorian_rebel	
- ![#008000](https://placehold.it/15/008000/000000?text=+) marauder	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) marine	
- ![#008000](https://placehold.it/15/008000/000000?text=+) nightsister	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) padded	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) rebel_assault	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) rebel_battle	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) rebel_snow	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) rebel_spec_force	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) ris	
- ![#008000](https://placehold.it/15/008000/000000?text=+) singing_mountain_clan	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) snowtrooper	
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) stormtrooper
- ![#008000](https://placehold.it/15/008000/000000?text=+) tantel	
- ![#008000](https://placehold.it/15/008000/000000?text=+) ubese
- ![#008000](https://placehold.it/15/008000/000000?text=+) zam

## -Dungeons / Encounters-
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) tatooine tusken bunker
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) dantooine janta cave 
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) taanab cave
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) taanab pandath
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) taanab starhunterstation
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) taanab downed ship
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) taanab mine
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) taanab hex farms
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) taanab great herd
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Darth Caedus Cave
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Mandal Motors
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Shadow Collective Cave
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Taung Warrior Bunker
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Vizsla Hideout

## -Server Code Contributors-
* https://github.com/Thrax989 - Project Lead Creator
* https://github.com/lasko-2112 - TRE File Creator All NGE Weapons Cu Weapons / Ghomrassen Planet Creator
* https://github.com/kurdtkobain - Additional Command Support / Game Tweaks
* https://github.com/Xela-TheCreation - FRS system Creator
* https://github.com/bobvious - Additional Game Balances Lua game Tweaks
* https://github.com/TheAnswer - Engine Developer 
* https://github.com/Tatwi - Admin Tool Creator , Scripts Creator , Quest Logic Creator
* https://github.com/Levarrishawk/ - Dromund Kaas Planet Creator
* https://github.com/dannuic - Ai Functionalit World Implamentations lua / CPP functions
* https://github.com/Ivojedi Enviroment Stability lua / CPP functionality additional game balance / tweaks
* https://github.com/loswut - Enviroment Functionalit lua / CPP World Edditions
* https://github.com/Miztah - Quest Logic Additional CPP functionality Village Implamentation for jedi
* https://github.com/Neetoo - world / enviroment balance quest functionality 
* https://github.com/Hellucard - Dungeons / Screen play creator 
* https://github.com/Gungy - Additional game balances 
* https://github.com/Bommbur - Additional game balances 
* https://github.com/mhutcherson - Additional game balances 
* https://github.com/Madvector - Additional game balances 
* https://github.com/mikeface - Additional game balances Jedi Master Powers Revamp Enhancer Revamp
* https://github.com/washu - Droid functionality
* https://github.com/Skyyyr - Additional Game Tweaks CPP / Lua script Writer
* https://github.com/Yakone - Random NGE Item Additons
