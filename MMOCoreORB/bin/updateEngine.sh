#!/bin/bash
cd ~/workspace/PublicEngine
git fetch origin
git pull origin master
cp ~/workspace/PublicEngine/MMOEngine/lib/linux64/libengine3.a ~/workspace/PublicEngine/MMOEngine/lib/unix/libengine3.a