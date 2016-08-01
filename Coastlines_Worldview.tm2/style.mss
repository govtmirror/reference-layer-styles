@coastline-color-light: #bcc; //#ddd;
@coastline-color-dark: #011; //#ff0;

/*
#water {
 
  line-width: 1;
  line-color: #fff;
  line-opacity: 1.0;
  line-join: round;
  polygon-fill: #fff;
  polygon-comp-op: clear;
    }
*/

#water [boundary='yes'][zoom>=0][zoom<=8] { 
  
    ::underlay1 {
    line-color: @coastline-color-light;
    line-width: 0.75;
    line-opacity: 1.0;
    line-join: round;
     }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.75;
    line-opacity: 1;
    line-offset: 0.75;
    line-join: round;
    }
}

#water [boundary='yes'][zoom>=9][zoom<=15]{ 
  [zoom>=9] [area>10000000],
  [zoom>=10] [area>8000000],
  [zoom>=11] [area>2000000],
  [zoom>=12] [area>200000],
  [zoom>=13] [area>100000],
  [zoom>=14] [area>2000],
  [zoom>=15] [area>1000] 
  
    ::underlay1 {
    line-color:@coastline-color-light;
    line-width: 0.75;
    line-opacity: 1.0;
    line-join: round;
     }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.75;
    line-opacity: 1;
    line-offset: 0.75;
    line-join: round;
    }
}

