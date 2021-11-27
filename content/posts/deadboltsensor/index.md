---
title: "Deadbolt Sensor"
date: 2021-05-01
draft: false
featuredImg: ""
tags:
---

I added a [Zigbee](https://en.wikipedia.org/wiki/Zigbee) mesh network to my home automation setup using a Conbee II usb adapter. https://phoscon.de/en/conbee2

![](conbee2.jpg)

This allows me to add low powered sensors and switches to control lights and other things. I primarily got it because the light switch for the backyard lights is OUTSIDE. So when the raccoons come, the only way to turn on the lights would be to go outside WITH the raccoons to turn on the lights. I put a smart light switch there, and then a small zigbee button by the back door that triggers the light to turn on and off through an automation in home assistant.

Now that I had this network, I wanted to have the ability to know whether or not the doors are locked/unlocked. I tried a smart lock first, but it was deemed "too ugly" and large.

![](wyze.webp)

Since I didn't need the ability to lock/unlock, I decided to try to come up with a way to just make the dumb-deadbolt, a smart-deadbolt.

Here is the finished product using a cheap reed switch wireless door sensor. I opened it up, removed the reed switch, and soldered 2 wires to the contact points the reed switch was bridging.

![](sensor_finished.jpg)

I then ran the 2 wires to some battery springs. The mess of the door jamb was not me, that is a project for another day I suppose...

![](sensor_1.jpg)

For some reason, the deadbolt was not conductive. I put a meter on it and could not get a tone, so decided to just put some HVAC aluminum tape (I don't have any copper tape laying around).

![](sensor_2.jpg)

When the deadbolt closes, it touches and bridges the 2 springs inside, and then transmits its state change to the conbee II and zigbee network, which get relayed to home assistant and then report the state of the lock on a nice dashboard.

![](sensor_3.png)

> **Edit: 11-2021**
>
> I have switched from the janky springs/contact sensing to using reed sensors and magnets. I was having issues with the foil tape ripping slightly along with the deadbolt needing to be FULLY FULLY locked instead of just mostly locked, both of which caused mis-readings. This means no wear and tear due to contact, no misreading, and it is reliable.
>
> ![](updated_1.jpg)
>
> ![](updated_2.jpg)

For the other door I had more room to work with and was able to make a nice hole for the wires to do a cleaner install on the inside. For the sensor I used a limit switch and some foam to wedge it in place. A bit wonky but it works, and would be easy to adjust later if needed since there is much more room in this door jamb than the other door.

![](sensor2_1.jpg)

![](sensor2_2.jpg)

I setup up an automation in [node-red](https://nodered.org/)/homeassistant to detect if the doors are unlocked after a certain time, to send a notification to my phone.

![](automation.png)
