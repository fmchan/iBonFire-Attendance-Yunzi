#Introduction to Yunzi App
======
“Yunzi” App is a mobile application that provides developer first-hand experience on Yunzi’s sensory functionality. iPhone version is available to download. You may access to the project source code on our GitHub. 


	“Yunzi” App, developed on the basis of SBK (Sensoro Beacon Kit), requires to run and compile with Xcode 6 and iOS 8 SDK. It is compatible with iOS 7.0 mobile operating system or above. 


**Main functions:**

###I. Device list and search
The list indicates the SN and ID of circumjacent Yunzi, which are accordant with the ones on Yunzi’s printed stickers. You may also find the designated Yunzi through search function. 

![](./png/1.PNG)

###II. System privilege validation
Since Yunzi is a smart sensor built on iBeacon technology, it will require corresponding system privileges including location based services and authorization for the system Bluetooth. 

![](./png/0.PNG)

###III. Functions and features of Yunzi
“Yunzi” App’s main functions include:

	(1)	RSSI (signal intensity), distance，proximity based on iBeacon;
	(2)	Sensors: temperature, light sensors and accelerometer;
	(3)	Practical use scenarios and functions achieved with Yunzi: distance and proximity detection,  light, temperature and motion sensing, push notifications, etc. 

![](./png/2.PNG)

#####1.Distance
The App will indicate the distance between Yunzi and the user if their relative position has altered.

![](./png/3.PNG)
![](./png/4.PNG)

#####2.Proximity
For proximity levels are defined to describe the distance between Yunzi and a user - immediate, near, far and unknown. The app will indicate user’s relative location when his/her distance to certain Yunzi has been changed. 


![](./png/5.PNG)
![](./png/6.PNG)
![](./png/7.PNG)
#####3.Light
Switched on Yunzi’s light sensor, the color of the circular indicator will change according to the ambient light condition. 
	
![](./png/8.PNG)
![](./png/9.PNG)
![](./png/10.PNG)
#####4.Temperature
With the temperature sensor on, the temperature of Yunzi’s chip leads to the color change of the page background. 

![](./png/11.PNG)
![](./png/12.PNG)
#####5.Move
When the accelerometer is enabled, Yunzi’s movement will trigger the animation that the earth icon starts to rotate; as the counter adds 1 when the movement is ended. 
	
![](./png/13.PNG)
#####6.Push notifications
The presence and disappearance of a smart device at Yunzi’s signal coverage area is capable to waken the “Yunzi" App according to the sensor’s feedbacks. “Yunzi" App will judge whether a push notification should be generated or not according to the sensor configurations. 

![](./png/14.PNG)
![](./png/15.PNG)
![](./png/16.PNG)

License
=======

Copyright 2014 Sensoro, Inc.

Licensed under the Apache License, Version 2.0: http://www.apache.org/licenses/LICENSE-2.0
