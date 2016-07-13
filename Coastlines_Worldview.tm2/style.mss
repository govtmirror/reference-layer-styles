@coastline-color-light: #bcc; //#ddd;
@coastline-color-dark: #011; //#ff0;

/*#water [boundary= 'yes'] {
  line-width: 1; 
  line-color: @coastline-color-light;
    }

    
#earth [boundary= 'yes'] {
  line-width: 1;
  line-color: @coastline-color-light;  
}
*/

#water [boundary= 'yes'][zoom>=0][zoom<=2] { 
  
    ::underlay1 {
    line-color: @coastline-color-light;
    //line-width: 0.5;
    [zoom=0] { line-width: 0.2; }
    [zoom=1] { line-width: 0.6; }
    [zoom=2] { line-width: 0.6; }
    
    line-opacity: 1.0;
    line-join: round;
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
  }
  
  	/*
  	line-color: @coastline-color-dark;
  	
    [zoom=0] { line-width: 0.1; }
    [zoom=1] { line-width: 0.2; }
    [zoom=2] { line-width: 0.3; }
  	*/
}

#water [boundary= 'yes'] [zoom>=3][zoom<=4] {

  ::underlay1 {
    line-color: @coastline-color-light;
    line-width: 0.55; //@coastline-line-width;
    line-opacity: 1.0;
    line-join: round;
  }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.55; //@coastline-line-width;
    line-offset:  0.55; //@coastline-line-width;
    line-opacity: 1.0;
    line-join: round;
  }
  
/*
  	line-color: @coastline-color-dark;
  
  	[zoom=3] { line-width: 0.4; }
    [zoom=4] { line-width: 0.5; } 
*/
}

#water [boundary= 'yes'] [zoom>=5][zoom<=6] {

  ::underlay1 {
    line-color: @coastline-color-light;
    line-width: 0.75;
    line-opacity: 1.0;
    line-join: round;
  }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.75;
    line-offset:  0.75;
    line-opacity: 1.0;
    line-join: round;
  }

  
//  line-color: @coastline-color-dark;
//  line-width: 0.5;
}

#water [boundary= 'yes'][zoom>=7] {

  ::underlay1 {
    line-color: @coastline-color-light;
    line-width: 0.75;
    line-opacity: 1.0;
    line-join: round;
  }

  ::overlay {
    line-color: @coastline-color-dark;
    line-width:  0.75;
    line-offset:  0.75;
    line-opacity: 1.0;
    line-join: round;
  }  
  
//  line-color: @coastline-color-dark;
//  line-width: 0.5;
} 

