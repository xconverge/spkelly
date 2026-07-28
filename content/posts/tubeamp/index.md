---
title: "Guitar Tube Amp and Speaker Cabinet"
date: 2026-04-03
draft: false
featuredImg: ""
tags:
---

After a bunch of analog and digital pedals, it was time to tackle vacuum tubes and an amplifier!

I wanted a Marshall style JCM800 amplifier, but for home levels, I did not a full 50W of output. I found this 1W kit from Mojotone and it was exactly what I was looking for.

https://mojotone.com/products/mojotone-studio-one-1-watt-2-channel-guitar-tube-amp-kit

I did not allow myself to start building this until I understood every aspect of the schematic.

Resources used for learning:
https://robrobinette.com/Amp_Stuff.htm
https://www.youtube.com/@UncleDoug/videos

![](schematic.png)

The changes I made to the schematic/wiring were:

- Added a 1M pulldown resistor at the output of the clean channel before it goes into the relay to avoid footswitch pops when changing channels
- Added a DPDT ON-OFF-ON toggle switch with a 100pF/None/500pF options for the brightness capacitor on the clean channel
- FX loop
  - IN/OUT inserted between the relay out and the 22nF capacitor with shielded wires
  - Power supplied by XB at the filter capacitor with an inline 4.7k resistor
- Ground the input to the dirty channel when the clean channel is active to prevent any crosstalk/distortion in the background
  - Separate shielded wire, with a 68k grid stop resistor, from input jack to input of grid (V1A) for clean channel
  - Separate shielded wire from input jack to unused common of 2nd pole on the relay switch board
  - Shielded wire from 2nd pole on the relay switch board when dirty channel is active, to the input of grid (V2A) with an inline 68k grid stop resistor
  - Ground wire from 2nd pole on the relay switch board to ground (on master volume pot) when clean channel is active

![](wiring.png)

Transformer specifications:

![](MOJO779.jpg)

![](MOJO1580.jpg)

Time to start assembly of the turret board. First I used an oscilloscope and my fingers to identify which lead was for the outer foil for each capacitor. 

https://www.nutsvolts.com/magazine/article/finding-the-outside-foil-lead

My oscilloscope wasn't quite sensitive enough, so I actually amplified the signal a bit with a J113 JFET and that worked perfectly, very easy to determine which lead was the outer foil when I pinched the body of the capacitor with my fingers.

Even though they are non-polarized capacitors, you can orient them in a specific way to reduce noise even further.

![](amp_1.jpg)

![](amp_2.jpg)

Turret board completed.
![](amp_3.jpg)

Wiring the heater circuit for the tubes and the power transformer.

![](amp_4.jpg)

Start to populate more of the components and wire them up for the input side and the output side.

![](amp_5.jpg)

![](amp_6.jpg)

![](amp_7.jpg)

![](amp_8.jpg)

![](amp_9.jpg)

![](amp_10.jpg)

![](amp_11.jpg)

I added a FX loop so that I can use modulation effects with the overdrive/dirty channel of the amp.

![](amp_12.jpg)

Filter capacitor all wired up.

![](amp_13.jpg)

Time to build a cabinet for the head.

![](head_cabinet_6.jpg)

![](head_cabinet_1.jpg)

Clearance is clearance?

![](head_cabinet_2.jpg)

![](head_cabinet_3.jpg)

![](head_cabinet_4.jpg)

![](head_cabinet_5.jpg)

![](head_cabinet_7.jpg)

![](head_cabinet_8.jpg)

![](head_cabinet_9.jpg)

![](head_cabinet_10.jpg)

![](head_cabinet_11.jpg)

Time to make a speaker cabinet next, I wanted a single 12" Celestion V30 speaker, with a closed back cabinet, and an option to open the back.

![](speaker_cabinet_1.jpg)

![](speaker_cabinet_2.jpg)

![](speaker_cabinet_3.jpg)

![](speaker_cabinet_4.jpg)

![](speaker_cabinet_5.jpg)

![](speaker_cabinet_6.jpg)

![](speaker_cabinet_7.jpg)

![](complete_1.jpg)

![](complete_2.jpg)

Overall this was a very fulfilling project, I learned a lot and it sounds great!