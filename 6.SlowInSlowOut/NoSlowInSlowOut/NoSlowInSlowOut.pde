// no slow in no slow out
// click on the screen to move the dot

int x, y;
void setup(){
  size(320,240);
  x = width/2;
  y = height/2;
}

void draw(){
  background(0);
  ellipse(x,y, width/4,width/4);
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
}