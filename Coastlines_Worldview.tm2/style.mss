@coastline-color-light: #bcc; //#ddd;
@coastline-color-dark: #011; //#ff0;

@land: rgb(128, 128, 128);
 /*
Map {
  background-color: @land;
}

#water [boundary=1]{

  line-width: 1;
  line-color: #fff;
  line-opacity: 1.0;
  line-join: round;
  polygon-fill: #fff;
  polygon-comp-op: clear;
    }

*/
  
#water [boundary=1][zoom>=0][zoom<=8] { 
 ::underlay1 {
    line-color: @coastline-color-light;
    line-width: 0.75;
    line-opacity: 1.0;
    line-join: round;
     }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.75;
    line-opacity: 1.0;
    line-offset: 0.75;
    line-join: round;
    }
}

#water [boundary=1][zoom>=9][zoom<=15] {
 
 
    ::underlay1 {
    line-color:@coastline-color-light;
    line-width: 0.75;
    line-opacity: 1.0;
    line-join: round;
     }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.75;
    line-opacity: 1.0;
    line-offset: 0.75;
    line-join: round;
    }
}
 

