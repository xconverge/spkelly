---
title: "Website Update"
date: 2019-08-17
draft: false
featuredImg: ""
tags: 
---

Prior to this post, I had been hosting this website on a home server for a few years. It was originally just a project log using wordpress, without too much thought into how I would manage it.

Since 100% of the content is static, wordpress was overkill. For my use case, it was overcomplicated, slow-ish, and a potential security headache.

I considered converting all of the posts to individual HTML pages, with a decent index.html and some minor css. Upon investigating some of the latest frameworks (jekyll, hugo, react, etc) I decided on hugo which is written in Go https://gohugo.io/.

I chose this primarily for it's simplicity and speed for a static site. Building the site went pretty quickly, now all of my posts/projects are each a single markdown file, and adding a new project is as simple as adding a new markdown file.

The second phase of this project was to move hosting to something free. The site is so small (<100Mb) that I figured there had to be somewhere free to host it. I considered AWS free tier, but in the end went with Github Pages. I had seen quite a few .github.io pages in the past and wanted to see how straightforward it was to use for my use case.

I moved all of my sourcecode into a repository (https://github.com/xconverge/spkelly), pointed the repo to the docs/ folder and it was then publicly available! Easy. Next up was to add a CNAME record and switch to a custom domain name.

https://www.spkelly.com was now reborn!

Lastly, I hooked up a Cloudflare free tier account, so that the github pages content can be cached, sped up (even though the site does not have much in terms of overhead/comp), and readily available incase of outages. 

Another great benefit is that this solution offers SSL, so now the site can utilize HTTPS. Prior to this I needed to maintain my own SSL certificate from LetsEncrypt.