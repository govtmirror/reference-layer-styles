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

#water { 
  
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
    line-opacity: 1.0;
    line-join: round;
    polygon-fill: #fff;
    polygon-comp-op: clear;
  }
}


