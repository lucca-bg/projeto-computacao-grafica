PlayerCar player;
Road road;
Scenario scenario;
HUD hud;

int score = 0;
float life = 100;

final int MENU = 0;
final int PLAYING = 1;
final int GAME_OVER = 2;

int gameState = MENU;
int difficulty = 5;

ArrayList<EnemyCar> enemies;

void setup() {
  size(1000, 700);

  player = new PlayerCar();
  road = new Road();
  scenario = new Scenario();
  hud = new HUD();

  enemies = new ArrayList<EnemyCar>();

}

void draw() {

  background(135, 206, 235);

  switch(gameState) {

  case MENU:
    drawMenu();
    break;

  case PLAYING:
    runGame();
    break;

  case GAME_OVER:
    drawGameOver();
    break;
  }
}
void runGame() {

  scenario.update();
  scenario.display();

  road.update();
  road.display();

  player.update();
  player.display();

  for (EnemyCar enemy : enemies) {
    enemy.update();
    enemy.display();
  }

  checkCollisions();

  hud.display();

  // GAME OVER
  if (life <= 0) {

    gameState = GAME_OVER;
  }
  
  checkCollisions();

  hud.display();
}

void drawMenu() {

  background(20, 20, 30);

  fill(255);

  textAlign(CENTER);

  textSize(64);
  text("TOP GEAR RETRO", width/2, 180);

  textSize(30);
  text("Escolha a dificuldade", width/2, 300);

  textSize(24);

  text("1 - Fácil", width/2, 380);
  text("2 - Médio", width/2, 430);
  text("3 - Difícil", width/2, 480);

  textSize(20);

  text("Setas/WASD para dirigir", width/2, 580);

  fill(255, 255, 0);

  String diffName = "";

  switch(difficulty) {

  case 5:
    diffName = "FÁCIL";
    break;

  case 10:
    diffName = "MÉDIO";
    break;

  case 15:
    diffName = "DIFÍCIL";
    break;
  }

  text("Dificuldade atual: " + diffName, width/2, 540);

  fill(0, 255, 0);

  text("ENTER para iniciar", width/2, 640);
}

void drawGameOver() {

  background(10);

  fill(255, 0, 0);

  textAlign(CENTER);

  textSize(70);
  text("GAME OVER", width/2, 250);

  fill(255);

  textSize(32);
  text("Pontuação: " + score, width/2, 350);

  textSize(24);
  text("Pressione ENTER para reiniciar", width/2, 450);
}

void restartGame() {

  score = 0;
  life = 100;

  player = new PlayerCar();

  enemies.clear();

  createEnemies();

  gameState = PLAYING;
}

void createEnemies() {

  enemies.clear();

  for (int i = 0; i < difficulty; i++) {

    enemies.add(new EnemyCar());
  }
}
