///////////////////////////////////////////////////
/* Go to Points file ^(up there) to put          */
/* in the x and y compoments,                    */
/* then press the play button up there.          */
/* Controls----                                  */
/* UP button - increase Z value                  */
/* DOWN button - decrease z value                */
///////////////////////////////////////////////////




ArrayList<Point> points = new ArrayList();
float z = 0;
void setup(){
  size(600,400);
  textSize(20);
  for(int x = -5; x < 6; x++){
    for(int y = -5; y < 6; y++){
     points.add(new Point(x,y,(x+5)*40+130,(y+5)*40+30)) ;
    }
  }
}

void draw(){
  
  background(0);
  for(Point p : points){
   p.drawPoint(z); 
  }
  text("Z value: " + z, 20,height-20);
}

void keyPressed(){
 if(keyCode == UP){
  z+=.1;
 }else if(keyCode == DOWN){
  z-=.1; 
 }else if(key == '0'){
  z = 0; 
 }
 
}
