[![Discord](https://discordapp.com/api/guilds/457257573859590154/widget.png)](https://discord.gg/XHmEz9F)

## Repository EST Dec 29, 2016 

## <img src="http://i.imgur.com/OB4Pa6a.png">

## SWGFlurry Server Index  ##
  * Server RoadMap https://trello.com/b/fawSAKWE/swg-flurry-classic-server
  * Server Client https://www.mediafire.com/file/v0u0wcr4k21ihcd/Flurry.7z
  * Server Tre's www.swgflurry.com/TRE/
  * Wiki http://www.swgflurry.com/wiki/
  * Discord https://discord.gg/XHmEz9F
  * Website www.swgflurry.com
  * Forums http://www.swgflurry.com/forum/
  
## What is SWGEmu? ##

Star Wars Galaxies was a massively multi-player online role playing game introduced by Sony Online Entertainment in the year 2003 and shut down in 2011.
It is this game the SWGEmu project focuses to recreate at a specific milestone referred to as Pre-CU, or Pre-Combat Upgrade. The Combat Upgrade was a set of game changes which radically changed the game-play, to the dislike of thousands of players. These changes led to the founding of this project, in an attempt to "recreate" the game as it was during the Pre-CU era.
At SWGEmu, Emulator refers to the software the SWGEmu team is building. This Emulator is meant to imitate Sony Online Entertainment's server-side software, which hosted the galaxies of Star Wars Galaxies during the Pre-CU era.

## How to build ##

##### Dependencies #####
  * CMake 3.1.0 or higher
  * BerkeleyDB 5.3
  * MySQL (libmysqlclient20)
  * OpenSSL libraries
  * pthreads
  * Lua 5.3 libraries
  * Zlib libraries
  * g++ 5+
  * engine3
  * java jre 1.7+

### Ubuntu 16.04+ ###
  * Advanced Bare Metal Ubuntu Server Guide  https://github.com/Thrax989/SWGFlurry/blob/master/Ubuntu-Guide.md

  * Install dependencies

        sudo apt install build-essential libmysqlclient-dev liblua5.3-dev libdb5.3-dev libssl-dev cmake git default-jre libssl-dev
  * Clone core3 repository somewhere  (~/git)

        git clone http://review.swgemu.com/Core3
  * Clone engine3 repository somewhere (~/git)

        git clone http://review.swgemu.com/PublicEngine
  * Enter repository and run make

        cd PublicEngine/MMOEngine && make
  * Symlink MMOEngine in Core3 where MMOCoreORB resides

        cd ../../Core3
        ln -s ../PublicEngine/MMOEngine MMOEngine
  * Build Core3 with 8 threads

        cd MMOCoreORB
        git checkout origin/unstable
        make build-cmake -j8

### How to Run ###
    cd ~/git/Core3/MMOCoreORB/bin
    ./core3

### License ###
    Copyright (C) 2017 SWGEmu

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

For more information, see https://review.swgemu.com.
