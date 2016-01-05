class Snow {
  float xx, y, z;
  float x = 500;
 // float xpos, ypos, zpos;
 // float h, w, d;
 // int r, g, b;
  
  public Snow(float xpos, float ypos, float zpos) {
    xx = xpos;
    y = ypos;
    z = zpos;
   // h = (0, 100);
   // w = (0, 100);
   // d = (0, 100);
   // r = (int)random(0, 255);
   // g = (int)random(0, 255);
    //b = (int)random(0, 255);
  } //Snow (constructor)
  
  void drawSnow() {
    pushMatrix();
    translate(xx, y, z);
    fill(255);
    sphere(1);
    popMatrix();
  } //drawSnow
  void update() {
    y += 10;
    if (y > 0) {
      y = -500;
    }
    
  }//update
} //Snow (class)