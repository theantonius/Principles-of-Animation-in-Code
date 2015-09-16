// Solid Drawing
int x, y;
float add;

void setup(){
  size(620,240);
  x = width/2;
  y = height/2;
  add = 0.1;
}

void draw(){
  background(0);
  x = int(map(sin(add),-1,1,0,width));
  add+=0.01;
  
  pushMatrix();
  translate(x,y);
  
  rotate(sin(add));
  fill(255);
  ellipse(0,0,width/4,width/4);    
//    println(x);
fill(0);
ellipse(0,-(height/4),width/16,width/16);
  popMatrix();
    
}