

class LifeCounter {
  //varible
  int counter;
  String msg;

    // makeing contrukter
  LifeCounter(int tmpcounter, String tmpmsg) {
    counter = tmpcounter;
    msg = tmpmsg;
  }
  
  // methode for drawing the LifeCounter
  void drawLifeCounter() {
    if (counter>0) {
      textSize(50);
      fill(0);
      text("Life " + counter, 30, 80); // where i draw the text one the screen
      
    }
  }
}
