class Road{
  Road(){
    
  }//road
  
  void drawRoad(){
    pushMatrix();
  translate(-0.5*x,0,-2*x);
  fill(70);
  box(x,2,-4*x);
  popMatrix();
  }//drawRoad
  
}//road