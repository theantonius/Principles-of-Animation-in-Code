// follow through -- work in progress

float add;

void setup(){
  size(320,240);
  add = 0.1;
}

void draw(){
  
  background(255);
  
  pushMatrix();
  translate(width/2,height-(height/4));
  
  rotate(radians(225));//-sin(add));
  println(sin(add));
  fill(0);
//  line(0,0,0,-(height/2));
ellipseMode(RADIUS);
arc(0, 0, (height/2), (height/2), 0, HALF_PI+sin(add));
  
  popMatrix();
  
  add+=0.1;
}