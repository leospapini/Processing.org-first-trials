int x = 0;
int speed = 2;

void setup() {
 size(480,270);
 frameRate(120);
}

void draw() {
 background(255);
 x = x + speed; //adiciona a velocidade de speed para o x
 if ((x > width) || (x < 0)) {
  speed = speed * -1; //se o objeto atingir as duas extremidades, multiplicando
  //por -1 faz ele dar a volta em ambos os casos
 }
 
 stroke(0);
 fill(175, 200, 150);
 ellipse(x, 100, 32, 32);
}
