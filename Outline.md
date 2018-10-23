# Learn Canvas in 8 hours

## Summary

This docuemnt documents hte time I spent learning canvas. the resources I used as well and the roadbumps I encountered.

## What is Canvas

Canvas is a [kibana plugin](https://www.elastic.co/guide/en/kibana/current/kibana-plugins.html) for visuaizing data. It can be used for [Real Time Inforgraphics](https://www.elastic.co/elasticon/conf/2018/sf/creating-canvas-for-real-time-infographics-in-kibana), and Dasboards.

according to [The Elastic Blog](https://www.elastic.co/blog/elasticon-kibana-canvas-story-elasticoffee)...

> Currently available as a technology preview, __Canvas__ is a composable, extensible, creative space for live data. A great complement to Kibana dashboards, Canvas allows you to express your data in a highly polished way, whether it be in the boardroom, the NOC, or on your lobby displays

### The Coffee display from Elasticon 2018...

The Coffee Display:
![coffe display image](https://www.elastic.co/assets/blt8f3ab8bb150aad60/elasticon-canvas-story-elasticoffee-image.jpg)

The Annotated Coffee Display:
![annotated coffe display image](https://www.elastic.co/assets/blt149bec70960719d4/Screenshot_3_12_18__9_40_AM.png)

### Goals

>The  goal of Canvas is to be flexible, and allow you to tweak all bits and pieces required to get to the result you desire. Canvas presents you with a blank page to which you can add a selection of elements. These elements can be connected to data and configured with a simple UI. Within the sidebar you can play with palettes, fonts, background, borders and more. When there’s a style you have to have, but there isn’t a button, Canvas gives you the option of using raw CSS.

### Technology Preview

[The blog post](https://www.elastic.co/blog/canvas-tech-preview) announcing the __Canvas__ technology preview has this to say... 

>These rough cuts of Canvas are for those with a bit of curiosity, some imagination and a whole lot of crazy.

## Preprequsites

You have the following software installed...

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

**NOTE**: Be forwarned that this technology is rapidly developing so you will sometimes encounter documentation that is out of date.

* [The Canvas Site](https://canvas.elastic.co/) has many resources and is a good place to start.
* [The video series](https://canvas.elastic.co/videos/index.html) for visual learners.
* [The Canvas Docs](https://canvas.elastic.co/reference/index.html) : Read the Furnished Materials ;)

### SQL

[Elastic SQL](https://www.elastic.co/webinars/introduction-to-elasticsearch-sql) can we use as a data source for your __Canvas__ elements.

### Epression Language

All __Canvas Elements__ are stored as [Elastic Expressions](https://canvas.elastic.co/stories/expression-lifecycle.html)

Canvas exposes several functions...

1. [The Canvas Functions](https://canvas.elastic.co/reference/index.html)
2. [TinyMath Functions](https://canvas.elastic.co/reference/tinymath.html)
