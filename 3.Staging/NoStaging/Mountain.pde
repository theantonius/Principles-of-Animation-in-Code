class Mountain {
  int x, h;
  
  Mountain(int _x, int _h){
    x = _x;
    h = _h-(height/4);
  }
  
  void display(float _x){    
    rect(x+_x, h, 1, height);
  }
}