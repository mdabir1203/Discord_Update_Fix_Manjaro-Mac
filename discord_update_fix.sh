#!/bin/sh

file="/opt/discord/resources/build_info.json"

cat $file | sed -i -e 's/0.0.20/0.0.21/g' $file

 echo " +++ Alles Gute +++ Fix Update: Done +++ "
