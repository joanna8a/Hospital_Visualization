import g4p_controls.*;

/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/61212*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */

GGroup grpMain, grpWin, grpSelected;
int mapX = 10;
int mapY = 75;

// min/max boundary of all points
float minX, maxX;
float minY, maxY;

/// border of where the map should be drawn on screen   
float mapX1, mapY1;
float mapX2, mapY2;

// column numbers in the data file
static final int CODE = 0;
static final int X = 1;
static final int Y = 2;
static final int NAME = 3;

//int totalCount;  // total number of places
//Place[] places;
//int placeCount;  // number of places loaded

Table FIPS;


void setup() {
  size(1700, 700);
  //size(1500, 600);
  //size(640,400);
  usa = loadShape("usa-wikipedia.svg");
  colorMode(HSB, 100);
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

  asignStates();

  TeffCrSt = new Table("TimelyAndEffectiveCareState.csv");
  FIPS = new Table ("FIPS.csv");
  xLims = new Table("xLimits.csv");
  yLims = new Table("yLimits.csv");
  
  LoadArchives();
  //ZIPs
  //mapX1 = 40;
  ////mapX2 = width - mapX1;
  //mapX2 = 896 + mapX1;
  
  //mapY1 = 80;
  ////mapY2 = height - mapY1;
  //mapY2 = mapY1 + 560;
  

  PFont font = loadFont("Univers-Bold-12.vlw");
  textFont(font);

  noStroke(); 


  // Set the font and its size (in units of pixels)
  textFont(font, 15);

  catColors();
  generateColors(0);
  //readData();
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
  //scale (0.5, 0.5);
  //usa.scale(0.80);
  MmouseX = (int)2*mouseX;
  MmouseY = (int)2*mouseY;
  //background(255);
  //background(24,0,99); //blanco
  // S B H
  background(24, 0, 99);
  textSize(25); 
  //text("USA Hospitals Evaluation", 500, 50);
  //text(mouseX, 100, 50);
  //text(mouseY, 200, 50);
  //fill(0);
  //text("x: "+MmouseX+" y: "+MmouseY, 50, 50);
  //text(FIPS.getInt(50,0), 1000, 50);
  //text(states[0].getVertex(0).x, 800, 50);
  //text(states[0].getVertex(0).y, 1000, 50);
  //text(states[0].getVertex(0).z, 1200, 50);

  drawStates();
  LoadArchives();
  //for (int i = 0; i < placeCount; i++) {
  // places[i].draw();
  //}
  
}


float TX(float x) {
return map(x, minX, maxX, mapX1, mapX2);
}


float TY(float y) {

return map(y, minY, maxY, mapY2, mapY1);
}

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

public void LoadArchives() {

  //for (int i = 1; i< TeffCrSt.getRowCount();i++){

  // TeffCrStVls[i] = "0";
  //}
  int TeffCrStVl = -1;
  int i = 57;
  //for (int i = 1; i< TeffCrSt.getRowCount();i++){
  TeffCrStVls = TeffCrSt.getString(i, 4);
  if (TeffCrStVls.length()==7) {
    TeffCrStVls = TeffCrStVls.substring(2, 5);
    TeffCrStVl = parseInt(TeffCrStVls);
  } else if (TeffCrStVls.length()==6) {
    TeffCrStVls = TeffCrStVls.substring(2, 4);  
    TeffCrStVl = parseInt(TeffCrStVls);
  } else if (TeffCrStVls.length()==5) {
    TeffCrStVls = TeffCrStVls.substring(2, 3);  
    TeffCrStVl = parseInt(TeffCrStVls);
  } else if (TeffCrStVls.length()>7) {
    TeffCrStVls = TeffCrStVls.substring(2, 4); 
    TeffCrStVl = 0;
  }

  //}

  //text(TeffCrStVl,200, 50);
}

void mousePressed() {
  //createWindows(1);
  //for(int i = 0; i< xLims.getRowCount();i++ ){
  // for (int j = 0; j<yLims.getRowCount();j++){    
                   
  //       if (MmouseX > xLims.getInt(i,0) && MmouseX < xLims.getInt(i,1) && MmouseY > yLims.getInt(j,0) && MmouseY < yLims.getInt(j,1)) {
  //        fill(0);
  //        createWindows(1);
  //       }
  //  }
  //}
 
  }
  
public void createWindows(int i) {
  //int[] col = {color(200,0,0), color(0,200,0), color(0,0,200) };
  int col;
  wdws = new GWindow[52];
  //for (int i = 0; i < 1; i++) {
  //int i = 0;
  col = (128 << (i * 8)) | 0xff000000;
  //wdws[i] = GWindow.getWindow(this, "Window "+i, 70+i*220, 160+i*50, 200, 200, JAVA2D);
  wdws[i] = GWindow.getWindow(this, "Window "+i, 20, 100, 920, 580, JAVA2D);
  wdws[i].addData(new MyWinData());
  ((MyWinData)wdws[i].data).col = col;
  wdws[i].addDrawHandler(this, "windowDraw");
  wdws[i].addMouseHandler(this, "windowMouse");
  // }
}

//Place parsePlace(String line) {
// String pieces[] = split(line, TAB);

// int zip = int(pieces[CODE]);
// float x = float(pieces[X]);
// float y = float(pieces[Y]);
// String name = pieces[NAME];

// return new Place(zip, name, x, y);
//}
//void parseInfo(String line) {
// String infoString = line.substring(2);  // remove the #
// String[] infoPieces = split(infoString, ',');
// totalCount = int(infoPieces[0]);   
// minX = float(infoPieces[1]);
// maxX = float(infoPieces[2]);
// minY = float(infoPieces[3]);
// maxY = float(infoPieces[4]);
//}

//void readData() {
// new Slurper();
// noLoop();  // done loading, can stop updating
//}