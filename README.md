## Repository EST Dec 29, 2016 

## <img src="http://i.imgur.com/OB4Pa6a.png">

## This Server Is A Branch From The MTGserver

This server is specifically for new post 14.1 content and server modifications compatible with Core3. They have been created and submitted by the SWG community. The new content is available for any server to use with just one restriction: We ask that you give full credit to the creator for their work on your server's website and not claim it as your own work. Thank you.

It's purpose is to add all of the NGE assets and anything released by the kind contributors to the MTG website.

The core3 files are a stock version of the SWGEmu unstable branch. Scripts will be added for all new content. Please test, and if you find any problems, please post to this address. https://github.com/Thrax989/SWGFlurry/issues

## Required Server TRE Files
www.swgflurry.com/TRE/

## Required Game Client
https://www.mediafire.com/file/v0u0wcr4k21ihcd/Flurry.7z

## Live Servers Virtual Machine Image
Download - https://www.virtualbox.org/wiki/Downloads
  * VirtualBox v5.2.14 or greater

Once you have downloaded the Flurry Server Image you can Import the image in oracle Follow the following steps below to start your server.

## Build Server
  * Open Terminal
  * cd ~/workspace/Core3/MMOCoreORBD
  * Make Config
  * Make Clean
  * Make Idl
  * Make Build

## Start Server Normal
  * Open Termianl
  * cd ~/workspace/Core3/MMOCoreORBD/bin
  * ./core3

## Start Server Crash/Restart Script
  * Open Terminal
  * cd ~/workspace/Core3/MMOCoreORBD/bin
  * ./startcore3.sh

## Run Server in gdb debug mode
  * Open Terminal 
  * cd ~/workspace/Core3/MMOCoreORBD/bin
  * gdb ./core3
This will promt a Black Blank Screen. Type "r" to Run the GDB<br>
If your server segfaults it will promt you "segmentation fault"<br>
type "bt" to do a back trace to find your error<br>

## Run Unit Integrity Test
  * Open Terminal
  * cd ~/workspace/Core3/MMOCoreORBD/bin
  * swgemu runUnitTests

## Coding Legend
- ![#008000](https://placehold.it/15/008000/000000?text=+) `Complete`
- ![#FF0000](https://placehold.it/15/FF0000/000000?text=+) `Incomplete`
- ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `Testing`

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

  * http://www.swgflurry.com/<br>
  * https://github.com/TheAnswer/Core3/graphs/contributors
  * Aftermath 
  * Awakening 
  * Empire in Flames
  * Infinity
  * Reckoning
  * Sentinels
  * Stardust
  * SWG-Europa
  * SWG-Rehab
  * Sunrunner II

### License ###
    Copyright (C) 2017 SWGEmu

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
