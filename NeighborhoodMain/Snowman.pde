class Snowman {
  Snowman() {
    
  }
  void drawSnowman() {
    pushMatrix();
    translate(x+(x/4), -22, -x+(x/2));
    fill(255);
    sphere(25);
    translate(0, -35, 0);
    fill(255);
    sphere(18);
    translate(-5, -5, 17);
    fill(0);
    sphere(1.5);
    translate(10, 0, 0);
    fill(0);
    sphere(1.5);
    translate(-5, 5, 1);
    fill(0);
    sphere(1.5);
    translate(-7, 3, 0);
    fill(0);
    sphere(1.5);
    translate(3, 2, 0);
    fill(0);
    sphere(1.5);
    translate(4, .5, 0);
    fill(0);
    sphere(1.5);
    translate(4, -.5, 0);
    fill(0);
    sphere(1.5);
    translate(3, -2, 0);
    fill(0);
    sphere(1.5);
    translate(-7, 20, 4);
    fill(0);
    sphere(1.5);
    translate(0, 5, 1.5);
    fill(0);
    sphere(1.5);
    translate(0, 5, 1);
    fill(0);
    sphere(1.5);
    translate(0, 5, 0);
    fill(0);
    sphere(1.5);
    translate(0, 5, -.5);
    fill(0);
    sphere(1.5);
    popMatrix();
    
    pushMatrix();
    translate(x-(x/4), -22, -x+(x/2));
    fill(255);
    sphere(25);
    translate(0, -35, 0);
    fill(255);
    sphere(18);
    translate(-5, -5, 17);
    fill(0);
    sphere(1.5);
    translate(10, 0, 0);
    fill(0);
    sphere(1.5);
    translate(-5, 5, 1);
    fill(0);
    sphere(1.5);
    translate(-7, 3, 0);
    fill(0);
    sphere(1.5);
    translate(3, 2, 0);
    fill(0);
    sphere(1.5);
    translate(4, .5, 0);
    fill(0);
    sphere(1.5);
    translate(4, -.5, 0);
    fill(0);
    sphere(1.5);
    translate(3, -2, 0);
    fill(0);
    sphere(1.5);
    translate(-7, 20, 4);
    fill(0);
    sphere(1.5);
    translate(0, 5, 1.5);
    fill(0);
    sphere(1.5);
    translate(0, 5, 1);
    fill(0);
    sphere(1.5);
    translate(0, 5, 0);
    fill(0);
    sphere(1.5);
    translate(0, 5, -.5);
    fill(0);
    sphere(1.5);
    popMatrix();
    
    
    
  }
}