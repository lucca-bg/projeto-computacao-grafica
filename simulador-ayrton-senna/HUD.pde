class HUD {

  void display() {

    fill(255);
    textSize(28);

    text("Velocidade: " + int(player.speed * 20) + " km/h", 20, 40);
    text("Pontos: " + score, 20, 80);
    text("Vida: " + int(life), 20, 120);
  }
}
