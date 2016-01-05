class Tree {
  float xx,y,z,w,h,l;
  
  Tree(float xPos, float zPos, float wid, float hei, float len){
    xx = xPos;
//    y = yPos;
    z = zPos;
    w = wid;
    h = hei;
    l = len;
  }//end Tree
  
  void drawTree(){
    pushMatrix();
    translate(xx,-h/2,z);
    fill(85,60,6);
    box(w,h,l);
    popMatrix();
    pushMatrix();
    translate(xx-0.5*w,-h,z+(l/2));   //front left leaf
    fill(24,111,1);
    //fill(255);
    sphere(sphereRad);
    popMatrix();
    pushMatrix();
    translate(xx+0.5*w,-h,z+(l/2)); //front right leaf
    sphere(sphereRad);
    popMatrix();
    pushMatrix();
    translate(xx,-h,z-(l/2));
    sphere(sphereRad);
    popMatrix();
    pushMatrix();
    fill(255);
    translate(xx,-(h+0.5*w),z);
    sphere(sphereRad);
    popMatrix();
    
  }//end drawTree
  
  
}//class Tree