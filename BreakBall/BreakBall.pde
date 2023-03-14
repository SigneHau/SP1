//arraylist which draw the bokses
Boks[][] bokses= new Boks[20][6];

Ball theball;
Bat playLine;
LifeCounter thecounter;

void setup() {
  size(1000, 800);
  // variable to the start position of the bokses 
  int xStart=0;
  int yStart=100;
  int s = 50;

  // Instantiate  (making my bat - the line) and the ball and the Lifecounter
  playLine = new Bat(500, 700, 0);
  theball = new Ball(50, 500.0, 500.0, 4.0, 5.0); //value for the ball to start and for the speed
  thecounter= new LifeCounter(3, "msg");

  // this is a dobble loop that initsiats the bokses
  for (int i = 0; i <20; i = i+1) {
    for (int t=0; t<6; t++) {
      bokses[i][t]= new Boks(xStart+i*s, yStart+t*s, s, color(random(0, 255), random(10, 25), random(50, 200)));
    }
  }
}

void draw() {
  // the counter counts you life and starts over intil you down to 0
  if (thecounter.counter>0) {
    background(200);

    // drawing the array off bokses
    for (int i = 0; i < 20; i = i+1) {
      for (int t=0; t<6; t++) {
        bokses[i][t].drawBoks(theball);
      }
    }
    //calling the metodos
    playLine.drawBat();
    theball.drawBall(playLine);
    thecounter.drawLifeCounter();

    //The ball is reset
    if (theball.on==false) {
      thecounter.counter--;
      theball.reset(50, 500, 500, 4, 5);
    }
  } else {  //when you did - the text says game over on the sreen
    textSize(128);
    text("Game over", 200, 500);
  }
  //If the bokses is gone you will win :-)
  int i = 0;
  int t = 0;
  boolean boksesGone = true;
  
  while (i<20) {
    t=0; // reset before it go into the loop
      
      while(t<6) {
      if (bokses[i][t].on == true) { // it runs through all bokses it tjeks if is still there. 
        boksesGone= false;
      }
      t++;
    }
    i++;
  }


  if (boksesGone==true) {  // when all the bokses is gone, it is true and it vil say you win.
    textSize(128);
    text("You win", 270, 400);
  }
}
