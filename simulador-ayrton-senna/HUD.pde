class HUD {

  void display() {

    drawPanel();
    drawTexts();
    drawLifeBar();
  }

  void drawPanel() {

    fill(0, 150);
    rect(90, 10, 320, 320, 15);
  }

  void drawTexts() {

    fill(255);

    textAlign(LEFT);

    textSize(24);

    text(
      "Velocidade: " + int(player.speed * 20) + " km/h",
      25,
      45
    );

    text(
      "Pontos: " + score,
      25,
      80
    );

    text(
      "Vida",
      25,
      145
    );
  }

  void drawLifeBar() {

    // Fundo
    fill(60);

    rect(
      100,
      100,
      200,
      25,
      10
    );

    // Vida atual
    fill(0, 255, 0);

    rect(
      100,
      100,
      life * 2,
      25,
      10
    );
  }
}
