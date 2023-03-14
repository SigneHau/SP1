class Boks {
  //declare variables
  int xcorner=0;
  int ycorner=0;
  int s = 50; //the size on the bokses
  color c;
  boolean on=true;  // if the bokses is on the screen;
  
  // make contrukter for the boks
  Boks(int tmpx, int tmpy, int tmps, color tmpc) {
    xcorner=tmpx;
    ycorner=tmpy;
    s=tmps;
    c=tmpc;
  }
  // Name one the funktion/methode and drawing the Ball
  void drawBoks(Ball theBall) {

   // It it only drawing the boks if on is true
    if (on) {
      strokeWeight(1);
      fill(c);
      rect(xcorner, ycorner, s, s);
    }
      // Tjek if bokses hit my ball and when it is hit the boks it well trunes to false and will not be drawn again
    if ((theBall.x1>xcorner) && (theBall.x1<xcorner+s) && (theBall.y1> ycorner) && (theBall.y1<ycorner+s)) { 
      on=false;
    }
    
  }
}
