#!/usr/bin/env bash

set -o nounset

cat << END
<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
      /* Slideshow styles */
      img{
        object-fit: contain;
        width: 100%;
        border: thin solid cornflowerblue;
      }
    </style>
  </head>
  <body>
     <textarea id="source">
layout: true
background-image: url(resources/watercolor.jpeg)
*https://github.com/dan-frohlich/learn-canvas-in-8-hours*

---

${MARKDOWN}
    </textarea>
     <script src="remark/remark-latest.min.js">
    </script>
    <script>
       var slideshow = remark.create();
    </script>
  </body>
</html>
END