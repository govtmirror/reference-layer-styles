// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';

// Common Colors //
@land: #fff;
@water: #c3e6ff;

Map { 
  background-color: @land; 
}

// Political boundaries //

//#admin[admin_level=2][maritime=0] {
  //line-join: round;
  //line-color: #bbe;
  //line-width: 1.4;
  //[zoom>=6] { line-width: 2; }
  //[zoom>=8] { line-width: 4; }
  //[disputed=1] { line-dasharray: 4,4; }
//}




// Water Features //

#water {
  polygon-fill: @water;
  polygon-gamma: 0.6;
}

//#water_label {
 // [zoom<=13],  // automatic area filtering @ low zooms
 // [zoom>=14][area>500000],
 // [zoom>=16][area>10000],
  //[zoom>=17] {
  //  text-name: @name;
 //   text-face-name: @sans_italic;
 //   text-fill: darken(@water, 30%);
  //  text-size: 13;
  //  text-wrap-width: 100;
  //  text-wrap-before: true;
 // }
//}

//#waterway {
  //[type='river'],
  //[type='canal'] {
   // line-color: @water;
    //line-width: 0.5;
    //[zoom>=12] { line-width: 1; }
    //[zoom>=14] { line-width: 2; }
    //[zoom>=16] { line-width: 3; }
  //}
  //[type='stream'] {
   // line-color: @water;
    //line-width: 0.5;
    //[zoom>=14] { line-width: 1; }
    //[zoom>=16] { line-width: 2; }
    //[zoom>=18] { line-width: 3; }
  //}
//}
