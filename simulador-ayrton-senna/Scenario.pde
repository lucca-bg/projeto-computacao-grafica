class Scenario {

  ArrayList<Tree> trees;

  float horizonY;

  Scenario() {

    horizonY = -height;

    trees = new ArrayList<Tree>();

    for (int i = 0; i < 40; i++) {

      // lado esquerdo
      trees.add(
        new Tree(
        random(40, width * 0.22),
        random(horizonY, height)
        )
        );

      // lado direito
      trees.add(
        new Tree(
        random(width * 0.78, width - 40),
        random(horizonY, height)
        )
        );
    }
  }

  void update() {

    for (Tree tree : trees) {

      tree.y += player.speed * 1.5;

      if (tree.y > height + 50) {

        tree.y = horizonY;

        if (tree.x < width / 2) {
          tree.x = random(40, width * 0.22);
        } else {
          tree.x = random(width * 0.78, width - 40);
        }
      }
    }
  }

  void display() {

    drawSky();
    drawGrass();

    for (Tree tree : trees) {
      tree.display();
    }
  }
  //Talvez não vou implementar isso....
  void drawSky() {

    noStroke();

    fill(120, 200, 255);

    rect(
      0,
      0,
      width,
      horizonY
      );
  }

  void drawGrass() {

    fill(40, 170, 40);

    rect(
      0,
      0,
      width * 5,
      height * 5
      );
  }
}
