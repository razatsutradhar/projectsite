float aMult = random(1, 5);
float aAdd = random(0, 3);
float aFrequency = random(.1, 2);
float bMult = random(1, 5);
float bAdd = random(0, 3);
float bFrequency = random(.1, 2);

float n1Mult = random(1, 3);
float n1Add = random(1, 6);
float n2Mult = random(.5, 3);
float n2Add = random(1.5, 2);
float n2Frequency = random(.1, 5);
float n3Mult = random(.5, 1);
float n3Add = random(1.3, 2);
float n3Frequency = random(.1, 5);
int spikeNumber = int(random(1, 10))*2;
float red = random(0, 200)+55;
float green = random(0, 200)+55;
float blue = random(0, 200)+55;

boolean record = false;
void setup() {
  size(400,300);
  noFill();
  background(0);
  strokeWeight(2);
  frameRate(120);
  background(0);
}
float t = 0;

void draw() {
  translate(width/2, height/2);

  stroke(abs(cos(t))*red, abs(cos(t))*green, abs(cos(t))*blue);
  rotate(t);
  beginShape();
  //add vertices
  for (float theta = -PI+1; theta <= PI+1; theta+=.01) {
    float radius = r(theta, 
      (sin(t)*aFrequency)*aMult+aAdd, //spike set 1 size
      (cos(t)*bFrequency)*bMult+bAdd, //spike set 2 size
      spikeNumber, //number of spikes
      cos(t)*n1Mult+n1Add, 
      sin(t)*n2Mult+n2Add, 
      cos(t)*n3Mult +n3Add
      );
    float x = radius*cos(theta) * 100;
    float y = radius*sin(theta) * 100;

    vertex(x, y);
  }

  endShape();

  t+=0.01;
  if (record) {
    saveFrame("video/Super-####.png");
  }
}

float r(float theta, float a, float b, float m, float n1, float n2, float n3) {
  return pow(pow(abs(cos(m*theta/4.0)/a), n2) + 
    pow(abs(sin(m*theta/4.0)/b), n3)
    , -1.0/n1);
}

//void keyPressed() {
//  if (keyCode == ESC) {
//  } else if (key == ' ') {
//    background(0);
//    record = !record;
//  } else if (key == 'c') {
//    background(0);
//  } else if (key == 'n') {
//    background(0);
//    aMult = random(1, 5);
//    aAdd = random(0, 3);
//    aFrequency = random(.1, 2);
//    bMult = random(1, 5);
//    bAdd = random(0, 3);
//    bFrequency = random(.1, 2);

//    n1Mult = random(1, 3);
//    n1Add = random(2, 4);
//    n2Mult = random(.5, 3);
//    n2Add = random(1.5, 2);
//    n2Frequency = random(.1, 2);
//    n3Mult = random(.5, 3);
//    n3Add = random(1.5, 2);
//    n3Frequency = random(.1, 2);
//    spikeNumber = int(random(1, 15))*2;

//    red = random(0, 255);
//    green = random(0, 255);
//    blue = random(0, 255);

//    record = false;
//  } else if (!record) {
//    saveFrame("random/Super-####.png");
//  }
//}

void mouseReleased() {
  t = 0;
   background(0);
    aMult = random(1, 5);
    aAdd = random(0, 3);
    aFrequency = random(.1, 2);
    bMult = random(1, 5);
    bAdd = random(0, 3);
    bFrequency = random(.1, 2);

    n1Mult = random(1, 3);
    n1Add = random(2, 4);
    n2Mult = random(.5, 3);
    n2Add = random(1.5, 2);
    n2Frequency = random(.1, 2);
    n3Mult = random(.5, 3);
    n3Add = random(1.5, 2);
    n3Frequency = random(.1, 2);
    spikeNumber = int(random(1, 15))*2;

    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
}
