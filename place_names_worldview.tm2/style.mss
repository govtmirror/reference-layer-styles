@text-fill: #eee;
@text-halo-radius: 1.5; //3;
@text-halo-radius-zoomed: 1.7;
@text-halo-fill: #222; //#444;
@text-wrap-width: 30;
@text-repeat-distance: 5;
@text-placements: "X,N,S,E,W,NE,SE,NW,SW";
@placement-offset: 3;
@tile-pad: 2;

@marine-label-text-fill: red; //#eef;
@marine-opacity: 0.9; //0.7;

//--- Sea and Lake Labels
#water [boundary='yes'] {
  line-width: 1;
  line-color: rgba(136,170,238,0.5);
  }

#water [kind='sea'] {
  text-name: [name];
  text-face-name: 'Clan Offc Pro Medium'; 
  text-size: 10;
  text-fill: @marine-label-text-fill;
  text-halo-fill: @text-halo-fill;
  text-halo-radius: @text-halo-radius;
  text-wrap-width: @text-wrap-width;
  text-wrap-before: true;
  text-avoid-edges: true;
  text-repeat-distance: 40;
  text-opacity: @marine-opacity;
   [[name]='South Sea']  { text-name: '"South China Sea"'; }
  
  [scalerank=0][zoom>=2] { text-size: 11; text-opacity: @marine-opacity * 0.8; }
  [scalerank=1][zoom>=3] { text-size: 11; text-opacity: @marine-opacity; }
  [scalerank=2][zoom>=4] { text-size: 10; text-opacity: @marine-opacity; }
  [scalerank=3][zoom>=4] { text-size: 10; text-opacity: @marine-opacity; }
  [scalerank=4][zoom>=5] { text-size: 10; text-opacity: @marine-opacity; }
  [scalerank=5][zoom>=6] { text-size: 10; text-opacity: @marine-opacity; }
  [scalerank=6][zoom>=7] { text-size: 10; text-opacity: @marine-opacity; }
  [scalerank>=7][zoom>=8] { text-size: 10; text-opacity: @marine-opacity; }
  }

#water [kind='lake'][area != null][label_placement='yes'] { //[area>=2000000000]

  [zoom=5]  [area>10000000000],
  [zoom=6]  [area>5000000000],
  [zoom=7]  [area>400000000],
  [zoom=8]  [area>200000000],
  [zoom=9]  [area>100000000],
  [zoom=10] [area>100000000],
  [zoom=11] [area>10000000],
  [zoom=12] [area>2000000],
  [zoom=13] [area>1000000],
  [zoom=14] [area>500000],
  [zoom=15] [area>100000]
  {

    
  text-name: [name];
  text-face-name: 'Clan Offc Pro Medium'; 
  text-size: 10;
  text-fill: @marine-label-text-fill;
    
  //text-repeat-distance: 40;  // min distance between same text, tho doesn't span tile boundaries
  //text-margin: 40;  // min distance from any other text, tho doesn't span tile boundaries
  //text-min-padding: 20;  // min distance from edge of tile
  text-avoid-edges: true;
  //text-placement: point;
  
//  text-placement-type: simple;
//  text-placements: "E,NE,SE,W,NW,SW";
//  text-simplify: 20;
//  text-simplify-algorithm: zhao-saalfeld;
  
/*
  text-halo-fill: @text-halo-fill;
  text-halo-radius: @text-halo-radius;
  text-wrap-width: @text-wrap-width;
  text-wrap-before: true;
  text-opacity: @marine-opacity;
*/
}
}
  //---- vectors to be removed once the labels look good!

#earth [boundary='yes'] {
  line-width: 1;
  line-color: rgba(204,170,170,0.5);
}

#boundaries {
  line-width: 1;
  line-color: rgba(204,187,255,0.5);
}

//---- Volcanoes
#pois [kind='volcano'] {
  line-width: 1;
  line-color: rgba(85,68,68,0.5);
  text-name: [name];
  text-face-name: 'Clan Offc Pro Medium'; 
  text-size: 20;
  text-fill: blue;
  text-halo-fill: @text-halo-fill; //#444;
  text-halo-radius: @text-halo-radius; //3;
  text-wrap-width: @text-wrap-width;
  text-wrap-before: true;
  text-avoid-edges: true;
  text-repeat-distance: @text-repeat-distance;
}


/*
#places[zoom>=3] [kind='country'] {
  text-name: @name;
  text-face-name: 'Clan Offc Pro Medium';
  text-fill: #eee;
  text-size: 10;
  text-halo-fill: #222;
  text-halo-radius: 1;
   text-avoid-edges: true;
  text-wrap-width: 50;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 10;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 12;
  }
  [zoom>=6][scalerank=1],
  [zoom>=7][scalerank=2],
  [zoom>=8][scalerank>=3] {
    text-size: 14;
  }
}
*/

#places [[name:en] != null][kind = 'country'] {
    text-name: [name:en];
    text-face-name: 'Clan Offc Pro Medium'; 
    text-size: 9;
    text-fill: @text-fill;
    text-halo-fill: @text-halo-fill; //#444;
    text-halo-radius: @text-halo-radius; //3;
    text-wrap-width: @text-wrap-width;
    text-wrap-before: true;
    text-avoid-edges: true;
    text-repeat-distance: @text-repeat-distance;
    [[name:en]='Republic of China']  { text-name: 'Taiwan'; }
    [[name:en]='Macedonia']          { text-name: '"Macedonia (FYROM)"'; }
}

#places [[name:en] = null][kind = 'country']{
    text-name: [name];
    text-face-name: 'Clan Offc Pro Medium'; 
    text-size: 10;
    text-fill: @text-fill;
    text-halo-fill: @text-halo-fill; //#444;
    text-halo-radius: @text-halo-radius; //3;
    text-wrap-width: @text-wrap-width;
    text-wrap-before: true;
    text-avoid-edges: true;
    text-repeat-distance: @text-repeat-distance; 
}

/*
#places {
  line-width: 1;
  line-color: rgba(204,119,136,0.5);
}

#places { 
  [zoom>=2][kind='country'] {
  text-name: [name:en];
   text-face-name: 'Clan Offc Pro Medium'; 
   text-fill: #eee;
   text-halo-fill: #222; //#444;
    text-halo-radius: 1.5; //3;
    text-wrap-width: 30;
    text-wrap-before: true;
    text-avoid-edges: false;
    text-min-distance: 0.5;   
     
    
   [zoom>=8] { 
      text-name: [name:en];
      text-size: 10;
      text-wrap-width: 140;
    }
    // Hide at largest scales:
    [zoom>=12] { text-name: "''"; }
  }
  }
*/

// Cities
  #places [[name:en] != null] [kind='city'][zoom>=6][zoom<=15] {
    text-name:[name:en];	
    text-face-name: 'Clan Offc Pro Medium';
    text-size: 10;
    text-line-spacing:-7;
    text-avoid-edges: true;
  
    [zoom>=10] { 
      text-size: 17;
      text-wrap-width: 140;
    }
    [zoom>=12] { 
      text-size: 20;
      text-wrap-width: 180;
    }
    // Hide at largest scales:
    [zoom>=16] { text-name: "''"; }
  }


#places [[name:en] = null] [kind='city'][zoom>=6][zoom<=15] {
    text-name:[name];	
    text-face-name: 'Clan Offc Pro Medium';
    text-size: 10;
    text-line-spacing:-7;
    text-avoid-edges: true;
  
    [zoom>=10] { 
      text-size: 17;
      text-wrap-width: 140;
    }
    [zoom>=12] { 
      text-size: 20;
      text-wrap-width: 180;
    }
    // Hide at largest scales:
    [zoom>=16] { text-name: "''"; }
  }
/*  
  // Towns
  [kind='town'] {
    text-name:[name:en];
    text-size: 10;    
    text-face-name: 'Clan Offc Pro Medium';
    text-avoid-edges: true;
    
    text-halo-radius: 1.9;
    [zoom>=12] { text-size: 12; }
    [zoom>=14] { text-size: 16; }
    [zoom>=16] { text-size: 22; }
    // Hide at largest scales:
    [zoom>=18] { text-name: "''"; }
  }
  */
  //===== Turn off maritime boundaries
  
   [maritime_boundary='yes'] [zoom>=8] {
    line-comp-op: clear;
    line-width: 2;
    line-color: #bdd0cd;
    } 
