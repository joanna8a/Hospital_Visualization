import g4p_controls.*;

/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/61212*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */

GGroup grpMain, grpWin, grpSelected;
int mapX = 10;
int mapY = 75;
/*
// border of where the map should be drawn on screen   
float mapX1, mapY1;
float mapX2, mapY2;

// column numbers in the data file
static final int CODE = 0;
static final int X = 1;
static final int Y = 2;
static final int NAME = 3;

int totalCount;  // total number of places
Place[] places;
int placeCount;  // number of places loaded
*/

void setup() {
  size(1700, 700);
   //size(1500, 600);
  //size(640,400);
  usa = loadShape("usa-wikipedia.svg");
  colorMode(HSB,100);
  //usa = loadShape("map.svg");
  usa.scale(0.80);
  getStates();
  
  statecolors = loadImage("usa-wikipedia.jpg");
  
  image(statecolors, mapX, mapY);

  fontA = loadFont("Verdana-15.vlw");
  
  //Points
  statecolors = loadImage("mapMini.png");
  image(statecolors, 10, 75);
  
  locationTable = new Table("locations.tsv");
  nameTable = new Table("names.tsv");
  rowCount = locationTable.getRowCount();  
  dataTable = new Table("random.tsv");
  
  //for (int row = 0; row < rowCount; row++) {
  //  float initialValue = dataTable.getFloat(row, 1);
  //  interpolators[row] = new Integrator(initialValue, 0.9, 0.1);
  //}
  
  TeffCrSt = new Table("TimelyAndEffectiveCareState.csv");
  LoadArchives();
  //ZIPs
  //mapX1 = 30;
  //mapX2 = width - mapX1;
  //mapY1 = 20;
  //mapY2 = height - mapY1;
  //readData();
  
  
  //dataTable = new Table("random.tsv");
  //interpolators = new Integrator[rowCount];
  //for (int row = 0; row < rowCount; row++) {
  // float initialValue = dataTable.getFloat(row, 1);
  // interpolators[row] = new Integrator(initialValue, 0.9, 0.1);
  //}
  PFont font = loadFont("Univers-Bold-12.vlw");
  textFont(font);

  noStroke(); 
  

  // Set the font and its size (in units of pixels)
  textFont(font, 15);
  
  catColors();
  generateColors(0);
  
  createGUI();
  // Create the groups and add controls
  grpSelected = grpMain = new GGroup(this);
  grpWin = new GGroup(window);
  grpMain.addControls(appTitle);
  grpMain.addControls(strMsrsB, mcvB, hcahpsB, hvbpB, timEffCrB, haiB, readmCompDthB, pymtB, ipfqrB, mcspdB, outPatPrB, otptimgeffB);
  //grpWin.addControls();


  //smooth();  
 // noLoop();
}

void draw() {
  shape(usa);
  //scale (0.8, 0.8);
  //usa.scale(0.80);
  MmouseX = (int)2*mouseX;
  MmouseY = (int)2*mouseY;
  //background(255);
  //background(24,0,99); //blanco
  // S B H
  background(24, 0, 99);
  textSize(25); 
  //text("USA Hospitals Evaluation", 500, 50);


  //fill(0);
  //text("x: "+MmouseX+" y: "+MmouseY, 50, 50);

   drawStates();
   LoadArchives();
   //for (int i = 0; i < placeCount; i++) {
   // places[i].draw();
  //}
   
   //ellipse(439+mapX, 270+mapY, 5, 5);
   /*
    for (int row = 0; row < rowCount; row++) {
    interpolators[row].update();
  }
  
  closestDist = width*height;  // abritrarily high
  
  //for (int row = 0; row < rowCount; row++) {
  //  String abbrev = dataTable.getRowName(row);
  //  float x = locationTable.getFloat(abbrev, 1);
  //  float y = locationTable.getFloat(abbrev, 2);
  //  drawData(x+mapX, y+mapY, abbrev);
  //}
  
  if (closestDist != width*height) {
    fill(0);
    textAlign(CENTER);
    text(closestText, closestTextX, closestTextY);
  }
   
   
   //for (int row = 0; row < rowCount; row++) {
   // String abbrev = dataTable.getRowName(row);
   // float x = locationTable.getFloat(abbrev, 1);
   // float y = locationTable.getFloat(abbrev, 2);
   // drawData(x+mapX, y, abbrev);
  //}
  */
   
   //Points
  
}
/*
//Points
void drawData(float x, float y, String abbrev) {
  // Figure out what row this is
  int row = dataTable.getRowIndex(abbrev);
  // Get the current value
  float value = interpolators[row].value;
  
  float radius = 0;
  if (value >= 0) {
    radius = map(value, 0, dataMax, 1.5, 15);
    fill(#333366);  // blue
  } else {
    radius = map(value, 0, dataMin, 1.5, 15);
    fill(#ec5166);  // red
  }
  ellipseMode(RADIUS);
  ellipse(x, y, radius, radius);

  float d = dist(x, y, mouseX, mouseY);
  if ((d < radius + 2) && (d < closestDist)) {
    closestDist = d;
    String name = nameTable.getString(abbrev, 1);
    String val = nfp(interpolators[row].target, 0, 2);
    closestText = name + " " + val;
    closestTextX = x;
    closestTextY = y-radius-4;
  }
}
*/

//void keyPressed() {
//  if (key == ' ') {
//    updateTable();
//  }
//}


//void updateTable() {  
//  for (int row = 0; row < rowCount; row++) {
//    float newValue = random(dataMin, dataMax);
//    interpolators[row].target(newValue);
//  }
//}
//Points functions end

//Event handlers

public void appTitleClick(GButton source, GEvent event) {
  generateColors(0);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
  }

public void strMsrsBClick(GButton source, GEvent event) {
  generateColors(1);
  
  strMsrsCHB.setVisible(true);
  strMsrsCHB.setSelected(true);
  
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void mcvBClick(GButton source, GEvent event) {
  generateColors(2);
  
  mcvCHB.setVisible(true);
  mcvCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void hcahpsBClick(GButton source, GEvent event) {
  generateColors(3);
  
  hcahpsCHB.setVisible(true);
  hcahpsCHB.setSelected(true);
    
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void hvbpBClick(GButton source, GEvent event) {
  generateColors(4);
  
  hvbpCHB.setVisible(true);
  hvbpCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void timEffCrBClick(GButton source, GEvent event) {
  generateColors(5);
  
  timEffCrCHB.setVisible(true);
  timEffCrCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void haiBClick(GButton source, GEvent event) {
  generateColors(6);
  
  haiCHB.setVisible(true);
  haiCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void readmCompDthBClick(GButton source, GEvent event) {
  generateColors(7);
  
  readmCompDthCHB.setVisible(true);
  readmCompDthCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void pymtBClick(GButton source, GEvent event) {
  generateColors(8);
  
  pymtCHB.setVisible(true);
  pymtCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void ipfqrBClick(GButton source, GEvent event) {
  generateColors(9);
  
  ipfqrCHB.setVisible(true);
  ipfqrCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void mcspdBClick(GButton source, GEvent event) {
  generateColors(10);
  
  mcspdCHB.setVisible(true);
  mcspdCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void outPatPrBClick(GButton source, GEvent event) {
  generateColors(11);
  
  outPatPrCHB.setVisible(true);
  outPatPrCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  otptimgeffCHB.setVisible(false);
}

public void otptimgeffBClick(GButton source, GEvent event) {
  generateColors(12);
  
  otptimgeffCHB.setVisible(true);
  otptimgeffCHB.setSelected(true);
  
  strMsrsCHB.setVisible(false);
  mcvCHB.setVisible(false);
  hcahpsCHB.setVisible(false);
  hvbpCHB.setVisible(false);
  timEffCrCHB.setVisible(false);
  haiCHB.setVisible(false);
  readmCompDthCHB.setVisible(false);
  pymtCHB.setVisible(false);
  ipfqrCHB.setVisible(false);
  mcspdCHB.setVisible(false);
  outPatPrCHB.setVisible(false);
}

public void LoadArchives(){
  
   //for (int i = 1; i< TeffCrSt.getRowCount();i++){
 
   // TeffCrStVls[i] = "0";
   //}
  int TeffCrStVl = -1;
  int i = 57;
  //for (int i = 1; i< TeffCrSt.getRowCount();i++){
    TeffCrStVls = TeffCrSt.getString(i,4);
  if (TeffCrStVls.length()==7){
    TeffCrStVls = TeffCrStVls.substring(2,5);
    TeffCrStVl = parseInt(TeffCrStVls);
  }else if (TeffCrStVls.length()==6){
    TeffCrStVls = TeffCrStVls.substring(2,4);  
    TeffCrStVl = parseInt(TeffCrStVls);
  }else if (TeffCrStVls.length()==5){
    TeffCrStVls = TeffCrStVls.substring(2,3);  
    TeffCrStVl = parseInt(TeffCrStVls);
  }else if (TeffCrStVls.length()>7){
    TeffCrStVls = TeffCrStVls.substring(2,4); 
    TeffCrStVl = 0;
  }
  
  //}
  
  //text(TeffCrStVl,200, 50);
  
}



void mousePressed() {
 
 // //Strong Rep
 // if (MmouseX > 1095 && MmouseX < 1095+150 && MmouseY > 712 && MmouseY < 712+25) {
 //   strongRepAlpha = 255;
 //   strongRep = color(153, 0, 0, strongRepAlpha);
 //   strongDemAlpha = 25;
 //   strongDem = color(0, 51, 102, strongDemAlpha);
 //   weakDemAlpha = 25;
 //   weakDem = color(60, 150, 240, weakDemAlpha);
 //   barelyDemAlpha = 25;
 //   barelyDem = color(149, 203, 255, barelyDemAlpha);
 //   barelyRepAlpha = 25;
 //   barelyRep = color(240, 150, 150, barelyRepAlpha);
 //   weakRepAlpha = 25;
 //   weakRep = color(235, 42, 42, weakRepAlpha);
 // } 
   
   
 // //Weak Rep
 // else if (MmouseX > 1095 && MmouseX < 1095+150 && MmouseY > 687 && MmouseY < 687+25) {
 //   strongRepAlpha = 25;
 //   strongRep = color(153, 0, 0, strongRepAlpha);
 //   strongDemAlpha = 25;
 //   strongDem = color(0, 51, 102, strongDemAlpha);
 //   weakDemAlpha = 25;
 //   weakDem = color(60, 150, 240, weakDemAlpha);
 //   barelyDemAlpha = 25;
 //   barelyDem = color(149, 203, 255, barelyDemAlpha);
 //   barelyRepAlpha = 25;
 //   barelyRep = color(240, 150, 150, barelyRepAlpha);
 //   weakRepAlpha = 255;
 //   weakRep = color(235, 42, 42, weakRepAlpha);
 // }
  
 // //Barley Rep
 // else if (MmouseX > 1095 && MmouseX < 1095+150 && MmouseY > 662 && MmouseY < 662+25) {
 //   strongRepAlpha = 25;
 //   strongRep = color(153, 0, 0, strongRepAlpha);
 //   strongDemAlpha = 25;
 //   strongDem = color(0, 51, 102, strongDemAlpha);
 //   weakDemAlpha = 25;
 //   weakDem = color(60, 150, 240, weakDemAlpha);
 //   barelyDemAlpha = 25;
 //   barelyDem = color(149, 203, 255, barelyDemAlpha);
 //   barelyRepAlpha = 255;
 //   barelyRep = color(240, 150, 150, barelyRepAlpha);
 //   weakRepAlpha = 25;
 //   weakRep = color(235, 42, 42, weakRepAlpha);
 // }
  
 //   //Barley Dem
 // else if (MmouseX > 1095 && MmouseX < 1095+150 && MmouseY > 637 && MmouseY < 637+25) {
 //   strongRepAlpha = 25;
 //   strongRep = color(153, 0, 0, strongRepAlpha);
 //   strongDemAlpha = 25;
 //   strongDem = color(0, 51, 102, strongDemAlpha);
 //   weakDemAlpha = 25;
 //   weakDem = color(60, 150, 240, weakDemAlpha);
 //   barelyDemAlpha = 255;
 //   barelyDem = color(149, 203, 255, barelyDemAlpha);
 //   barelyRepAlpha = 25;
 //   barelyRep = color(240, 150, 150, barelyRepAlpha);
 //   weakRepAlpha = 25;
 //   weakRep = color(235, 42, 42, weakRepAlpha);
 // }
  
 // //Weak Dem
 // else if (MmouseX > 1095 && MmouseX < 1095+150 && MmouseY > 612 && MmouseY < 612+25) {
 //   strongRepAlpha = 25;
 //   strongRep = color(153, 0, 0, strongRepAlpha);
 //   strongDemAlpha = 25;
 //   strongDem = color(0, 51, 102, strongDemAlpha);
 //   weakDemAlpha = 255;
 //   weakDem = color(60, 150, 240, weakDemAlpha);
 //   barelyDemAlpha = 25;
 //   barelyDem = color(149, 203, 255, barelyDemAlpha);
 //   barelyRepAlpha = 25;
 //   barelyRep = color(240, 150, 150, barelyRepAlpha);
 //   weakRepAlpha = 25;
 //   weakRep = color(235, 42, 42, weakRepAlpha);
 // }
  
 //  //Strong Dem
 // else if (MmouseX > 1095 && MmouseX < 1095+150 && MmouseY > 587 && MmouseY < 587+25) {
 //   strongRepAlpha = 25;
 //   strongRep = color(153, 0, 0, strongRepAlpha);
 //   strongDemAlpha = 255;
 //   strongDem = color(0, 51, 102, strongDemAlpha);
 //   weakDemAlpha = 25;
 //   weakDem = color(60, 150, 240, weakDemAlpha);
 //   barelyDemAlpha = 25;
 //   barelyDem = color(149, 203, 255, barelyDemAlpha);
 //   barelyRepAlpha = 25;
 //   barelyRep = color(240, 150, 150, barelyRepAlpha);
 //   weakRepAlpha = 25;
 //   weakRep = color(235, 42, 42, weakRepAlpha);
 // }

 // //Normal Map
 //  else {   
 //   strongRepAlpha = 255;
 //   strongRep = color(153, 0, 0, strongRepAlpha);
 //   strongDemAlpha = 255;
 //   strongDem = color(0, 51, 102, strongDemAlpha);
 //   weakDemAlpha = 255;
 //   weakDem = color(60, 150, 240, weakDemAlpha);
 //   barelyDemAlpha = 255;
 //   barelyDem = color(149, 203, 255, barelyDemAlpha);
 //   barelyRepAlpha = 255;
 //   barelyRep = color(240, 150, 150, barelyRepAlpha);
 //   weakRepAlpha = 255;
 //   weakRep = color(235, 42, 42, weakRepAlpha);
 // } 
}