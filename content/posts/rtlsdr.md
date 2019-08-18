---
title: "RTL-SDR"
date: 2019-06-29
draft: false
featuredImg: ""
tags: 
---

SDR (Software defined radio) is a technology that shrinks all of the amplifiers/mixers/components of a radio system into a tiny USB dongle and some computer software.

This is the kit I bought for $30:
![](/rtlsdr/rtlsdrkit.jpg)
https://www.amazon.com/RTL-SDR-Blog-RTL2832U-Software-Telescopic

Then I installed some free software SDR# which allows you to tune filters and gain and install plugins.

First up, I wanted to try and capture data from a NOAA satellite as it passed overhead. These satellites are constantly transmitting data/images at 137Mhz and when in range, this data can easily be received and decoded.

I setup my antenna for this particular type of signal and frequency range using this diagram:
![](/rtlsdr/adams_V-dipole.png)
  
![](/rtlsdr/antenna.jpg)

Then I opened up a program called WxTrack, put in my lat/long and was able to determine when the next pass would be.

![](/rtlsdr/wxtrack.png)

I put my antenna outside, waited for the pass to start, and then started recording the audio as it was transmitted.

![](/rtlsdr/noaa_waveform.png)

Once the signal disappeared, I stopped the recording, and ran the file through [noaa-apt](https://github.com/martinber/noaa-apt) which then helped generate this image!

![](/rtlsdr/test1.jpg)

Next up I wanted to try and receive data from a newer satellite known as METEOR-M2. This is a newer russian satellite that transmits a digital signal. There was another METEOR satellite that was supposed to be launched in 2017, however didn’t make it successfully to be operational. This digital signal then has to be demodulated and decoded into the image. This satellite has images that are ~10x higher resolution than the older NOAA satellites, however there is currently only 1 operational (vs ~4 for NOAA) so there are limited opportunities to receive data. Another is planned to be launched in July 2019, so we will see what sort of data that transmits! Here is the wave form during the METEOR-M2 pass:

![](/rtlsdr/meteor-m2_waveform.png)

And then here is what was generated from the decoding of the data!

![](/rtlsdr/2019-6-29-10-29-47-795-rectified.jpg)

Next I wanted to track airplanes near me using their ADS-B protocol. This is a signal coming in at 1090Mhz so this is the antenna configuration necessary:

![](/rtlsdr/antenna2.jpg)

I ran some software called RTL1090 which uses the hardware to decode the data being received and send it via TCP to PlanePlotter which shows the planes in a visual way

![](/rtlsdr/Capture.png)

I verified with FlightAware that this data/flights/call signs matched!

![](/rtlsdr/Capture2.png)