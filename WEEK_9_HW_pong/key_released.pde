void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2Up = true;
      imageMode (CENTER);
      image(wreath,width/2,height/2);
    }
    if (keyCode == DOWN) {
      p2Down = true;
      image(wreath,width/2,height/2);
    }
  } else {
    if (key == 'w') {
      p1Up = true;
      fill(255);
      image(wreath,width/2,height/2);
    }
    if (key == 's') {
      p1Down = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2Up = false;
    }
    if (keyCode == DOWN) {
      p2Down = false;
    }
  } else {
    if (key == 'w') {
      p1Up = false;
    }
    if (key == 's') {
      p1Down = false;
    }
  }
}