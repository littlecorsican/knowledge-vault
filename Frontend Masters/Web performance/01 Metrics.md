# Metrics

## Legacy Metrics
## Core Web Vitals

Bookmark Day 2 28:00

## Waterfall chart
Start --> Queue Connecting --? Document Request Waiting --> End --> Content Downloading --> End

HTML Document --> Stylesheet --> Javascript --> images --> fonts --> fetch/Others

## Legacy Metric
### DOMContentLoaded - HTML downloaded, and deferred script has executed but images might not. Structure of page is done but image not displayed.

```
window.addEventListener("DOMContentLoaded", (e)=>{
    console.log(e.timeStamp)
})
```

### Load
HTML and all known resources are downloaded and rendered except those that are lazy load

```
window.addEventListener("load", (e)=>{
    console.log(e.timeStamp)
})
```

### Problem with legacy metrics
Load means document ready
No longer relevant after Client side rendering invented


## Core Web Vitals
### LCP - Largest Contentful Paint
How fast your sites loads the most visibly important element
eg 
<img>
<video>
css:background-image
Largest = Opacity > 0, Size < 100%, Low Entropy images < 0.05
Entrophy = Bits per Pixel
LCP < 2.5 sec = Good
LCP > 4 sec = poor

### CLS - Cumulative Layout Shifts
DOM elements that keep on moving as the page is loading
Layout shift value - how much the page/viewport has move and is impacted by loading. Calculated by Impact Fraction X Distance Fraction
Viewport - the part of the window that user can see
How to prevent layout shift? - put a placeholder there, so that things dont have to reorganise around it. Specify a size before it loads.
Layout shift is more severe on mobile due to small screen
Cumulative - the sum of ALL layout shift
Only shift after 500ms , not including scrolling
< 0.1 = good
> 0.25 = bad

### Flame Chart


### INP - Interaction to next paint
How quickly user feel like they can interact with your website
Interaction - click, drag, touch, keypress but NOT scroll
Measures the time between input receive to frame is presented.
Everytime user interacts with the webpage, the browser will capture the INP (in ms), and pick the worse 1

##