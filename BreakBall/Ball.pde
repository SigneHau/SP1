class Ball {
  //variabler to the ball
  int s=50;
  float x1=500;
  float y1=500;
  float moveX= 1;
  float moveY= 2;
  boolean on = true;

  // makeing contrukter
  Ball(int temps, float tmpx1, float tmpy1, float tmpmoveX, float tmpmoveY) {
    s=temps;
    x1=tmpx1;
    y1=tmpy1;
    moveX=tmpmoveX;
    moveY=tmpmoveY;
  }
   // Reset - so the ball is starting again after you are dided 
  void reset(int temps, float tmpx1, float tmpy1, float tmpmoveX, float tmpmoveY){
  s=temps;
    x1=tmpx1;
    y1=tmpy1;
    moveX=tmpmoveX;
    moveY=tmpmoveY;
    on=true;
  }
  
  void drawBall(Bat theBat) {
    // drawing the ball
    ellipseMode(CENTER);
    strokeWeight(1);
    fill(color(115, 55, 215));
    ellipse(x1, y1, s, s);
    
    // moving the Ball
    x1=moveX+x1;
    if ((x1>width) || (x1<0)) {
      moveX= moveX*-1;
    }
    y1=moveY+y1;
    if (y1<0) {
      moveY= moveY*-1;
    }
    // when the ball is out in the buttem off the screen you dided
    if (y1>height){
    on= false;
    }
      // tjeks if the ball hits the Bat.
    if ((y1==theBat.y1) && (x1>theBat.x1) && (x1<theBat.x2)) {
      moveY= moveY*-1+ random(0,1);
    }
  }
}
