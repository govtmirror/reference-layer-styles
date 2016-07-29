@water: rgb(75, 75, 75);
@land: rgb(128, 128, 128);

Map {
  background-color: @land;
}
#water [boundary !='yes'][zoom>=0][zoom<=15] {
  polygon-fill:white;
  polygon-comp-op: clear;
  }
#water [zoom>=9] [kind='river']{
    line-color: blue;
  
 
}
/*
#earth [boundary='yes'] {
 polygon-fill: @land;
  }
*/
  /*
  line-width: 1;
  line-color: #fff;
  */
  
/*
#earth {
  polygon-fill: rgba(75, 75, 75, 1);
  polygon-comp-op: dst-over;
}
*/


