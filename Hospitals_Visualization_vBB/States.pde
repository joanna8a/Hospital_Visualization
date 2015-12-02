PShape usa;
PShape michigan;
PShape ohio;
PShape maine;
PShape newHampshire;
PShape vermont;
PShape massachusetts;
PShape newYork;
PShape pennsylvania;
PShape rhodeIsland;
PShape connecticut;
PShape newJersey;
PShape deleware;
PShape maryland;
PShape virginia;
PShape districtOfColumbia;
PShape westVirginia;
PShape kentucky;
PShape tennessee;
PShape arkansas;
PShape missouri;
PShape northCarolina;
PShape southCarolina;
PShape georgia;
PShape florida;
PShape alabama;
PShape mississippi;
PShape louisiana;
PShape arizona;
PShape texas;
PShape oklahoma;
PShape kansas;
PShape nebraska;
PShape southDakota;
PShape northDakota;
PShape montana;
PShape wyoming;
PShape idaho;
PShape utah;
PShape alaska;
PShape indiana;
PShape illinois;
PShape iowa;
PShape minnesota;
PShape wisconsin;
PShape newMexico;
PShape colorado;
PShape nevada;
PShape california;
PShape oregan;
PShape washington;
PShape hawaii;

PImage statecolors;


void getStates(){
  michigan = usa.getChild("MI");
  ohio = usa.getChild("OH");
  maine = usa.getChild("ME");
  newHampshire = usa.getChild("NH");
  vermont = usa.getChild("VT");
  massachusetts = usa.getChild("MA");
  newYork = usa.getChild("NY");
  pennsylvania = usa.getChild("PA");
  rhodeIsland = usa.getChild("RI");
  connecticut = usa.getChild("CT");
  newJersey = usa.getChild("NJ");
  deleware = usa.getChild("DE");
  maryland = usa.getChild("MD");
  virginia = usa.getChild("VA");
  districtOfColumbia = usa.getChild("DC");
  westVirginia = usa.getChild("WV");  
  kentucky = usa.getChild("KY");
  tennessee = usa.getChild("TN");
  arkansas = usa.getChild("AR");
  missouri = usa.getChild("MO");
  northCarolina = usa.getChild("NC");
  southCarolina = usa.getChild("SC");
  georgia = usa.getChild("GA");
  florida = usa.getChild("FL");
  alabama = usa.getChild("AL");
  mississippi = usa.getChild("MS");
  louisiana = usa.getChild("LA");
  arizona = usa.getChild("AZ");
  texas = usa.getChild("TX");
  oklahoma = usa.getChild("OK");
  kansas = usa.getChild("KS");
  nebraska = usa.getChild("NE");
  southDakota = usa.getChild("SD");
  northDakota = usa.getChild("ND");
  montana = usa.getChild("MT");
  wyoming = usa.getChild("WY");
  idaho = usa.getChild("ID");
  utah = usa.getChild("UT");
  alaska = usa.getChild("AK");
  indiana = usa.getChild("IN");
  illinois = usa.getChild("IL");
  iowa = usa.getChild("IA");
  minnesota = usa.getChild("MN");
  wisconsin = usa.getChild("WI");
  newMexico = usa.getChild("NM");
  colorado = usa.getChild("CO");
  nevada = usa.getChild("NV");
  california = usa.getChild("CA");
  oregan = usa.getChild("OR");
  washington = usa.getChild("WA");
  hawaii = usa.getChild("HI");
}
color[] colors = new color[52];

void generateColors(int cat){
for (int i = 0; i < colors.length; i++) {
  
  colors[i] = categorySelector(cat);
  }
}

color categorySelector(int index){
  // color col = color(82, 77, 77, 255); // gris
  color col = color(5, 78, 50, 100); //negro
String[] words = { "Structural Measures", "Medicare Volume", "HCAHPS", "Hospital Value Based","Timely and Effective Care", "Healthcare Associated Infections", "R, C & D","Payment", "IPFQR", "Medicare Spending","Out. Procedures", "Outpatient Imaging Efficiency"};
int j = int(random(52));
switch(index) {
  case 0: 
    return nat[j];
  case 1: 
    return strMsrs[j];
  case 2: 
    return medcrVol[j];   
  case 3: 
    return hcahps[j];   
  case 4: 
    return hvb[j];  
  case 5: 
    return timAndEffCare[j]; 
  case 6: 
    return hcAssocInf[j];  
  case 7: 
    return readmCompDeaths[j]; //medcrVol;  
  case 8: 
    return payment[j];   
  case 9: 
    return ipfqr[j];
  case 10: 
    return medcrSpnd[j]; 
  case 11: 
    return outpatPrcdrs[j];
  case 12: 
    return outpatImgEff[j];
}
return col;
}

void drawStates() {
  
 // Michigan
  michigan.disableStyle();
  fill(colors[0]);
//  stroke(0);
  stroke(0);
  shape(michigan, 10, 75); 
  if (MmouseX > 634 && MmouseX < 707 && MmouseY > 194 && MmouseY < 277) {
  fill(0);
    
    text("50.3 MI", 570, 700);
    text("39.0 CHI", 725, 700);
    
    }
 
  // Ohio
  ohio.disableStyle();
  fill(colors[1]);
  stroke(0);
  shape(ohio, 10, 75);
  if (MmouseX > 676 && MmouseX < 736 && MmouseY > 286 && MmouseY < 337) {
  fill(0);
    text("45", 570, 700);
    text("41", 725, 700);
 }

  // Maine
  maine.disableStyle();
  fill(colors[2]);
  stroke(0);
  shape(maine, 10, 75);
  if (MmouseX > 883 && MmouseX < 936 && MmouseY > 114 && MmouseY < 209) {
  fill(0);
    text("55", 570, 700);
    text("37", 725, 700);
  }

  // New Hampshire
  newHampshire.disableStyle();
  fill(colors[3]);
  stroke(0);
  shape(newHampshire, 10, 75);
  if (MmouseX > 871 && MmouseX < 889 && MmouseY > 169 && MmouseY < 218) {
  fill(0);
    text("46.5", 570, 700);
    text("43.0", 725, 700);
  }

  //Vermont 
  vermont.disableStyle();
  fill(colors[4]);
  stroke(0);
  shape(vermont, 10, 75);
  if (MmouseX > 846 && MmouseX < 865 && MmouseY > 182 && MmouseY < 227) {
  fill(0);
    text("58", 570, 700);
    text("33", 725, 700);
  }

  // Massachusetts
  massachusetts.disableStyle();
  fill(colors[5]);
  stroke(0);
  shape(massachusetts, 10, 75);
  if (MmouseX > 856 && MmouseX < 927 && MmouseY > 231 && MmouseY < 240) {
  fill(0);
    text("54.5", 570, 700);
    text("36.0", 725, 700);
  }

  // New York
  newYork.disableStyle();
  fill(colors[6]);
  stroke(0);
  shape(newYork, 10, 75);
  if (MmouseX > 766 && MmouseX < 855 && MmouseY > 195 && MmouseY < 247) {
  fill(0);
    text("58.3", 570, 700);
    text("33.3", 725, 700);
  }

  // Pennsylvania
  pennsylvania.disableStyle();
  fill(colors[7]);
  stroke(0);
  shape(pennsylvania, 10, 75);
  if (MmouseX > 751 && MmouseX < 833 && MmouseY > 273 && MmouseY < 300) {
  fill(0);
    text("46.0", 570, 700);
    text("39.0", 725, 700);
  }

  // Rhode Island 
  rhodeIsland.disableStyle();
  fill(colors[8]);
  stroke(0);
  shape(rhodeIsland, 10, 75);
  if (MmouseX > 883 && MmouseX < 893 && MmouseY > 242 && MmouseY < 249) {
  fill(0);
    text("54", 570, 700);
    text("37", 725, 700);
  }
  
  // Connecticut
  connecticut.disableStyle();
  fill(colors[9]);
  stroke(0);
  shape(connecticut, 10, 75);
  if (MmouseX > 856 && MmouseX < 883 && MmouseY > 247 && MmouseY < 260) {
  fill(0);
    text("53", 570, 700);
    text("37", 725, 700);
  }

  // New Jersey
  newJersey.disableStyle();
  fill(colors[10]);
  stroke(0);
  shape(newJersey, 10, 75);
  if (MmouseX > 841 && MmouseX < 859 && MmouseY > 266 && MmouseY < 312) {
  fill(0);
    text("50.3", 570, 700);
    text("38.3", 725, 700);
  }

  // Deleware
  deleware.disableStyle();
  fill(colors[11]);
  stroke(0);
  shape(deleware, 10, 75);
  if (MmouseX > 835 && MmouseX < 850 && MmouseY > 310 && MmouseY < 329) {
  fill(0);
    //text("", 570, 700);
    //text("", 725, 700);
  }

  // Maryland
  maryland.disableStyle();
  fill(colors[12]);
  stroke(0);
  shape(maryland, 10, 75);
  if (MmouseX > 799 && MmouseX < 838 && MmouseY > 311 && MmouseY < 336) {
  fill(0);
    text("50.3", 570, 700);
    text("38.3", 725, 700);
  }

  // Virginia
  virginia.disableStyle();
  fill(colors[13]);
  stroke(0);
  shape(virginia, 10, 75);
  if (MmouseX > 774 && MmouseX < 843 && MmouseY > 343 && MmouseY < 370) {
  fill(0);
    text("47.5", 570, 700);
    text("44.3", 725, 700);
  }

  // Washington D.C
  districtOfColumbia.disableStyle();
  fill(colors[14]);
  stroke(0);
  shape(districtOfColumbia, 10, 75);

  // West Virginia
  westVirginia.disableStyle();
  fill(colors[15]);
  stroke(0);
  shape(westVirginia, 10, 75);
  if (MmouseX > 741 && MmouseX < 767 && MmouseY > 328 && MmouseY < 364) {
  fill(0);
    text("33", 570, 700);
    text("54", 725, 700);
  }

  // Kentucky
  kentucky.disableStyle();
  fill(colors[16]);
  stroke(0);
  shape(kentucky, 10, 75);
  if (MmouseX > 631 && MmouseX < 719 && MmouseY > 378 && MmouseY < 390) {
  fill(0);
    text("40", 570, 700);
    text("48", 725, 700);
  }

  // Tennessee
  tennessee.disableStyle();
  fill(colors[17]);
  stroke(0);
  shape(tennessee, 10, 75);
  if (MmouseX > 609 && MmouseX < 703 && MmouseY > 407 && MmouseY < 428) {
  fill(0);
    text("41", 570, 700);
    text("47", 725, 700);
  }

  // Arkansas
  arkansas.disableStyle();
  fill(colors[18]);
  stroke(0);
  shape(arkansas, 10, 75);

  

  // Missouri
  missouri.disableStyle();
  fill(colors[19]);
  stroke(0);
  shape(missouri, 10, 75);
  

  // North Carolina
  northCarolina.disableStyle();
  fill(colors[20]);
  stroke(0);
  shape(northCarolina, 10, 75);
  

  // South Carolina
  southCarolina.disableStyle();
  fill(colors[21]);
  stroke(0);
  shape(southCarolina, 10, 75);

  // Georgia
  georgia.disableStyle();
  fill(colors[22]);
  stroke(0);
  shape(georgia, 10, 75);

  // Florida
  florida.disableStyle();
  fill(colors[23]);
  stroke(0);
  shape(florida, 10, 75);

  // Alabama
  alabama.disableStyle();
  fill(colors[24]);
  stroke(0);
  shape(alabama, 10, 75);

  // Mississippi
  mississippi.disableStyle();
  fill(colors[25]);
  stroke(0);
  shape(mississippi, 10, 75);

  // Lousiana
  louisiana.disableStyle();
  fill(colors[26]);
  stroke(0);
  shape(louisiana, 10, 75);

  // Arizona
  arizona.disableStyle();
  fill(colors[27]);
  stroke(0);
  shape(arizona, 10, 75);

  // Texas
  texas.disableStyle();
  fill(colors[28]);
  stroke(0);
  shape(texas, 10, 75);
if (MmouseX > 368 && MmouseX < 530 && MmouseY > 459 && MmouseY < 604) {
  fill(0);
    text("43", 570, 700);
    text("50", 725, 700);
  }
  
  // Oklahoma
  oklahoma.disableStyle();
  fill(colors[29]);
  stroke(0);
  shape(oklahoma, 10, 75);

  // Kansas
  kansas.disableStyle();
  fill(colors[30]);
  stroke(0);
  shape(kansas, 10, 75);

  // Nebraska
  nebraska.disableStyle();
  fill(colors[31]);
  stroke(0);
  shape(nebraska, 10, 75);

  // South Dakota
  southDakota.disableStyle();
  fill(colors[32]);
  stroke(0);
  shape(southDakota, 10, 75);

  // North Dakota
  northDakota.disableStyle();
  fill(colors[33]);
  stroke(0);
  shape(northDakota, 10, 75);

  // Montana
  montana.disableStyle();
  fill(colors[34]);
  stroke(0);
  shape(montana, 10, 75);

  // Wyoming
  wyoming.disableStyle();
  fill(colors[35]);
  stroke(0);
  shape(wyoming, 10, 75);

  // Idaho
  idaho.disableStyle();
  fill(colors[36]);
  stroke(0);
  shape(idaho, 10, 75);

  // Utah
  utah.disableStyle();
  fill(colors[37]);
  stroke(0);
  shape(utah, 10, 75);

  // Alaska
  alaska.disableStyle();
  fill(colors[38]);
  stroke(0);
  shape(alaska, 10, 75);

  // Indiana
  indiana.disableStyle();
  fill(colors[39]);
  stroke(0);
  shape(indiana, 10, 75);
  //if MmouseX 

  // Illinois
  illinois.disableStyle();
  fill(colors[40]);
  stroke(0);
  shape(illinois, 10, 75);

  // Iowa
  iowa.disableStyle();
  fill(colors[41]);
  stroke(0);
  shape(iowa, 10, 75);

  // Minnesota
  minnesota.disableStyle();
  fill(colors[42]);
  stroke(0);
  shape(minnesota, 10, 75);

  // Wisconsin
  wisconsin.disableStyle();
  fill(colors[43]);
  stroke(0);
  shape(wisconsin, 10, 75);

  // New Mexico
  newMexico.disableStyle();
  fill(colors[44]);
  stroke(0);
  shape(newMexico, 10, 75);

  // Colorado
  colorado.disableStyle();
  fill(colors[45]);
  stroke(0);
  shape(colorado, 10, 75);

  // Nevada
  nevada.disableStyle();
  fill(colors[46]);
  stroke(0);
  shape(nevada, 10, 75);

  // California
  california.disableStyle();
  fill(colors[47]);
  stroke(0);
  shape(california, 10, 75);
  if (MmouseX > 41 && MmouseX < 124 && MmouseY > 307 && MmouseY < 454) {
  fill(0);
    text("57.8", 570, 700);
    text("34.3", 725, 700);
  }

  // Oregan
  oregan.disableStyle();
  fill(colors[48]);
  stroke(0);
  shape(oregan, 10, 75);

  // Washington
  washington.disableStyle();
  fill(colors[49]);
  stroke(0);
  shape(washington, 10, 75);

  // Hawaii
  hawaii.disableStyle();
  fill(colors[50]);
  stroke(0);
  shape(hawaii, 10, 75);
}