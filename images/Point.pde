class Point {
  int x;
  int y;
  int z;
  int xPos;
  int yPos;
  float xVectorFunction;
  float yVectorFunction;
  PVector p = new PVector();
  Point(int x, int y, int xPos, int yPos){
    this.x = x;
    this.y = y;
    this.xPos = xPos;
    this.yPos = yPos;
    
  }
  void drawPoint(float z){
    
    
    
    //vvv put the x and y components of the force HERE vvvv
    p.x = x*x*y;
    p.y = 3*x-y*z;
    //^^^ put the x and y components of the force HERE ^^^
    p.normalize().mult(25);
    
    
    fill(255);
    stroke(255);
    ellipse(xPos,yPos,3,3);
    
    
    line(xPos,yPos, xPos+p.x, yPos+p.y);
  }
}
