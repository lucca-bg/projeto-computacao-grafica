boolean leftPressed;
boolean rightPressed;
boolean upPressed;
boolean downPressed;

void keyPressed() {
  
    if (gameState == MENU) {

    if (key == '1') {

      difficulty = 5;
    }

    if (key == '2') {

      difficulty = 10;

    }

    if (key == '3') {

      difficulty = 15;
    }

    if (keyCode == ENTER) {
      createEnemies();
      gameState = PLAYING;
    }
  }

  else if (gameState == GAME_OVER && keyCode == ENTER) {

    restartGame();
  }  

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
