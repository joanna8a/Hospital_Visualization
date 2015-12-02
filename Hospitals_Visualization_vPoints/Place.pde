// Code from Visualizing Data, First Edition, Copyright 2008 Ben Fry.

class Place {
  int code;
  String name;
  float x;
  float y;
        
  int partial[];
  int matchDepth;


  public Place(int code, String name, float lon, float lat) {
    this.code = code;
    this.name = name;
    this.x = lon;
    this.y = lat;

    partial = new int[6];
    partial[5] = code;
    partial[4] = partial[5] / 10;
    partial[3] = partial[4] / 10;
    partial[2] = partial[3] / 10;
    partial[1] = partial[2] / 10;
  }

  void draw(){
    float xx = TX(x);
    float yy = TY(y);

    if ((xx < 0) || (yy < 0) || (xx >= width) || (yy >= height)) return;

   
      set((int)xx , (int)yy , color(0));

    
  
}
}