PImage wreath;
int p1Score;
int p2Score;

boolean p1Up = false;
boolean p1Down = false;
boolean p2Up = false;
boolean p2Down = false;

Ball b;
Paddle p1;
Paddle p2;

void setup() {
  wreath = loadImage("wreath.png");
  size(1000, 700);
  b = new Ball();
  p1 = new Paddle(0);
  p2 = new Paddle(1);
}

void draw() {
  pushMatrix();
  background(0);
  b.checkCollisionWithPaddle(p1);
  b.checkCollisionWithPaddle(p2);
  p1.update();
  p1.display();
  p2.update();
  p2.display();

  popMatrix();
  b.update();
  b.display();
  b.updatet();
  b.displayt();

  textSize(36);
  fill(255);
  textAlign(CENTER, CENTER);

  text(p1Score, width/2 - 100, 50);
  text(p2Score, width/2 + 100, 50);
}