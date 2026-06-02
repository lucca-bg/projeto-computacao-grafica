PlayerCar player;
Road road;
Scenario scenario;
HUD hud;

int score = 0;
float life = 100;

ArrayList<EnemyCar> enemies;

void setup() {
  size(1000, 700);

  player = new PlayerCar();
  road = new Road();
  scenario = new Scenario();
  hud = new HUD();

  enemies = new ArrayList<EnemyCar>();

  for (int i = 0; i < 5; i++) {
    enemies.add(new EnemyCar());
  }
}

void draw() {
  background(135, 206, 235);

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
}
