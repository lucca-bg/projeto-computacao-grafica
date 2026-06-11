class Road {

  float offset = 0;

  float roadWidth = 400;

  void update() {

    offset += player.speed * 1.5;

    if (offset > 80) {
      offset = 0;
    }
  }

void display() {

  float roadX = width/2 - roadWidth/2;
  float horizonY = height * 0.0001;

  // Estrada
  fill(60);

  rect(
    1.65 * roadX,
    horizonY * 2,
    roadWidth,
    height * 2
  );

  // Bordas brancas
  fill(255, 255, 255);

  rect(roadX, horizonY, 10, height * 2);
  rect(roadX + roadWidth - 10, horizonY, 10, height * 2);

  // Faixa central
  stroke(255);
  strokeWeight(4);

  for (int i = 0; i < height; i += 80) {

    float y = horizonY + i + offset;

    if (y > -height && y < height) {

      line(
        width/2,
        y,
        width/2,
        y + 40
      );
    }
  }

  noStroke();
}
}
