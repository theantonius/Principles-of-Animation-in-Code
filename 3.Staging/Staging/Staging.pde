// Antonius Wiriadjaja http://antoni.us
// Made following Dan Shiffman's in-class demo, for Nature of Code
// Simple Panning

String title = "Snowy Mountain Drive";

// play button
Play play;

float x=0;

float xoff = random(0.0,10.0);
float xincrement = 0.0055;

float xoff2 = random(10.0,20.0);
float xincrement2 = 0.0045;

//ArrayList <Mountain> mountains;

Mountain[] mountains;
Mountain[] mountains2;

void setup() {
  size(640, 480);
  smooth();

  // play button
  play = new Play(title);

  mountains = new Mountain[width];
  mountains2 = new Mountain[width];

  for (int i = 0; i < width; i++) {
    float n = noise(xoff)*height;
    mountains[i]=new Mountain(i, int(n));
  }
  
    for (int i = 0; i < width; i++) {
    float n = noise(xoff2)*height;
    mountains2[i]=new Mountain(i, int(n));
  }
}

void app() {
  background(0);
  translate(-x, 0);
  fill(250,200,150);
  ellipse(x+(width/4), height/3, 100, 100);
  x+=1;

  fill(200);

  for (int i = 0; i < width; i++) {
    mountains[i].display(x);
    //      rect(i, mountains[i], 1, height);
  }
  for (int i=mountains.length-1;i>0;i--) {
    mountains[i].h=mountains[i-1].h;
  }

  fill(225);  
    for (int i = 0; i < width; i++) {
    mountains2[i].display(x);
    //      rect(i, mountains[i], 1, height);
  }
  for (int i=mountains.length-1;i>0;i--) {
    mountains2[i].h=mountains2[i-1].h;
  }
  
  xoff += xincrement;
  float n = noise(xoff)*height;

  xoff2 += xincrement2;
  float n2 = noise(xoff2)*height;

  mountains[0].h=int(n);
  mountains2[0].h=int(n2);
  
  fill(150);
  rect(x+(width-(width/4)), height-(height/4), 100, 50);

}

void draw() {
  if (!play.go) {
    play.display();
  } 
  else {
    app();
  }
}