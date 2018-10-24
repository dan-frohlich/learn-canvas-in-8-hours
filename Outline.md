# Getting Started With Canvas

## Summary

_The time I spent learning about canvas, the resources I used and the issues I encountered._

## What are Kibana Dashboards

![kibana dashboard image](resources/winlogbeat-dashboard.png)

## What is Canvas

* Infographics
* Reports
* Presentations
* Dashboards
* Digital displays & kiosks
* Live billboards

## What is Canvas (more formaly)

Canvas is a [kibana plugin](https://www.elastic.co/guide/en/kibana/current/kibana-plugins.html) for visualizing data. It can be used for [Real Time Inforgraphics](https://www.elastic.co/elasticon/conf/2018/sf/creating-canvas-for-real-time-infographics-in-kibana), and Dashboards.

__NOTE__: As of Fall 2018 Canvas is released as ***early access***

according to [The Elastic Blog](https://www.elastic.co/blog/elasticon-kibana-canvas-story-elasticoffee)...

> Currently available as a technology preview, __Canvas__ is a composable, extensible, creative space for live data. A great complement to Kibana dashboards, Canvas allows you to express your data in a highly polished way, whether it be in the boardroom, the NOC, or on your lobby displays

### The Coffee display from Elasticon 2018

![coffe display image](resources/elasticon-canvas-story-elasticoffee-image.jpg)

### The Annotated Coffee Display

![annotated coffe display image](resources/elasticon-canvas-story-elasticoffee-image-annotated.png)

### Always Up To Date Infographics

![current status image](resources/canvas_example_1.png)

### Goals

> The goal of Canvas is to be flexible, and allow you to tweak all bits and pieces required to get to the result you desire. Canvas presents you with a blank page to which you can add a selection of elements. These elements can be connected to data and configured with a simple UI. Within the sidebar, you can play with palettes, fonts, background, borders and more. When there's a style you have to have, but there isn't a button, Canvas gives you the option of using raw CSS.

### Technology Preview

[The blog post](https://www.elastic.co/blog/canvas-tech-preview) announcing the __Canvas__ technology preview has this to say... 

>These rough cuts of Canvas are for those with a bit of curiosity, some imagination and a whole lot of crazy.

## Prerequisites

You have the following software installed...

1. [git](https://git-scm.com/)
2. [docker](https://www.docker.com/)
3. [docker-compose](https://docs.docker.com/compose/)

## Getting started

A docker repo is available to launch a local elastic stack with Canvas enabled.

1. `git clone https://github.com/dan-frohlich/docker-elk` - _get the code_
2. make sure your Docker instance has at least 3G of RAM allocated.
3. `cd docker-elk` - _enter the code folder_
4. `git checkout canvas` - _switch to the canvas branch_
5. `docker-compose build` - _build the docker images - __this requires 3G RAM___
6. `docker-compose up` - _run the elastic stack_
7. [browse to kibana](http://localhost:5601/app/canvas)

## Learning Canvas

**NOTE**: Be forewarned that this technology is rapidly developing so you will sometimes encounter documentation that is out of date.

* [The Canvas Site](https://canvas.elastic.co/) has many resources and is a good place to start.
* [The video series](https://canvas.elastic.co/videos/index.html) for visual learners.
* [The Canvas Docs](https://canvas.elastic.co/reference/index.html) : Read the Furnished Materials ;)

### SQL

[Elastic SQL](https://www.elastic.co/webinars/introduction-to-elasticsearch-sql) can we use as a data source for your __Canvas__ elements.

### Expression Language

All __Canvas Elements__ are stored as [Elastic Expressions](https://canvas.elastic.co/stories/expression-lifecycle.html)

The Expression language uses pipes (`|`) to source, manipulate and display data.

```plaintext
esdocs fields=bytes,@timestamp
| staticColumn column=total value={math 'sum(bytes)'}
| head '10'
| mapColumns column=@timestamp, fn=${getColumn @timestamp | rounddate 'YYYY-MM-DD'}
```

Canvas exposes several functions...

1. [The Canvas Functions](https://canvas.elastic.co/reference/index.html)
2. [TinyMath Functions](https://canvas.elastic.co/reference/tinymath.html)

### GO PAINT A PICTURE

[your local canvas](http://localhost:5601/app/canvas)