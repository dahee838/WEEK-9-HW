
class Paddle {
  float x;
  float y;
  float w;
  float h;
  float xt;
  float yt;

  int playerNum;

  Paddle(int whichPlayer) {
    playerNum = whichPlayer;
    if (whichPlayer == 0) {
      x = 30;
      y = height/2;
      w = 20;
      h = 150;
    } else if (whichPlayer == 1) {
      y = height/2;
      w = 20;
      h = 150;
      x = width-30-w;
    }
  }

  void update() {

    if (playerNum == 0) {
      if (p1Up) {
        y-=10;
      } 
      if (p1Down) {
        y+=10;
      }
    }
    if (playerNum == 1) {
      if (p2Up) {
        y-=10;
      } 
      if (p2Down) {
        y+=10;
      }
    }
  }


  void display() {
    rectMode(CORNER);
    fill(255);
    rect(x, y, w, h);
  }

  void updatet() {

    if (playerNum == 0) {
      if (p1Up) {
        y-=10;
      } 
      if (p1Down) {
        y+=10;
      }
    }
    if (playerNum == 1) {
      if (p2Up) {
        y-=10;
      } 
      if (p2Down) {
        y+=10;
      }
    }
  }
  void displayt() {
    noStroke();
    rectMode(CENTER);
    fill(random(255), random(255), random(255));
    ellipse(-x, -y, 20, 20);
  }
}


class Ball {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity
  float xt;   //x position
  float yt;   //y position
  float dxt;  //x velocity
  float dyt;  //y velocity

  //think of the constructor function as the setup() for the object instance.
  //notice there is no "void" or return type. Technically it returns itself (a Ball)
  //this constructor takes no arguments - it sets all fields automatically.
  Ball() {
    x = width/2;
    y = height/2;
    dx = 10;  //set a random velocity
    dy = random(-3, 3);
  }

  // call this method to display the ball
  void display() {
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(x, y, 10, 10);
  }
  void displayt() {
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse(x, y, 60, 60);
  }

  // call this method to update the ball's position
  void update() {

    x += dx;

    if (x < 0 || x > width) {

      if (x < 0) {
        p2Score++;
      }

      if (x > width) {
        p1Score++;
      }

      x = width/2;
      y = height/2;
      dx = -dx;  //set a random velocity
      dy = random(-3, 3);
    } 

    if (y < 0 || y > height) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }

  void updatet() {

    xt += dxt;

    if (xt < 0 || x > width) 
    {

      if (xt < 0) {
        p2Score++;
      }

      if (xt > width) 
      {
        p1Score++;
      }

      xt = width /2 ;
      yt = height /2;
      dxt = -dxt;  //set a random velocity
      dyt = random(-10, 10);
    } 

    if (yt < 0 || yt > height) {
      dyt *= -1;
      yt += dy;
    } else { 
      yt += dyt;
    }
  }

  void checkCollisionWithPaddle(Paddle p) {
    if (x > p.x && x < p.x + p.w) {
      if (y > p.y && y < p.y + p.h) {
        dx = -dx;
        dy = random(-10, 10);
      }
    }
  }
}