// no follow through

float add;

void setup(){
  size(320,240);
  add = 0.1;
}

void draw(){
  
  background(255);
  
  pushMatrix();
  translate(width/2,height-(height/4));
  
  rotate(sin(add));
  println(sin(add));
  fill(0);
  line(0,0,0,-(height/2));
  
  popMatrix();
  
  add+=0.1;
}