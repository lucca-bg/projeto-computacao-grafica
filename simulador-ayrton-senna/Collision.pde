void checkCollisions() {

  for (EnemyCar enemy : enemies) {

    boolean collisionX =
      player.x + 25 > enemy.x - 22 &&
      player.x - 25 < enemy.x + 22;

    boolean collisionY =
      player.y + 45 > enemy.y - 40 &&
      player.y - 45 < enemy.y + 40;

    if (collisionX && collisionY) {
      
      if (!enemy.collided) {
      
        enemy.collided = true;
      
        score -= 1;
        life -= 5;
      
        player.speed *= 0.7;
      }
    }
  }
}
