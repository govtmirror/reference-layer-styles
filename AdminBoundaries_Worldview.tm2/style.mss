#water [zoom>=2] [boundary='yes'] {
  line-width: 1;
  line-color: #fff;
}

#earth [boundary='yes'] {
  line-width: 1;
  line-color: rgba(175,170,170,0.5);
}

// ===== Roads
#roads [zoom>=9] {
  [kind='highway'] {
   line-color: #747926;
    line-width: 0.5;
    line-opacity: 1.0;
}
   [kind='major_road'] {
     line-color: #747926;
    line-width: 0.25;
    line-opacity: 1.0;
  }
  }

// ===== Country
@country-line-width: 1.0;
@country-border-case-color: #bcc; //#444;
@country-border-fill-color: #122; //#cc8

@country-light: #dee; //#adb9b9; // #249590; //#558;
@country-dark: #011; //#d35529; //#ebb;;

#boundaries {
  [admin_level=2] {
  ::case {
   line-color:@country-border-case-color;
    line-join: round;
    line-cap: round;
      [zoom=4]{ line-width: 1.0; }
      [zoom=5] { line-width: 1.6; }
  }
  ::fill {
    line-color:@country-border-fill-color;
    line-join: round;
    line-cap: round;
    [zoom=4] { line-width: 1.0; line-opacity: 0.30; }
    [zoom=5] { line-width: 1.0; line-opacity: 0.35; }
  }
}
  [zoom>=4] [kind='disputed'] {
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
  [admin_level=4][zoom>=5] {
    line-width: 1;
  line-color: #bdd0cd;
    } 
}

