class Tree {

  float x;
  float y;

  float size;

  Tree(float x, float y) {

    this.x = x;
    this.y = y;

    size = random(0.8, 1.4);
  }

  void display() {

    pushMatrix();

    translate(x, y);
    scale(size);

    noStroke();

    // Tronco
    fill(120, 80, 30);
    rect(-5, 0, 10, 30);

    // Copa
    fill(20, 120, 20);
    ellipse(0, -10, 40, 40);

    popMatrix();
  }
}