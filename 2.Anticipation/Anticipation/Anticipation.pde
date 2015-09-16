// anticipation

void setup(){
  size(320,240);
}

void draw(){
  ellipse(width/2,height/2,width/4,width/4);
  if(mouseX <= (width/2)+(width/8) && mouseX >= (width/2)-(width/8)){
    if(mouseY <= (height/2)+(width/8) && mouseY >= (height/2)-(width/8)){
      fill(0);
    }} else{
      fill(255);
    }
}