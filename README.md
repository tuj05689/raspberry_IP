# raspberry_IP
#This code will upload raspberry private ip address to iot.eclipse.org using mqtt protocol
```
sudo apt-get install mosquitto mosquitto-clients -y
git clone https://github.com/lbaitemple/raspberry_IP/
cp raspberry_IP/test2.sh test2.sh
```

Now, you will need to create a startup service
```
sudo cp raspberry_IP/ipaddress.service /lib/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable  ipaddress
sudo systemctl start  ipaddress
```

You should be able to search a MQTTbox in google
![Alt text](mqtt/step1.png?raw=true "Download MQTTBox")

Install MQTTbox in Chrome Store
![Alt text](mqtt/step2.png?raw=true "MQTTBox")

You can setup a new MQTT client

![Alt text](mqtt/step3.png?raw=true "MQTTBox")

In the new client, please specify iot.eclipse.org:1883 as shown in the redbox
![Alt text](mqtt/step4.png?raw=true "MQTTBox")


Specify a new topic in subscriber as "raspberry/ipaddress"
![Alt text](mqtt/step5.png?raw=true "MQTTBox")

You can remove publisher as shown in the figure below
![Alt text](mqtt/step6.png?raw=true "MQTTBox")

In your raspberry pi, you can click on the last two pins so you will see you will the new private IP address of raspberry Pi.
![Alt text](mqtt/step7.png?raw=true "MQTTBox")

We can also add google text to speech to speak out the ip address. However, you will need to do the following commands
```
sudo apt-get install mplayer -y
nano $HOME/.mplayer/config 
```
you will add a line of the following in the file
```
lirc=no
```
