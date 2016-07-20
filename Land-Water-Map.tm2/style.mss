@water: rgb(75, 75, 75);
@land: rgb(128, 128, 128);


Map {
  background-color: @land;
}

#water [boundary !='yes'][zoom>=2] {
  polygon-fill:@water;
  polygon-gamma: 0.6;
}
  
#water [zoom>=9] [boundary='yes']{
    line-color:#000;
     }
#earth [boundary='yes'] {
 polygon-fill: @land;
  }

/*
#water {
  ::shadow {
    polygon-fill: rgb(128, 128, 128);
  }
 
  ::fill {
    // a fill and overlay comp-op lighten the polygon-
    // fill from ::shadow.
    polygon-fill: rgb(3, 81, 113);
    comp-op: soft-light;
    // blurring reveals the polygon fill from ::shadow around
    // the edges of the water
    image-filters: agg-stack-blur(10,10);
  }
} */

/* #water {
  polygon-fill: rgba(128, 128, 128, 1); 
}
*/