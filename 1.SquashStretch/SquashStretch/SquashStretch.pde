// squash and stretch!

int x, y;
int cw, ch;
float add;

void setup(){
  size(240,640);
  x = width/2;
  y = height/2;
  add = 0.0;
  cw=50;
  ch=50;
}

void draw(){
  background(0);
  ellipse(x,y,cw,ch);
  
  y = int(map(sin(add),-1,1,height/2,height));
  add+=0.1;
  
  if(y>height-50){
    cw=100;
    ch=25;
  }
  else{
    cw=50;
    ch=50;
  }
}