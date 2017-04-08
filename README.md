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

## -Servers Engine Build-
https://github.com/TheAnswer/PublicEngine/commit/c26e7ab0b140e61e63ee853e872ee91b78b6a8c4<br>
Build Passed - ![#008000](https://placehold.it/15/008000/000000?text=+)

# Required Mod The Galaxy TRE Files
http://www.mediafire.com/file/tzub5o8ae7ix58z/MTG.7z
<br>
	maxSearchPriority=28<br>
	searchTree_00_26=pallet.tre<br>
	searchTree_00_25=pods.tre<br>
	searchTree_00_24=hoth.tre<br>
	searchTree_00_23=skill_patch.tre<br>
	searchTree_00_22=armor.tre<br>
	searchTree_00_21=phoenix_patch_1.tre<br>
	searchTree_00_20=mtg_planets.tre<br>
	searchTree_00_19=mtg_patch_020.tre<br>
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
- ![#008000](https://placehold.it/15/008000/000000?text=+) * All NGE Backpack
- ![#008000](https://placehold.it/15/008000/000000?text=+) * NGE Wings / Halos
- ![#008000](https://placehold.it/15/008000/000000?text=+) * BARC Speeder Neutral / Rebel Imperial / Pod Racers 1 an 2 / Sith Sppeder
- ![#008000](https://placehold.it/15/008000/000000?text=+) * All NGE Housing Deeds With Appropriate signs / Halloween signs
- ![#008000](https://placehold.it/15/008000/000000?text=+) * NGE House schematics 
- ![#008000](https://placehold.it/15/008000/000000?text=+) * NGE capes Rebel / Imperial
- ![#008000](https://placehold.it/15/008000/000000?text=+) * NGE Decorations / Hologram Decorations / 1 year - 10 year vet rewards 

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
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Hoth
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) Kaas

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
* https://github.com/gyrantol - Mandalore , Taanab  world assets
* https://github.com/washu - Droid functionality
* https://github.com/Skyyyr - Additional Game Tweaks CPP / Lua script Writer
* https://github.com/Yakone - Random NGE Item Additons
