#!/usr/bin/env bash

export MARKDOWN=$(cat ../Outline.md | sed  $'s/^##/---\\\n&/g' ) 

./index.html.gen.sh > ../slideshow.html 
