#!/bin/bash

filename=""
sdir="/htdocs/Status"
hostname=""
username=""
password=""
ftp -un $hostname <<EOF
quote USER $username
quote PASS $password
binary
cd $sdir
put $filename
quit
EOF
