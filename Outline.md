# Learn Canvas in 8 hours

## Summary

This docuemnt documents hte time I spent learning canvas. the resources I used as well and the roadbumps I encountered.

## What is Canvas

Canvas is a [kibana plugin](https://www.elastic.co/guide/en/kibana/current/kibana-plugins.html) for visuaizing data. It can be used for [Real Time Inforgraphics](https://www.elastic.co/elasticon/conf/2018/sf/creating-canvas-for-real-time-infographics-in-kibana), and Dasboards.

according to [The Elastic Blog](https://www.elastic.co/blog/elasticon-kibana-canvas-story-elasticoffee)...

> Currently available as a technology preview, __Canvas__ is a composable, extensible, creative space for live data. A great complement to Kibana dashboards, Canvas allows you to express your data in a highly polished way, whether it be in the boardroom, the NOC, or on your lobby displays

![coffe display image](https://www.elastic.co/assets/blt8f3ab8bb150aad60/elasticon-canvas-story-elasticoffee-image.jpg)

![marked-up coffe display image](https://www.elastic.co/assets/blt149bec70960719d4/Screenshot_3_12_18__9_40_AM.png)

## Preprequsites

I assume you have...

1. [git](https://git-scm.com/)
2. [docker](https://www.docker.com/)
3. [docker-compose](https://docs.docker.com/compose/)

## Getting started

A docker repo is availabe to launch a local elastic stack with Canvas enabled.

1. `git clone https://github.com/dan-frohlich/docker-elk` - _get the code_
2. make sure yoru Docker instance has at least 3G of RAM allocated.
3. `cd docker-elk` - _enter the code folder_
4. `git checkout canvas` - _switch to the canvas branch_
5. `docker-compose build` - _build the docker images - __this requires 3G RAM___
6. `docker-compose up` - _run the elastic stack_
7. [browse to kibana](http://localhost:5601/app/canvas)

## Learning Canvas

[The Canvas Site](https://canvas.elastic.co/) has many learnign resources and is a good place to start