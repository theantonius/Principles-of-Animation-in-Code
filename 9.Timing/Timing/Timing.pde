// Timing
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
  ellipse(x,y-(height/4),width/16,width/16);
  
  x = int(map(sin(add),-1,1,-width,width*2));
  add+=0.01;
  ellipse(x,y+(height/4),width/16,width/16);
}