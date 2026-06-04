class EnemyCar {

  float x;
  float y;
  float randValue;
  float speed;
  boolean collided = false;
  boolean counted = false;
  float i = 0;
  
  EnemyCar() {
    reset();
  }

  void reset() {
    x = random(width * 0.35, width * 0.65);
    y = -2500;
    speed = random(5, 10);
    collided = false;
    counted = false;    
    //Valor aleatório que vai definir a velocidade horizontal de um carro acidentado
    randValue = random(-width/100, width/100);
  }

  void update() {
    y += speed + player.speed;

    if ((y > height + 250) || (y < -height - 3000)) {
      reset();
    }
    //Se houver colisão independente da altura (y)
    if(collided){
        //Carro inimigo ganha uma velocidade aleatória, podendo ir para frente ou para trás
        speed = random(-10,10);
        //Ganha velocidade horizontal, decidida no reset do objeto
        x += randValue;
    }
    if (y > player.y && !counted) {
    
      counted = true;
    
      if (!collided) {
    
        if (upPressed) {
          score += 3;
        } else {
          score += 1;
        }
      }
}    
  }

  void display() {

    pushMatrix();

    translate(x, y);
    
    if(!collided){
      fill(0, 0, 255);
    }else{
      //Carro pega fogo :)
      fill(random(0, 255), 0, 0);
      //Se bateu, roda
      rotate(i++);
    }
    
    rectMode(CENTER);
    rect(0, 0, 45, 80, 10);

    popMatrix();
  }
}
