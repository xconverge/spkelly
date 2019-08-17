#!/bin/sh
rm -rf docs/*
hugo
git checkout docs/CNAME
git add docs/
