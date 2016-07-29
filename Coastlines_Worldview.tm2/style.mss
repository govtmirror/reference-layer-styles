@coastline-color-light: #bcc; //#ddd;
@coastline-color-dark: #011; //#ff0;
/*
#water {
 
  line-color: #fff;
  line-join: round;
  polygon-fill: #fff;
  polygon-comp-op: clear;
 
    }

*/


#water [zoom>=0][zoom<=2] { 
  
    ::underlay1 {
    line-color: @coastline-color-light;
    //line-width: 0.5;
    [zoom=0] { line-width: 0.2; }
    [zoom=1] { line-width: 0.6; }
    [zoom=2] { line-width: 0.6; }
    
    line-opacity: 1.0;
    line-join: round;
    polygon-fill: #fff;
    polygon-comp-op: clear;
  }

  ::overlay {
    line-color: @coastline-color-dark;
    //line-width:  0.5;
    [zoom=0] { line-width: 0.1; }
    [zoom=1] { line-width: 0.1; }
    [zoom=2] { line-width: 0.2; }
    line-offset: 0.4;
    line-opacity: 1.0;
    line-join: round;
    polygon-fill: #fff;
    polygon-comp-op: clear;
  }
}

#water [zoom>=3][zoom<=4] {

  ::underlay1 {
    line-color: @coastline-color-light;
    line-width: 0.55; //@coastline-line-width;
    line-opacity: 1.0;
    line-join: round;
  polygon-fill: #fff;
  polygon-comp-op: clear;
  }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.55; //@coastline-line-width;
    line-offset:  0.55; //@coastline-line-width;
    line-opacity: 1.0;
    line-join: round;
    polygon-fill: #fff;
    polygon-comp-op: clear;
  }
}

#water [zoom>=5][zoom<=6] {

  ::underlay1 {
    line-color: @coastline-color-light;
    line-width: 0.75;
    line-opacity: 1.0;
    line-join: round;
    polygon-fill: #fff;
    polygon-comp-op: clear;
  }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.75;
    line-offset:  0.75;
    line-opacity: 1.0;
    line-join: round;
    polygon-fill: #fff;
    polygon-comp-op: clear;
  }

}

#water [zoom>=7] {

  ::underlay1 {
    line-color: @coastline-color-light;
    line-width: 0.75;
    line-opacity: 1.0;
    line-join: round;
    polygon-fill: #fff;
  polygon-comp-op: clear;

  }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.75;
    line-offset:  0.75;
    line-opacity: 1.0;
    line-join: round;
    polygon-fill: #fff;
    polygon-comp-op: clear;
  }  
} 
