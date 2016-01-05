class Property{
  ArrayList<Tree> treesBack = new ArrayList<Tree>();
  ArrayList<Tree> treesLeft = new ArrayList<Tree>();
  ArrayList<Tree> treesRight = new ArrayList<Tree>();
  float treeDist;
  House MyHouse;
  Snowman MySnowman;
  Snowballs MySnowballs; 
  
  
  Property(){
    treeDist = 2*sphereRad+20;
  float aTTCF = floor(x*2/treeDist); //amountTreesThatCanFit
  float TSL = (x*2/aTTCF); //treeSectionLength
  for (int i = 0; i<aTTCF; i++){
     treesBack.add(new Tree((0.5*TSL)+(i*TSL),-950,20,200,20));
   }//for
   for (int i = 0; i<aTTCF-1; i++){
     treesLeft.add(new Tree((x/10),-(0.5*TSL)+(-i*TSL),20,200,20));
   }//end for
   for (int i = 0; i<aTTCF-1; i++){
     treesRight.add(new Tree((2*x)-(x/10),-(0.5*TSL)+(-i*TSL),20,200,20));
   }//end for
    MyHouse = new House();
    MySnowman = new Snowman();
    MySnowballs = new Snowballs();
    
  }//property
  
  void drawProperty(){
    
    pushMatrix();
    translate(x, 0, -x);
    fill(255);
    box(2*x, 2, 2*x);
    translate(0,200,0);
    fill(0);
    //box(16000,2,8000);
    popMatrix();
    for(int i = 0; i<treesBack.size(); i++){
      treesBack.get(i).drawTree();
    }
    for(int i = 0; i<treesLeft.size(); i++){
      treesLeft.get(i).drawTree();
    }//end for
    for(int i = 0; i<treesRight.size(); i++){
      treesRight.get(i).drawTree();
    }//end for
    MyHouse.drawHouse();
    MySnowman.drawSnowman();
    MySnowballs.drawSnowballs();
  }//draw property
}