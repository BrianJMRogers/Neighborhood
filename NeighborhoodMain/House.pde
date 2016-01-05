class House {
  float r,g,b;
  House() {
    r = random(60,150);
    
  }
  void drawHouse() {
    pushMatrix();
    translate(x, -62, -x);//house location
    fill(r,0,0);
    box(.25*x, .25*x, .35*x);//house
    popMatrix();
    pushMatrix();
    translate(x, -125, -x);//roof location
    rotate(radians(45));
    fill(100, 0, 0);
    box(.178*x, .178*x, .345*x);//roof
    popMatrix();
    pushMatrix();
    translate(x, -33, -x+(x/5)-12);//door location
    fill(162, 95, 7);
    box(.07*x, .13*x, .5);//door
    popMatrix();
    pushMatrix();
    translate(x+10, -30, -x+(x/5)-10);//knob location
    fill(0);
    sphere(2);//knob
    popMatrix();
    pushMatrix();
    translate(x+(x/14), (-x/5.5), -x+(x/5)-12);//right window location
    fill(255, 255, 0);
    box(.05*x, .05*x, .5);//right window
    popMatrix();
    pushMatrix();
    translate(x-(x/14), (-x/5.5), -x+(x/5)-12);//left window location
    fill(255, 255, 0);
    box(.05*x, .05*x, .5);//left window
    popMatrix();
    pushMatrix();
    translate(x+(x/14), (-x/5.5), -x+(x/5)-11.5);//right window frame location
    fill(0);
    box(.005*x, .05*x, .5);//vertical window frame
    box(.05*x, .005*x, .5);//horizontal window frame
    popMatrix();
    pushMatrix();
    translate(x-(x/14), (-x/5.5), -x+(x/5)-11.5);//left window frame location
    fill(0);
    box(.005*x, .05*x, .5);//vertical window frame
    box(.05*x, .005*x, .5);//horizontal window frame
    popMatrix();
    pushMatrix();
    translate(x+(x/12), -125, -x);//chimney location
    fill(100, 0, 0);
    box(.05*x, .4*x, .05*x);//chimney
    popMatrix();
    
    
    //Front Bricks
    pushMatrix();
    translate(x+(x/12), -218, -x+13);
    fill(255);
    translate(0, -7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);    
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    popMatrix();
     //vertical front
    pushMatrix();
    translate(x+(x/12), -218, -x+13);
    fill(255);
    translate(-4, -3.5, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    popMatrix();
    
    //Back Bricks
    pushMatrix();
    translate(x+(x/12), -218, -x-13);
    fill(255);
    translate(0, -7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);    
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    translate(0, 7, 0);
    box(.05*x, .0005*x, .5);
    popMatrix();
         //vertical back
    pushMatrix();
    translate(x+(x/12), -218, -x-13);
    fill(255);
    translate(-4, -3.5, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    translate(8, 7, 0);
    box(.0005*x, 7, .5);
    translate(-8, 7, 0);
    box(.0005*x, 7, .5);
    popMatrix();
    
        //Right Bricks
    pushMatrix();
    translate(x+(x/12)+13, -218, -x);
    fill(255);
    translate(0, -7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    popMatrix();
         //vertical right
    pushMatrix();
    translate(x+(x/12)+13, -218, -x);
    fill(255);
    translate(0, -3.5, -4);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    popMatrix();
    
    //Left Bricks
    pushMatrix();
    translate(x+(x/12)-13, -218, -x);
    fill(255);
    translate(0, -7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    box(.0005*x, .5, .05*x);
    translate(0, 7, 0);
    popMatrix();
     //vertical left
    pushMatrix();
    translate(x+(x/12)-13, -218, -x);
    fill(255);
    translate(0, -3.5, -4);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    translate(0, 7, 8);
    box(.0005*x, 7, .5);
    translate(0, 7, -8);
    box(.0005*x, 7, .5);
    popMatrix();
    
    //snow on roof
    pushMatrix();
    translate(x+32, (-x/4)-32, -x);
    rotate(radians(45));
    fill(255);
    box(.182*x, 1, .345*x);
    popMatrix();
    pushMatrix();
    translate(x-32, (-x/4)-32, -x);
    rotate(radians(-45));
    fill(255);
    box(.182*x, 1, .345*x);
    popMatrix();
    
    //sidewalk
    pushMatrix();
    translate(x, -2, -x/2);
    fill(100);
    box(.07*x, 1, x);
    popMatrix();
    pushMatrix();
    translate(x, -2.5, -350);
    fill(0);
    box(.07*x, .5, .5);
    translate(0, 0, 50);
    fill(0);
    box(.07*x, .5, .5);
    translate(0, 0, 50);
    fill(0);
    box(.07*x, .5, .5);
    translate(0, 0, 50);
    fill(0);
    box(.07*x, .5, .5);
    translate(0, 0, 50);
    fill(0);
    box(.07*x, .5, .5);
    translate(0, 0, 50);
    fill(0);
    box(.07*x, .5, .5);
    translate(0, 0, 50);
    fill(0);
    box(.07*x, .5, .5);
    translate(0, 0, 50);
    fill(0);
    box(.07*x, .5, .5);
    popMatrix();
    pushMatrix();
    translate(x-(x/8), -22, -x/2);
    fill(162, 95, 7);
    box(35, 20, 2);// top sign
    fill(162, 95, 7);
    translate(0, 16, 0);
    box(5, 15, 2);//post
    fill(255);
    translate(0, -27, 0);
    box(35, 2, 2);//snow on sign
    popMatrix();
    pushMatrix();
    translate(x-(x/8), -22, -x/2);
    smooth();
    textSize(10);
    fill(0);
    text("Let it", -12, 0, 1.1);
    text("Snow!!!", -16, 8, 1.1);
    popMatrix();
    
    
  }
}