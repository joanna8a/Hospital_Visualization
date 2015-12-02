//Points
PImage mapImage;
Table locationTable;
Table nameTable;
int rowCount;
String csv[];
String myData[][];

Table dataTable;
float dataMin = -10;
float dataMax = 10;

float closestDist;
String closestText;
float closestTextX;
float closestTextY;

//Map Window controls
GWindow window;
GButton appTitle;

int x = 1100;
PFont fontA;

int MmouseX, MmouseY;

// Action controls

Table TeffCrSt;
String TeffCrStVls;

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
//
public void createCategoriesButtons() {
  //window = GWindow.getWindow(this, "Categories", 0, 0, 400, 360, JAVA2D);
  //window.addDrawHandler(this, "drawWin");
  // Title
     
  
}