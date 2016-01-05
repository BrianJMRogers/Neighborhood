ArrayList<Snow> snow = new ArrayList<Snow>();
ArrayList<Property> propertiesRight = new ArrayList<Property>();
ArrayList<Property> propertiesLeft = new ArrayList<Property>();
float camX, camY, camZ;
float lookX, lookY, lookZ;
float angle;
float angleV;
float treeDist;
float moonY, sunY;
PImage moon, sun;
boolean moonrise;
boolean sunrise;
boolean flashlight;
Road myRoad;
boolean road;
final float sphereRad = 50;
final float x = 500;
int l = 1;


void setup() {
  frameRate(30);
  size(1000, 600, P3D);
  background(0);
  fill(255);
  noStroke();
  pushMatrix();
  translate(-0.5*x,0,-2*x);
  fill(70);
  box(x,2,-4*x);
  popMatrix();
  road = true;
  myRoad = new Road();
  
  for (int i = 1; i<6; i++){
    
    propertiesRight.add(new Property());
  }
  for (int i = 1; i<6; i++){
    
    propertiesLeft.add(new Property());
  }
  for (int i = 0; i < 400; i++) {
    snow.add(new Snow(random(-3*x, 2*x), random(-500, 0), random(-4*x, 0)));
  }//for

  camX = x;
  camY = -50;
  camZ = 0;
  lookX = 0;
  lookY = 0;
  lookZ = -100000;
  angle = 0;
  angleV = 0;
  moonY = 0;
  sunY = 0;
  moonrise = false;
  sunrise = false;
  flashlight = false;
  moon = loadImage("moon.jpg");
  sun = loadImage("sun.png");
  l = 1;
}//setup

void draw() {
  lights();
  background(0);
  if(road){
  myRoad.drawRoad();
  }
  
  //////////////////////////////////////////////////////////////moon
  if (moonrise) {
    background(0);
    sunY = 0;
    noLights();
    myRoad.drawRoad();
    spotLight(255, 255, 255, 1000, moonY, -1500, 0, 0, -1, PI, 1);
    pushMatrix();
    translate(500, 0, -3000);
    pointLight(255, 255, 255, 500, moonY, 1000);
    rotateY(radians(-25));
    image(moon, 0, moonY, 3*x, 2*x);
    if (moonY > -200); {
      moonY -= 30;
      if (moonY < -2500) {
        moonY += 30;
      }
    }
    popMatrix();
  }
  //////////////////////////////////////////////////////////////moon
  
  
  //////////////////////////////////////////////////////////////flashlight
  if (flashlight) {
    background(0);
    noLights();
    myRoad.drawRoad();
    sunY = 0;
    pushMatrix();
    spotLight(255, 255, 255, camX, camY, camZ, lookX, lookY, lookZ, PI, 100);    
    spotLight(255, 255, 255, 1000, -2000, -1500, 0, 0, -1, PI, 1);
    translate(500, 0, -3000);
    pointLight(255, 255, 255, 500, moonY, 1000);
    rotateY(radians(-25));
    image(moon, 0, moonY, 3*x, 2*x);
    translate(-500, 0, 3000);   
    if (moonY > -200); {
      moonY -= 30;
      if (moonY < -2500) {
        moonY += 30;
      }
    }
    popMatrix();
  }
  //////////////////////////////////////////////////////////////flashlight
  
  
  //////////////////////////////////////////////////////////////sunrise
  if (sunrise) {
    background(81,187,255);
    moonY = 0;
    myRoad.drawRoad();
    lights();
    spotLight(255, 255, 255, -3*x, sunY, -1500, 0, 0, -1, PI, 1);
    pushMatrix();
    translate(-3*x, 0, -3000);
    pointLight(255, 255, 255, -1000, sunY, 1000);
    rotateY(radians(35));
    fill(255,255,0);
    ellipse(0,sunY,2*x,2*x);
    if (sunY > -200); {
      sunY -= 30;
      if (sunY < -2500) {
        sunY += 30;
      }
    }
    popMatrix();
  }
  //////////////////////////////////////////////////////////////sunrise

  //////////////////////////////////////////////////////////////draw snowballs
  
   for (int i = 0; i < 200; i++) {
    snow.get(i).drawSnow();
    snow.get(i).update();
  }//for
  pushMatrix();
  for (int i = 1; i < 3; i++) {
    rotateY(radians(270));
    translate(-2*x,0,0);
    propertiesRight.get(i).drawProperty();
    rotateY(radians(90));
  }
  popMatrix();
  for (int i = 0; i < 2; i++) {
    pushMatrix();
    popMatrix();
    pushMatrix();
    rotateY(radians(90));
   translate(i*2*x,0,-x);
   propertiesLeft.get(i).drawProperty();
   popMatrix();
  }

   
   //////////////////////////////////////////////////////////////draw snowballs
  
keyboardImput();
  mousePosition();
  camera(camX, camY, camZ, lookX, lookY, lookZ, 0, 1, 0);
}//draw


//////////////////////////////////////////////////////////////keyboard function

void keyboardImput() {
  if (keyPressed && (key == CODED)) {
    switch (keyCode) {
      case LEFT:
        camX += 20*sin(radians(angle-90));
        camZ += -20*cos(radians(angle-90));
        break;
        
      case RIGHT:
        camX += -20*sin(radians(angle-90));
        camZ += 20*cos(radians(angle-90));
        break;
        
      case UP:
        camX += 20*sin(radians(angle));
        camZ += -20*cos(radians(angle));
        break;
        
      case DOWN:
        camX += -20*sin(radians(angle));
        camZ += 20*cos(radians(angle));
        break;
        
      default:
        break;
      
    }//switch
  }//if
  if (key == 'q') {
    moonrise = false;
    sunrise = true;
    flashlight = false;
  }
  if (key == 'w') {
    moonrise = true;
    sunrise = false;
    flashlight = false;
  }
  if (key == 'r') {
    moonrise = false;
    sunrise = false;
    flashlight = false;
  }
  if (key == 'e' && moonrise) {
    moonrise = false;
    sunrise = false;
    flashlight = true;
  }
}//keyboardImput

//////////////////////////////////////////////////////////////keyboard function




//////////////////////////////////////////////////////////////mouse position
void mousePosition() {
  float mouse = mouseX;
  float mou = mouseY;
  float wid = width;
  float hei = height;
  angle = ((mouse/wid)-0.5)*360;
  angleV = ((mou/hei)-0.5)*180;
  updateCameraPointing();
}//mousePosition
//////////////////////////////////////////////////////////////mouse position

//////////////////////////////////////////////////////////////camera pointing
void updateCameraPointing() {
  lookX = 100000*sin(radians(angle));
  lookY = 100000*sin(radians(angleV));
  lookZ = -100000*cos(radians(angle));
}//updateCameraPointing
//////////////////////////////////////////////////////////////camera pointing