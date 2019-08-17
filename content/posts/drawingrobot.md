---
title: "Drawing Robot"
date: 2013-09-12
draft: false
featuredImg: ""
tags: 
---

This was a quick Friday afternoon project that turned into a demo of precise machine control for dispensing applications.

I wrote a GCode interpreter in C# that converts GCode to V+ which was used to control the Adept robot with the marker on the end. GCode is a language commonly used in machining and CNC primarily.

I then used a python based image to GCode library to convert images to GCode paths.

The last step was to run the GCode through my interpreter and see what comes out the other side…

![](/drawingrobot/robot_daftpunk.jpg)

A bit abstract but not bad for a first run, after some tweaks to the python script for thresholds and edge finding I got some crisper results.

A few different drawings…

![](/drawingrobot/robot_portrait.jpg)