// Play class
class Play {
  String t;
  PFont myFont = createFont("FFScala", 32);

  boolean clicked = false;
  boolean go = false;

  Play(String _t) {
    textFont(myFont);
    t = _t;
  }

  void display() {
    background(0);

    noStroke();

    fill(255);  
    text(t, width/20, height/10);
    //ellipse

    pushMatrix();
    translate(width/2, height/2);
    fill(200);
    ellipseMode(CENTER);
    ellipse(0, 0, width/2.5, width/2.5);

    fill(180);
    ellipseMode(CENTER);
    ellipse(0, 0, width/2.8, width/2.8);

    popMatrix();

    //triangle
    pushMatrix();
    translate(width/2+(width/28), height/2);
    if (intersects()) {
      fill(100);
    } 
    else {
      fill(150);
    }
    beginShape(TRIANGLES);
    vertex(-width/7, -height/7);
    vertex(-width/7, height/7);
    vertex(width/8, 0);
    endShape();
    popMatrix();
    if (mousePressed && intersects()) {
      go=true;
      background(0);
    }
  }

  boolean intersects() {
    float distance = dist(mouseX, mouseY, width/2, height/2);
    if (distance<((width/2.5)/2)) {
      return true;
    } 
    else {
      return false;
    }
  }
}