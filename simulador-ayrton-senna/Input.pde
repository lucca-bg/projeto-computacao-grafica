boolean leftPressed;
boolean rightPressed;
boolean upPressed;
boolean downPressed;

void keyPressed() {

  if (keyCode == LEFT || key == 'a' || key == 'A') leftPressed = true;
  if (keyCode == RIGHT || key == 'd' || key == 'D') rightPressed = true;
  if (keyCode == UP || key == 'w' || key == 'W') upPressed = true;
  if (keyCode == DOWN || key == 's' || key == 'S') downPressed = true;
}

void keyReleased() {

  if (keyCode == LEFT || key == 'a' || key == 'A') leftPressed = false;
  if (keyCode == RIGHT || key == 'd' || key == 'D') rightPressed = false;
  if (keyCode == UP || key == 'w' || key == 'W') upPressed = false;
  if (keyCode == DOWN || key == 's' || key == 'S') downPressed = false;
}
