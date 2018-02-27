echo "Starting script sayIPbs "
private=`hostname -I | cut -d' ' -f1 `
string="private address is $private"
res=`mosquitto_pub -h iot.eclipse.org -t raspberry/ipaddress -m $private`
echo $string | sed 's/\./ dot /g' 
echo $string | sed 's/\./ dot /g' | flite -voice slt

# echo $string | flite -voice slt 
#`flite -voice slt -t $string`
