## Flurry Server Index  ##
  * [![Discord](https://discordapp.com/api/guilds/457257573859590154/widget.png)](https://discord.gg/XHmEz9F) [![GitHub last commit](https://img.shields.io/github/last-commit/Thrax989/SWGFlurry.svg)](https://github.com/Thrax989/SWGFlurry/commits/master) [![License](https://img.shields.io/github/license/Thrax989/SWGFlurry.svg)](https://github.com/Thrax989/SWGFlurry/blob/master/COPYING)
  * [![Server RoadMap ](https://img.shields.io/badge/Server%20Roadmap-Click%20Here-005f71.svg?style=plastic)](https://trello.com/b/fawSAKWE/swg-flurry-classic-server)
  * [![Server Client ](https://img.shields.io/badge/Server%20Client-Click%20Here-005f71.svg?style=plastic)](http://www.mediafire.com/file/jos2a5pf6610aa6/Flurry.7z/file) 
  * [![Server Tre's ](https://img.shields.io/badge/Server%20Tre's-Click%20Here-005f71.svg?style=plastic)](http://www.swgflurry.com/TRE/) 
  * [![Website ](https://img.shields.io/badge/Server%20Website-Click%20Here-005f71.svg?style=plastic)](http://www.swgflurry.com) 
  * [![Forums ](https://img.shields.io/badge/Server%20Forum's-Click%20Here-005f71.svg?style=plastic)](http://www.swgflurry.com/forum/) 

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
  * [![Ubuntu 16.04 Guide ](https://img.shields.io/badge/Ubuntu 16.04 Guide-Click%20Here-005f71.svg?style=plastic)](https://github.com/Thrax989/SWGFlurry/blob/master/Ubuntu-Guide.md) 
  
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

For more information, see [![Review SWGemu ](https://img.shields.io/badge/%20Review.SWGemu-Click%20Here-005f71.svg?style=plastic)](https://review.swgemu.com.)
