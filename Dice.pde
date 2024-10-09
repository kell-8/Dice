void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(83, 129, 77);
  int totaldots = 0;
  for (int y = 0; y < 400; y = y + 50) {
    for (int x = 5; x < 500; x = x + 50) {
      Die yay = new Die(x, y);
      yay.show();
      totaldots = totaldots + yay.dots;
    }
  }
  fill(255);
  rect(40,417,360,50);
  fill(0);
  textSize(20);
  text("The total amount of dots is: " + totaldots, 50, 450);
}

void mousePressed() {
  redraw();
}

class Die { //models one single dice cube
  int myX, myY, dots;
  //variable declarations here

  Die(int x, int y) { //constructor
    myX = x;
    myY = y;
    roll();
    //variable initializations here
  }

  void roll() {
    dots = (int)(Math.random() * 6) + 1;
  }

  void show() {
    fill(255 - (int)(Math.random()*30),255 - (int)(Math.random()*30),255 - (int)(Math.random()*30));
    rect(myX, myY, 40, 40);
    if (dots == 1) {
      fill(0);
      ellipse(myX+20, myY+20, 5, 5);
    } else if (dots == 2) {
      fill(0);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
    } else if (dots == 3) {
      fill(0);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
    } else if (dots == 4) {
      fill(0);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+30, myY+30, 5, 5);
    } else if (dots == 5) {
      fill(0);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+30, myY+30, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
    } else {
      fill(0);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+30, myY+30, 5, 5);
      ellipse(myX+10, myY+20,5,5);
      ellipse(myX+30, myY+20,5,5);      
    }
  }
}
