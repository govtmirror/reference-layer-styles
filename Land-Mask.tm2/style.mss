@land: rgb(128, 128, 128);

Map {
  background-color: @land;
}

#water [boundary !='yes']{
  [zoom>=1] [area>40000000000],
  [zoom>=2] [area>20000000000],
  [zoom>=3] [area>80000000000],
  [zoom>=4] [area>5000000000],
  [zoom>=5] [area>700000000],
  [zoom>=6] [area>500000000],
  [zoom>=7] [area>160000000],
  [zoom>=8] [area>40000000],
  [zoom>=9] [area>10000000],
  [zoom>=10] [area>8000000],
  [zoom>=11] [area>2000000],
  [zoom>=12] [area>200000],
  [zoom>=13] [area>100000],
  [zoom>=14] [area>2000],
  [zoom<=15] [area>1000] {
  polygon-fill:#fff;
  polygon-comp-op: clear;
  }
}



