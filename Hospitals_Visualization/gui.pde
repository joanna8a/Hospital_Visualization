//Points
PImage mapImage;
Tabla locationTable;
Tabla nameTable;
int rowCount;
String csv[];
String myData[][];

Tabla dataTable;
float dataMin = -10;
float dataMax = 10;

float closestDist;
String closestText;
float closestTextX;
float closestTextY;

//Map Window controls
GWindow window;
GButton appTitle;

GWindow[] wdws;

int x = 1100;
PFont fontA;

int MmouseX, MmouseY;

// Action controls

Tabla TeffCrSt;
int[] TeffCrScrs;
String TeffCrStVls;
 
Tabla xLims;
Tabla yLims;


int i = int(random(60,255));

int Alpha = 100;



color[] strMsrs = new color[52];
GButton strMsrsB;
GCheckbox strMsrsCHB;

color[] medcrVol = new color[52];// 
GButton mcvB;
GCheckbox mcvCHB;

color[] hcahps = new color[52]; // 
GButton hcahpsB;
GCheckbox hcahpsCHB;

color[] hvb = new color[52]; // 
GButton hvbpB;
GCheckbox hvbpCHB;

color[] timAndEffCare = new color[52]; // 
GButton timEffCrB;
GCheckbox timEffCrCHB;

color[] hcAssocInf = new color [52]; // 
GButton haiB;
GCheckbox haiCHB;

color[] readmCompDeaths = new color [52];// 
GButton readmCompDthB;
GCheckbox readmCompDthCHB;

color[] payment = new color [52]; // 
GButton pymtB;
GCheckbox pymtCHB;

color[] ipfqr = new color [52]; // 
GButton ipfqrB;
GCheckbox ipfqrCHB;

color[] medcrSpnd = new color [52]; // 
GButton mcspdB;
GCheckbox mcspdCHB;

color[] outpatPrcdrs = new color [52]; // 
GButton outPatPrB;
GCheckbox outPatPrCHB;

color[] outpatImgEff = new color [52]; // 
GButton otptimgeffB;
GCheckbox otptimgeffCHB;
String[] point = new String[] { "point.png" };

//Capitals States Image Buttons


  GImageButton Montgomery;
  GImageButton Juneau;
  GImageButton Phoenix;
  GImageButton Little_Rock;
  GImageButton Sacramento;
  GImageButton Denver;
  GImageButton Hartford;
  GImageButton Dover;
  GImageButton Tallahassee;
  GImageButton Atlanta;
  GImageButton Honolulu;
  GImageButton Boise;
  GImageButton Springfield;
  GImageButton Indianapolis;
  GImageButton Des_Moines;
  GImageButton Topeka;
  GImageButton Frankfort;
  GImageButton Baton_Rouge;
  GImageButton Augusta;
  GImageButton Annapolis;
  GImageButton Boston;
  GImageButton Lansing;
  GImageButton Saint_Paul;
  GImageButton Jackson;
  GImageButton Jefferson_City;
  GImageButton Helena;
  GImageButton Lincoln;
  GImageButton Carson_City;
  GImageButton Concord;
  GImageButton Trenton;
  GImageButton Santa_Fe;
  GImageButton Albany;
  GImageButton Raleigh;
  GImageButton Bismarck;
  GImageButton Columbus;
  GImageButton Oklahoma_City;
  GImageButton Salem;
  GImageButton Harrisburg;
  GImageButton Providence;
  GImageButton Columbia;
  GImageButton Pierre;
  GImageButton Nashville;
  GImageButton Austin;
  GImageButton Salt_Lake_City;
  GImageButton Montpelier;
  GImageButton Richmond;
  GImageButton Olympia;
  GImageButton Charleston;
  GImageButton Madison;
  GImageButton Cheyenne;
  
  GImageButton[] capitals = new GImageButton[51];
  public void asignCapitals(){
    
  capitals[0] = Montgomery;
  capitals[1] = Juneau;
  capitals[2] = Phoenix;
  capitals[3] = Little_Rock;
  capitals[4] = Sacramento;
  capitals[5] = Denver;
  capitals[6] = Hartford;
  capitals[7] = Dover;
  capitals[9] = Tallahassee;
  capitals[10] = Atlanta;
  capitals[11] = Honolulu;
  capitals[12] = Boise;
  capitals[13] = Springfield;
  capitals[14] = Indianapolis;
  capitals[15] = Des_Moines;
  capitals[16] = Topeka;
  capitals[17] = Frankfort;
  capitals[18] = Baton_Rouge;
  capitals[19] = Augusta;
  capitals[20] = Annapolis;
  capitals[21] = Boston;
  capitals[22] = Lansing;
  capitals[23] = Saint_Paul;
  capitals[24] = Jackson;
  capitals[25] = Jefferson_City;
  capitals[26] = Helena;
  capitals[27] = Lincoln;
  capitals[28] = Carson_City;
  capitals[29] = Concord;
  capitals[30] = Trenton;
  capitals[31] = Santa_Fe;
  capitals[32] = Albany;
  capitals[33] = Raleigh;
  capitals[34] = Bismarck;
  capitals[35] = Columbus;
  capitals[36] = Oklahoma_City;
  capitals[37] = Salem;
  capitals[38] = Harrisburg;
  capitals[39] = Providence;
  capitals[40] = Columbia;
  capitals[41] = Pierre;
  capitals[42] = Nashville;
  capitals[43] = Austin;
  capitals[44] = Salt_Lake_City;
  capitals[45] = Montpelier;
  capitals[46] = Richmond;
  capitals[47] = Olympia;
  capitals[48] = Charleston;
  capitals[49] = Madison;
  capitals[50] = Cheyenne;
  }
color[] nat = new color [52];

int [] b = new int[52];
void catColors(){
  
  
for (int i = 0; i < 52; i++){
  b[i]= int(random(0,99));
  
  nat[i] = color(5, 0, b[i], Alpha);
  strMsrs[i] = color(5, 78, b[i], Alpha); //orange
  medcrVol[i] = color(70, 78, b[i], Alpha); //blue
  hcahps[i] = color(50, 95, b[i] , Alpha); // light blue
  hvb[i] = color(55, 95, b[i], Alpha); // light blue
  timAndEffCare[i] = color(38, 78, b[i], Alpha); //verde
  hcAssocInf[i] = color(38, 78, b[i], Alpha); //verde
  readmCompDeaths[i] = color(98, 78, b[i], Alpha); //rojo
  payment[i] = color(98, 78, b[i], Alpha); //rojo
  ipfqr[i] = color(80, 78, b[i], Alpha); //morado
  medcrSpnd[i] = color(10, 78, b[i], Alpha); //dorado
  outpatPrcdrs[i] = color(15, 78, b[i], Alpha); //amarillo
  outpatImgEff[i] = color(17, 78, b[i], Alpha); //amarillo
  
  }
  
 //for (int i = 0; i < medcrVol.length; i++){
 // rgb[1][2] = int(random(40,255)); //??
 // medcrVol[i] = color(7, 0, rgb[1][2], strMsrsAlpha);
 // }
  
}

synchronized public void drawWin(PApplet appc, GWinData data) { //_CODE_:window:378292:
  appc.background(213, 213, 255);
  appc.stroke(0);
  appc.strokeWeight(2);
  appc.fill(200, 200, 210);
  
  
  //appc.rect(10, 10, appc.width-20, appc.height-20);
} //_CODE_:window:378292:


// Create all the GUI controls. 
public void createGUI() {
  G4P.messagesEnabled(false);
  //G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("USA Hospitals Visualization");
  shape(usa);
   //usa.scale(0.50); 
   createGroup1Controls();
   //createNationalMap();
   createCategoriesButtons();
   createCapitalsButtons();
   //createGroup2Controls();
  //createGroupActionControls();
}

public void createGroup1Controls() {
  int h = 25;
  int b = 93;
  int cbh = 26;
  int cbb = 100;
  int x1= 1000;
  int x2 = 970;
  
  appTitle = new GButton(this, 300, 20, 500, 50);
  appTitle.setText("USA Hospitals Quality Measures Visualization",GAlign.CENTER,GAlign.MIDDLE);
  appTitle.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  appTitle.addEventHandler(this, "appTitleClick");
  

  //// Structural Measures
  //strMsrsB = new GButton(this, 1000, b, 350, 30);
  //strMsrsB.setText("Structural Measures",GAlign.CENTER,GAlign.MIDDLE);
  //strMsrsB.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  //strMsrsB.addEventHandler(this, "strMsrsBClick");
  //strMsrsCHB = new GCheckbox(this, 970, cbb, 70, 18);
  //strMsrsCHB.setVisible(false);
  
  //int h = 25;
  //int b = 25;
  //int cbh = 26;
  //int cbb = 30;
  //int x1 = 25;
  // int x2 = 5;

  // Structural Measures
  strMsrsB = new GButton(this, x1, b, 350, 30);
  strMsrsB.setText("Structural Measures",GAlign.CENTER,GAlign.MIDDLE);
  strMsrsB.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  strMsrsB.addEventHandler(this, "strMsrsBClick");
  strMsrsCHB = new GCheckbox(this, x2, cbb, 70, 18);
  strMsrsCHB.setVisible(false);
  
  //Medicare Volume
  mcvB = new GButton(this, x1, b+h, 350, 30);
  mcvB.setText("Medicare Volume",GAlign.CENTER,GAlign.MIDDLE);
  mcvB.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  mcvB.addEventHandler(this, "mcvBClick");
  mcvCHB = new GCheckbox(this, x2, cbb + cbh, 70, 18);
  mcvCHB.setVisible(false);
  
  //HCAHPS
  hcahpsB = new GButton(this, x1, b+(2*h), 350, 30);
  hcahpsB.setText("HCAHPS",GAlign.CENTER,GAlign.MIDDLE);
  hcahpsB.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  hcahpsB.addEventHandler(this, "hcahpsBClick");
  hcahpsCHB = new GCheckbox(this, x2, cbb + (2*cbh), 70, 18);
  hcahpsCHB.setVisible(false);
  
  //Hospital Value Based
  hvbpB = new GButton(this, x1, b+(3*h), 350, 30);
  hvbpB.setText("Hospital Value Based",GAlign.CENTER,GAlign.MIDDLE);
  hvbpB.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  hvbpB.addEventHandler(this, "hvbpBClick");
  hvbpCHB = new GCheckbox(this, x2, cbb + (3*cbh), 70, 18);
  hvbpCHB.setVisible(false);
  
  //Timely and Effective Care
  timEffCrB = new GButton(this, x1, b+(4*h), 350, 30);
  timEffCrB.setText("Timely and Effective Care",GAlign.CENTER,GAlign.MIDDLE);
  timEffCrB.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  timEffCrB.addEventHandler(this, "timEffCrBClick");
  timEffCrCHB = new GCheckbox(this, x2, cbb + (4*cbh), 70, 18);
  timEffCrCHB.setVisible(false);
  
  //Healthcare Associated Infections
  haiB = new GButton(this, x1, b+(5*h), 350, 30);
  haiB.setText("Healthcare Associated Infections",GAlign.CENTER,GAlign.MIDDLE);
  haiB.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  haiB.addEventHandler(this, "haiBClick");
  haiCHB = new GCheckbox(this, x2, cbb + (5*cbh), 70, 18);
  haiCHB.setVisible(false);

  //Readmisions, Complications and Deaths
  readmCompDthB = new GButton(this, x1, b+(6*h), 350, 30);
  readmCompDthB.setText("Readmisions, Complications and Deaths",GAlign.CENTER,GAlign.MIDDLE);
  readmCompDthB.setLocalColorScheme(GCScheme.RED_SCHEME);
  readmCompDthB.addEventHandler(this, "readmCompDthBClick");
  readmCompDthCHB = new GCheckbox(this, x2, cbb + (6*cbh), 70, 18);
  readmCompDthCHB.setVisible(false);
  
  //Payment
  pymtB = new GButton(this, x1, b+(7*h), 350, 30);
  pymtB.setText("Payment",GAlign.CENTER,GAlign.MIDDLE);
  pymtB.setLocalColorScheme(GCScheme.RED_SCHEME);
  pymtB.addEventHandler(this, "pymtBClick");
  pymtCHB = new GCheckbox(this, x2, cbb + (7*cbh), 70, 18);
  pymtCHB.setVisible(false);
   
  //IPFQR
  ipfqrB = new GButton(this, x1, b+(8*h), 350, 30);
  ipfqrB.setText("IPFQR",GAlign.CENTER,GAlign.MIDDLE);
  ipfqrB.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  ipfqrB.addEventHandler(this, "ipfqrBClick");
  ipfqrCHB = new GCheckbox(this, x2, cbb + (8*cbh), 70, 18);
  ipfqrCHB.setVisible(false);
  
  //Medicare Spending
  mcspdB = new GButton(this, x1, b+(9*h), 350, 30);
  mcspdB.setText("Medicare Spending",GAlign.CENTER,GAlign.MIDDLE);
  mcspdB.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  mcspdB.addEventHandler(this, "mcspdBClick");
  mcspdCHB = new GCheckbox(this, x2, cbb + (9*cbh), 70, 18);
  mcspdCHB.setVisible(false);
  
  //Outpatient Procedures
  outPatPrB = new GButton(this, x1, b+(10*h), 350, 30);
  outPatPrB.setText("Outpatient Procedures",GAlign.CENTER,GAlign.MIDDLE);
  outPatPrB.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  outPatPrB.addEventHandler(this, "outPatPrBClick");
  outPatPrCHB = new GCheckbox(this, x2, cbb + (10*cbh), 70, 18);
  outPatPrCHB.setVisible(false);
  
  //Outpatient Imaging Efficiency
  otptimgeffB = new GButton(this, x1, b+(11*h), 350, 30);
  otptimgeffB.setText("Outpatient Imaging Efficiency",GAlign.CENTER,GAlign.MIDDLE);
  otptimgeffB.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  otptimgeffB.addEventHandler(this, "otptimgeffBClick");
  otptimgeffCHB = new GCheckbox(this, x2, cbb + (11*cbh), 70, 18);
  otptimgeffCHB.setVisible(false);
  
   
  
}

public void createNationalMap() {
  //window = GWindow.getWindow(this, "National", 0, 0, 480, 230, JAVA2D);
  //window.addDrawHandler(this, "drawWin");
  
}

public void createCapitalsButtons(){
  
  Montgomery = new GImageButton(this, xPosCaps.getInt(0,0), yPosCaps.getInt(0,0), point);
  Juneau = new GImageButton(this, xPosCaps.getInt(1,0), yPosCaps.getInt(1,0), point);
  Phoenix = new GImageButton(this, xPosCaps.getInt(2,0), yPosCaps.getInt(2,0), point);
  Little_Rock = new GImageButton(this, xPosCaps.getInt(3,0), yPosCaps.getInt(3,0), point);
  Sacramento = new GImageButton(this, xPosCaps.getInt(4,0), yPosCaps.getInt(4,0), point);
  Denver = new GImageButton(this, xPosCaps.getInt(5,0), yPosCaps.getInt(5,0), point);
  Hartford = new GImageButton(this, xPosCaps.getInt(6,0), yPosCaps.getInt(6,0), point);
  Dover = new GImageButton(this, xPosCaps.getInt(7,0), yPosCaps.getInt(7,0), point);
  Tallahassee = new GImageButton(this, xPosCaps.getInt(9,0), yPosCaps.getInt(9,0), point);
  Atlanta = new GImageButton(this, xPosCaps.getInt(10,0), yPosCaps.getInt(10,0), point);
  Honolulu = new GImageButton(this, xPosCaps.getInt(11,0), yPosCaps.getInt(11,0), point);
  Boise = new GImageButton(this, xPosCaps.getInt(12,0), yPosCaps.getInt(12,0), point);
  Springfield = new GImageButton(this, xPosCaps.getInt(13,0), yPosCaps.getInt(13,0), point);
  Indianapolis = new GImageButton(this, xPosCaps.getInt(14,0), yPosCaps.getInt(14,0), point);
  Des_Moines = new GImageButton(this, xPosCaps.getInt(15,0), yPosCaps.getInt(15,0), point);
  Topeka = new GImageButton(this, xPosCaps.getInt(16,0), yPosCaps.getInt(16,0), point);
  Frankfort = new GImageButton(this, xPosCaps.getInt(17,0), yPosCaps.getInt(17,0), point);
  Baton_Rouge = new GImageButton(this, xPosCaps.getInt(18,0), yPosCaps.getInt(18,0), point);
  Augusta = new GImageButton(this, xPosCaps.getInt(19,0), yPosCaps.getInt(19,0), point);
  Annapolis = new GImageButton(this, xPosCaps.getInt(20,0), yPosCaps.getInt(20,0), point);
  Boston = new GImageButton(this, xPosCaps.getInt(21,0), yPosCaps.getInt(21,0), point);
  Lansing = new GImageButton(this, xPosCaps.getInt(22,0), yPosCaps.getInt(22,0), point);
  Saint_Paul = new GImageButton(this, xPosCaps.getInt(23,0), yPosCaps.getInt(23,0), point);
  Jackson = new GImageButton(this, xPosCaps.getInt(24,0), yPosCaps.getInt(24,0), point);
  Jefferson_City = new GImageButton(this, xPosCaps.getInt(25,0), yPosCaps.getInt(25,0), point);
  Helena = new GImageButton(this, xPosCaps.getInt(26,0), yPosCaps.getInt(26,0), point);
  Lincoln = new GImageButton(this, xPosCaps.getInt(27,0), yPosCaps.getInt(27,0), point);
  Carson_City = new GImageButton(this, xPosCaps.getInt(28,0), yPosCaps.getInt(28,0), point);
  Concord = new GImageButton(this, xPosCaps.getInt(29,0), yPosCaps.getInt(29,0), point);
  Trenton = new GImageButton(this, xPosCaps.getInt(30,0), yPosCaps.getInt(30,0), point);
  Santa_Fe = new GImageButton(this, xPosCaps.getInt(31,0), yPosCaps.getInt(31,0), point);
  Albany = new GImageButton(this, xPosCaps.getInt(32,0), yPosCaps.getInt(32,0), point);
  Raleigh = new GImageButton(this, xPosCaps.getInt(33,0), yPosCaps.getInt(33,0), point);
  Bismarck = new GImageButton(this, xPosCaps.getInt(34,0), yPosCaps.getInt(34,0), point);
  Columbus = new GImageButton(this, xPosCaps.getInt(35,0), yPosCaps.getInt(35,0), point);
  Oklahoma_City = new GImageButton(this, xPosCaps.getInt(36,0), yPosCaps.getInt(36,0), point);
  Salem = new GImageButton(this, xPosCaps.getInt(37,0), yPosCaps.getInt(37,0), point);
  Harrisburg = new GImageButton(this, xPosCaps.getInt(38,0), yPosCaps.getInt(38,0), point);
  Providence = new GImageButton(this, xPosCaps.getInt(39,0), yPosCaps.getInt(39,0), point);
  Columbia = new GImageButton(this, xPosCaps.getInt(40,0), yPosCaps.getInt(40,0), point);
  Pierre = new GImageButton(this, xPosCaps.getInt(41,0), yPosCaps.getInt(41,0), point);
  Nashville = new GImageButton(this, xPosCaps.getInt(42,0), yPosCaps.getInt(42,0), point);
  Austin = new GImageButton(this, xPosCaps.getInt(43,0), yPosCaps.getInt(43,0), point);
  Salt_Lake_City = new GImageButton(this, xPosCaps.getInt(44,0), yPosCaps.getInt(44,0), point);
  Montpelier = new GImageButton(this, xPosCaps.getInt(45,0), yPosCaps.getInt(45,0), point);
  Richmond = new GImageButton(this, xPosCaps.getInt(46,0), yPosCaps.getInt(46,0), point);
  Olympia = new GImageButton(this, xPosCaps.getInt(47,0), yPosCaps.getInt(47,0), point);
  Charleston = new GImageButton(this, xPosCaps.getInt(48,0), yPosCaps.getInt(48,0), point);
  Madison = new GImageButton(this, xPosCaps.getInt(49,0), yPosCaps.getInt(49,0), point);
  Cheyenne = new GImageButton(this, xPosCaps.getInt(50,0), yPosCaps.getInt(50,0), point);

  asignCapitals();
}

//
public void createCategoriesButtons() {
  //window = GWindow.getWindow(this, "Categories", 0, 0, 400, 360, JAVA2D);
  //window.addDrawHandler(this, "drawWin");
  // Title
     
  
}
class MyWinData extends GWinData {
  //int sx, sy, ex, ey;
  //boolean done;
  int col, index;
  //PShape state;
}

public void windowDraw(PApplet appc, GWinData data) {
  MyWinData data2 = (MyWinData)data;
  // Create the plot
  plot = new GPlot(appc);
  plot.setDim(700, 300);
  plot.setTitleText("Statal Hospital Evaluation");
  plot.getXAxis().setAxisLabelText("Category");
  plot.getYAxis().setAxisLabelText("Score");
  plot.getXAxis().setNTicks(12);
  plot.setPoints(pointsOktoberfest);
  plot.setLineColor(color(100, 100, 100));
  //plot.addLayer("German elections day", pointsElections);
  //plot.getLayer("German elections day").setLineColor(color(255, 100, 255));
  plot.activatePointLabels();
  // Draw the plot  
  plot.beginDraw();
  plot.drawBox();
  plot.drawXAxis();
  plot.drawYAxis();
  plot.drawTitle();
  plot.drawGridLines(GPlot.VERTICAL);
  plot.drawFilledContours(GPlot.HORIZONTAL, 0);
  plot.drawLegend(new String[] {"H1", "H2"}, new float[] {0.07, 0.22}, 
                  new float[] {0.92, 0.92});
  plot.drawLabels();
  plot.endDraw();
  
  //appc.background(data2.col);
  //if (!(data2.sx == data2.ex && data2.ey == data2.ey)) {
  //  appc.stroke(255);
  //  appc.strokeWeight(2);
  //  appc.noFill();
  //  if (data2.done) {
  //    appc.fill(128);
  //  }
  //  appc.rectMode(CORNERS);
    //appc.rect(data2.sx, data2.sy, data2.ex, data2.ey);
  //}
}  