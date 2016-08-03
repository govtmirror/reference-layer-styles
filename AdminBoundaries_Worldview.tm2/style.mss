@smooth: 				0; 
@country-line-width: 1.0;
@country-border-case-color: #bcc; //#444;
@country-border-fill-color: #122; //#cc8

@country-light: #dee; //#adb9b9; // #249590; //#558;
@country-dark: #011; //#d35529; //#ebb;;

@state-border-case-color: #818792;
@state-border-fill-color: #aaa;

@coastline-color-light: #bcc; //#ddd;
@coastline-color-dark: #011; //#ff0;

// ===== Coastlines and lakes
/*
#earth [boundary='yes'] {
  line-width: 1;
  line-color: rgba(236, 226, 226, 0.5);
}
*/

#water [boundary='yes'] {
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

// ===== Roads
#roads [zoom>=8] {
    [kind='highway'] {
    line-color: #747926;
    line-width: 0.5;
    line-opacity: 1.0;
}
    [zoom>=9] [kind='major_road'] {
    line-color: #747926;
    line-width: 0.25;
    line-opacity: 1.0;
  }
  }

// ===== Country borders

#boundaries {
  [admin_level=2] {
  ::case {
     line-color:@country-border-case-color;
     line-join: round;
     line-cap: round;
     [zoom=3] { line-width: 1.0; }
     [zoom=4] { line-width: 1.2; }
     [zoom=5] { line-width: 1.4; }
     [zoom=6] { line-width: 1.6;  }
     [zoom=7] { line-width: 2.9;  }
     [zoom=8] { line-width: 3.5;  }
     [zoom>=9] { line-width: 5.5;  }    
  }
  ::fill {
     line-color:@country-border-fill-color;
     line-join: round;
     line-cap: round;
     [zoom=3] { line-width: 1.0; line-opacity: 0.30; }
     [zoom=4] { line-width: 1.0; line-opacity: 0.30; }
     [zoom=5] { line-width: 1.0; line-opacity: 0.35; }
     [zoom=6] { line-width: 1.0; line-opacity: 0.5; }
     [zoom=7] { line-width: 1.3;  line-opacity: 0.9; } 
     [zoom=8] { line-width: 2.0;  line-opacity: 0.9; } 
     [zoom>=9] { line-width: 3.5; line-opacity: 1.0; } 
  }
}
  // ===== Disputed country borders
  
  [zoom=4] [kind='disputed'] {
    ::case {
     line-width: 1;
     line-color: @country-border-case-color;
     line-dasharray: 3, 4;
     line-join: round;
     line-cap: round;
  }
    ::fill {
     line-width: 0.5;
     line-color:@country-border-fill-color;
     line-join: round;
     line-cap: round;
     line-color: rgba(7,6,6,0.5);
     line-dasharray: 3, 4;
     }
  }
  
  //===== State borders
  
  [admin_level=4][zoom>=4] {
    
    ::case {
    line-cap: round;
	line-color: @state-border-case-color;
      
    [zoom=4] { line-width: 0.4; }
    [zoom=5] { line-width: 0.4; }
  	[zoom=6] { line-width: 0.6; }
    [zoom=7] { line-width: 0.7; }
    [zoom=8] { line-width: 0.8; }
  	[zoom=9] { line-width: 0.9; }
    [zoom=10] { line-width: 0.9; }
    [zoom=11] { line-width: 0.9; }
    [zoom>=12] { line-width: 1; }
  }
  
  ::fill {
    line-cap: round;
	line-color: @state-border-fill-color;

	[zoom=4] { line-width: 0.1; }
    [zoom=5] { line-width: 0.1; }  
  	[zoom=6] { line-width: 0.2; }
    [zoom=7] { line-width: 0.2; }
    [zoom=8] { line-width: 0.4; }
  	[zoom=9] { line-width: 0.5; }
    [zoom=10] { line-width: 0.6; }
    [zoom=11] { line-width: 0.7; }
    [zoom>=12] { line-width: 0.8; }
  }
}
      
  //===== County borders
  
  [admin_level=6][zoom>=10] {
    line-color: @state-border-fill-color;
    line-width: 0.8;
    line-offset: 0.4;
    line-dasharray: 5, 2;
    } 
  
  //===== Turn off maritime boundaries
  
   [maritime_boundary='yes'] [zoom>=8] {
   ::case {
    line-comp-op: clear;
    line-width: 2;
    line-color: #bdd0cd;
    } 
    
    ::fill {
    line-comp-op: clear;
    line-width: 2;
    line-color: #bdd0cd;
    } 
}
}
  

