Ubuntu Install Guide

TOXIC - 8/31/2018

## Install Ubuntu 16.04+
Login as root Install sudo

su -

apt-get install sudo

sudo apt-get update

## Install Core3/Engine dependencies
sudo apt install build-essential libmysqlclient-dev liblua5.3-dev libdb5.3-dev libssl-dev cmake git default-jre libssl-dev

## Installed MySQL 
sudo apt-get install mysql-server mysql-client

## Installed MySQL Admin tools 
sudo apt-get install mysql-workbench

sudo apt-get install libmysqlclient-dev 

Make sure everything is "Ok" when passing checks

sudo dpkg-reconfigure mysql-server-5.7

## MySQL User and Privileges
mysql -u root -p

CREATE USER 'swgemu'@'127.0.0.1' IDENTIFIED BY '123456';

GRANT ALL PRIVILEGES ON *.* to 'swgemu'@'127.0.0.1' WITH GRANT OPTION;

mysql -u <swgemu> -p

exit
 
"If this fails to boot when using ./core3, change 127.0.0.1 to localhost in MySQL workbench under "User and Privileges" tab on the left hand side"

## Create a New Workspace Directory
mkdir workspace

ls

cd workspace

git config --global http.sslverify false

git clone http://review.swgemu.com/Core3

git clone http://review.swgemu.com/PublicEngine

## Enter repository and run make
cd PublicEngine/MMOEngine && make

## Symlink MMOEngine in Core3 where MMOCoreORB resides
cd ../../Core3

ln -s ../PublicEngine/MMOEngine MMOEngine

## Build Core3 with 8 threads
cd MMOCoreORB

git checkout origin/unstable

make build-cmake -j8

## How to Run
cd ~/git/Core3/MMOCoreORB/bin

./core3

## Install Desktop GUI "Xfce"
sudo apt-get install xubuntu-desktop

## VNC Viewer
sudo apt-get install tightvncserver

tightvncserver :1

Create a new VNC session to log into

vncserver :1

Terminate a session

vncserver -kill :1

Create a new screen session Screen -S SWG

check what sessions are made or can be attached to

screen -ls

Attach to a screen session

Screen -x xxxx.SWG

Example Screen -x 6341.SWG
