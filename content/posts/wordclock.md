---
title: "Word Clock"
date: 2013-03-24
draft: false
featuredImg: ""
tags: 
---

This was a rushed project that actually turned out pretty well from the outside! It was based mostly on this instructable as the inspiration and reference

First I went to office max and had 3 or 4 transparencies printed out with the pattern I wanted for the front. I wanted multiple copies so that when I put them all on top of eachother, the darkened black sections were truly opaque.

![](/wordclock/wordclock1.jpg)

I used a ribbon cable for all of the LEDs so that the control board could easily be removed from the led/frame section. I opted to use an atmega328 programmed with the arduino bootloader. This was the first time doing this without just using an off the shelf arduino. For the cost of a microcontroller, oscillator, and capacitor, this is very handy for future use! I used an arduino that I already had, swapped chips, programmed the bootloader, then removed my freshly programmed chip and put it onto my protoboard (socketless like a maniac).

I finished wiring up the circuit, the shift registers, etc before moving on to the programming of the atmega328.

![](/wordclock/wordclock2.jpg)

Not exactly kosher protoboard usage but it will work for this…

![](/wordclock/wordclock3.jpg)

I created some baffles from some cardboard I had laying around….and started to feed in the led strips for each section.

Once all of the hardware was in place, I modified some of the existing code to match the pinouts that I was using and was good to go!

![](/wordclock/wordclock4.jpg)

Done!