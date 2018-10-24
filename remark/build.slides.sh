#!/usr/bin/env bash

export MARKDOWN=$(cat ../Outline.md | sed  $'s/^##/---\\\n&/g' ) 
#export MARKDOWN=$(cat ../Outline.md) 

./index.html.gen.sh > ../slideshow.html 
