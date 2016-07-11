Map {
  background-color: #fff;
}

#water {
  line-width: 0;
  line-color: rgba(136,170,238,0.5);
}

#earth {
  line-width: 1;
  line-color: rgba(175,170,170,0.5);
}

#landuse {
  line-width: 0;
  line-color: #bdd0cd;
}

#roads {
  [kind='highway'] {
  line-width: 1;
  line-color: rgba(238, 184, 43, 0.5);  
}
  }

#boundaries {
  [kind='country'] {
  ::case {
    line-width: 3;
    line-color:rgba(7,6,6,0.5);
    line-join: round;
    line-cap: round;
  }
  ::fill {
    line-width: 1.5;
    line-color:#bdd0cd;
    line-join: round;
    line-cap: round;
  }
}
  [kind='disputed'] {
    ::case {
    line-width: 5;
     line-color: rgba(243, 38, 10, 0.5);
    line-dasharray: 3, 4;
    line-join: round;
    line-cap: round;
  }
  ::fill {
    line-width: 2.5;
    line-color:#bdd0cd;
    line-join: round;
    line-cap: round;
    line-color: rgba(243, 38, 10, 0.5);
    line-dasharray: 3, 4;
      }
    }
  [kind='state'] {
    line-width: 1;
  line-color: #bdd0cd;
    } 
}

#pois {
  line-width: 0;
  line-color: rgba(85,68,68,0.5);
}

#places {
  line-width: 0;
  line-color: rgba(204,119,136,0.5);
}

