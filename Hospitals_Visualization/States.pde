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
PShape delaware;
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
PShape oregon;
PShape washington;
PShape hawaii;

PImage statecolors;

PShape[] states = new PShape[51];
String[] nmsSts = new String [] {"Alabama","Alaska","Arizona","Arkansas","California",
"Colorado","Connecticut ","Delaware","Florida","Georgia","Hawaii","Idaho ","Illinois",
"Indiana","Iowa","Kansas","Kentucky","Louisiana ","Maine","Maryland ","Massachusetts",
"Michigan ","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire",
"New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon",
"Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas ","Utah","Vermont",
"Virginia","Washington","West Virginia","Wisconsin","Wyoming"};

String[] nmsCaps = new String [] {"Montgomery","Juneau","Phoenix","Little_Rock",
"Sacramento","Denver","Hartford","Dover","Tallahassee","Atlanta","Honolulu","Boise",
"Springfield","Indianapolis","Des_Moines","Topeka","Frankfort","Baton_Rouge","Augusta",
"Annapolis","Boston","Lansing","Saint_Paul","Jackson","Jefferson_City","Helena",
"Lincoln","Carson_City","Concord","Trenton","Santa_Fe","Albany","Raleigh","Bismarck",
"Columbus","Oklahoma_City","Salem","Harrisburg","Providence","Columbia","Pierre",
"Nashville","Austin","Salt_Lake_City","Montpelier","Richmond","Olympia","Charleston"
,"Madison","Cheyenne"};


public void asignStates(){
  states[0] = alabama;
  states[1] = alaska;
  states[2] = arizona;
  states[3] = arkansas;
  states[4] = california;
  states[5] = colorado;
  states[6] = connecticut;
  states[7] = delaware;
  states[8] = districtOfColumbia;
  states[9] = florida;
  states[10] = georgia;
  states[11] = hawaii;
  states[12] = idaho;
  states[13] = illinois;
  states[14] = indiana;
  states[15] = iowa;
  states[16] = kansas;
  states[17] = kentucky;
  states[18] = louisiana;
  states[19] = maine;
  states[20] = maryland;
  states[21] = massachusetts;
  states[22] = michigan;
  states[23] = minnesota;
  states[24] = mississippi;
  states[25] = missouri;
  states[26] = montana;
  states[27] = nebraska;
  states[28] = nevada;
  states[29] = newHampshire;
  states[30] = newJersey;
  states[31] = newMexico;
  states[32] = newYork;
  states[33] = northCarolina;
  states[34] = northDakota;
  states[35] = ohio;
  states[36] = oklahoma;
  states[37] = oregon;
  states[38] = pennsylvania;
  states[39] = rhodeIsland;
  states[40] = southCarolina;
  states[41] = southDakota;
  states[42] = tennessee;
  states[43] = texas;
  states[44] = utah;
  states[45] = vermont;
  states[46] = virginia;
  states[47] = washington;
  states[48] = westVirginia;
  states[49] = wisconsin;
  states[50] = wyoming;
   
}

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
  delaware = usa.getChild("DE");
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
  oregon = usa.getChild("OR");
  washington = usa.getChild("WA");
  hawaii = usa.getChild("HI");
}
color[] colors = new color[51];

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
  
    for (int i = 0; i < states.length;i++){
      states[i].disableStyle();
      fill(colors[i]);
      stroke(0);
      shape(states[i], 10, 75); 
    }
  
  
}