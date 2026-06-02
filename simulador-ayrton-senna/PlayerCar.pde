class PlayerCar {

  float x;
  float y;

  float speed;
  float angle;

  PlayerCar() {
    x = width / 2;
    y = height - 120;

    speed = 0;
    angle = 0;
  }

  void update() {
    
    x = constrain(x, width/2 - 180, width/2 + 180);
    
    if (leftPressed) {
      x -= 6;
      angle = radians(-10);
    }

    if (rightPressed) {
      x += 6;
      angle = radians(10);
    }

    if (!leftPressed && !rightPressed) {
      angle = 0;
    }

    if (upPressed) {
      speed += 0.05;
    }

    if (downPressed) {
      speed -= 0.1;
    }
    
    if (!upPressed && !downPressed) {

      speed *= 0.98;
    }
    
    if (speed < 0.05) {
      speed = 0;
    }
    
    float kmh = speed * 20;
    
    if (kmh >= 200) {
    
      life += 0.5;
    }    
    speed = constrain(speed, 0, 10);
    life = constrain(life, 0, 100);
  }

  void display() {

    pushMatrix();

    translate(x, y);
    rotate(angle);

    fill(255, 0, 0);
    rectMode(CENTER);
    rect(0, 0, 50, 90, 10);

    popMatrix();
  }
}
