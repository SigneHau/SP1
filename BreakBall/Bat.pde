
class Bat {
  int x1;
  int y1;
  int x2;
    
    // make contrukter
  Bat(int tempx1, int tempy1, int tempx2) {
    x1=tempx1;
    y1=tempy1;
    x2=tempx2;  
  }
  
  void drawBat() {
    //  line location with the mouse
    
    stroke(0);
    fill(0);
    strokeWeight(20);
    x1=mouseX-80;
    x2=mouseX+80;
    line(x1,y1,x2,y1);
 
  }  
}
