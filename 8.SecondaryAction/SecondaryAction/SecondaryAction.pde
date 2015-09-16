// secondary action - change colors at edge
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
  ellipse(x,y,width/4,width/4);    
    println(x);
    
  if(x>=width-(width/8) || x <= width/8){
    fill(random(255),random(255),random(255));
  }else{
    fill(255);
  }
}