#!/bin/sh


#say() { local IFS=+;/usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols "
#http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=$*&tl=en"; }


echo "Starting script sayIPbs "
private=`hostname -I | sed -E -e 's/[[:blank:]]+/_/g' `
string="private address is $private"
res=`mosquitto_pub -h iot.eclipse.org -t raspberry/ipaddress -m $private`
#echo $string | sed 's/\./ dot /g' 
#echo $string | sed 's/\./ dot /g' | flite -voice slt
#say $string 
# echo $string | flite -voice slt 
#`flite -voice slt -t $string`
