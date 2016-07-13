// Language options: name (local), name:en,
@name: [name:en]-[name];

Map {
  background-color: #fff;
}

#water {
  line-width: 1;
  line-color: rgba(136,170,238,0.5);
}

#earth {
  line-width: 1;
  line-color: rgba(204,170,170,0.5);
}

#boundaries {
  line-width: 1;
  line-color: rgba(204,187,255,0.5);
}

#pois {
  line-width: 1;
  line-color: rgba(85,68,68,0.5);
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

/*
// Cities
  [kind='city'][zoom>=8][zoom<=15] {
    text-name:[name];	
    text-face-name: 'Clan Offc Pro Medium';
    text-size: 15;
    text-line-spacing:-7;
  
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
  
  // Towns
  [kind='town'] {
    text-name:[name];
    text-size: 12;    
    text-face-name: 'Clan Offc Pro Medium';
    text-halo-fill: #222;
    text-halo-radius: 1.9;
    [zoom>=12] { text-size: 12; }
    [zoom>=14] { text-size: 16; }
    [zoom>=16] { text-size: 22; }
    // Hide at largest scales:
    [zoom>=18] { text-name: "''"; }
  }
  */