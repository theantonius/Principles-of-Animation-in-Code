// no arcs
int x, y;
int add;

void setup(){
  size(620,240);
  x = width/2;
  y = height/2;
  add = 2;
}

void draw(){
  background(0);
  
  ellipse(x,y,width/4,width/4);
  
  if(x >width || x <0){
    add=add*-1;
  }
    x+=add;
    
    println(x);

}