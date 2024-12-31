---
title: "Guitar Pedal Custom PCB"
date: 2024-08-14
draft: false
featuredImg: ""
tags:
---

Even though I have an electrical engineering degree, I have never actually designed a PCB layout or had a PCB manufactured. I figured a simple clone of a known guitar pedal circuit would be a great place to start!

I had previously built a pedal with a purchased PCB (~$12) and was curious to see if I could make a PCB for cheaper than that or at least in the same ballpark...

Here are a few pictures of that pedal and process:

![](beod_3.jpg)

![](beod_1.jpg)

![](beod_2.jpg)

That pedal was a clone of the Friedman BE-OD and the PCB was from [aionfx](https://aionfx.com/project/tempest-amp-distortion/). It sounds great and I use it everyday!

The [Pro Co RAT](https://en.wikipedia.org/wiki/Pro_Co_RAT) is a classic guitar distortion pedal that has been around since the late 1970s.

I did some quick googling and came to the conclusion that https://www.kicad.org/ would be the best option for me to go down this route with.

I didn't want to do too much design/engineering of the actual circuit at this point because PCB manufacturing was the main goal of this project. I mostly just used the schematic directly from [PedalPCB's](https://www.pedalpcb.com/product/pcb038/) version of a RAT.

Here is the schematic I ended up with in KiCad.

![](schematic.png)

Here is an early screenshot I took of my learning progress before redoing all of the layout and traces.
![](1.jpg)

Here is the final PCB showing the 2 copper layers I used for traces (blue and red). I kept all of the trace widths to ~0.6mm for power and signal for simplicity even though the signal traces could certainly be smaller.

![](final_1.png)

Here is the final 3D view of the PCB from KiCad.

![](final_2.png)

Now that the design was done, it was time to get it manufactured. I checked https://jlcpcb.com/ and https://oshpark.com/ and went with JLCPCB. I exported my project files from KiCad, uploaded them to JLCPCB, and was brought to the order page for a grand total of....

![](order_1.png)

![](order_3.png)

Less than $5 for 5 boards shipped from China...wow. I am not sure what I expected but this was even cheaper than I expected.

![](order_2.png)

I then had to wait a few weeks for the boards to arrive. In the meantime I placed an order for all of the electronic components, the enclosure, and the knobs, so that once the boards arrived I could start to put it all together!

When the components arrived, I drilled and started on the enclosure. Since I designed the PCB potentiometer spacing and had the measurements, I was pretty confident things would fit... It is also easiest to solder the populated/finished PCB onto the potentiometers in the enclosure instead of soldering the potentiometers to the board and THEN trying to fit it all into the holes of the enclosure.

![](enclosure_1.jpg)

I sanded the raw aluminum to ~320 grit, didn't go too crazy...

![](enclosure_2.jpg)

My PCBs arrived!

![](pcbs.jpg)

Test fit...and it all fit perfectly!

![](testfit.jpg)

I then populated all of the components. I didn't need to populate C6 because I am using the OP07 instead of a LM308 for the main IC. I also changed the LED resistor from 4.7k to 10k because I know I hate bright LEDs.

![](progress.jpg)

It all fits, kind of a pain to wire up but hopefully it just works and I don't need to pull it out...

![](populated.jpg)

It's alive! The only adjustment I had to make was I had soldered to the wrong pins for the tip part of the 1/4" jacks for input and output.

![](working.jpg)

Labeled and ready to go!

![](labeled.jpg)

Reference:
https://www.electrosmash.com/proco-rat

#### Edit: December 2024

I made another PCB for a blend circuit to combine a rectifier type pedal and a marshall type pedal in a single pedal. The rectifier circuit inverts the phase so the blend circuit also includes a phase inversion so that both pedals are in-phase.

Here is the schematic for the blend and phase inversion PCB:
![](combo_1.png)

The rendering from KiCad before getting it built by JLCPCB...($4.50 for 5 boards!)
![](combo_2.png)

Tight fit once the boards arrived!
![](combo_3.jpg)

Success!
![](combo_4.jpg)
