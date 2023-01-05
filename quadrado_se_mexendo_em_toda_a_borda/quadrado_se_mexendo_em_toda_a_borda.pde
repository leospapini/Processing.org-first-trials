int x = 0;
int y = 0;
int speed = 5;
int state = 0; //variável para manter o controle da localização do quadrado

void setup(){
 size(480,270);
 frameRate(120);
}

void draw(){
 background(255);
 
 stroke(0);
 fill(175);
 rect(x, y, 9, 9);
 
 //se o state é 0, mova para a direita.
 if (state == 0) {
  x = x + speed;
  //se, enquanto o state for 0, ele chegar no limite da janela, mude para 1
  //repita a mesma lógica para todas as direções
  if (x > width-10) {
   x = width-10;
   state = 1;
  }
 }else if (state == 1) {
  y = y + speed;
  if (y > height-10) {
   y = height-10;
   state = 2;
  }
 }else if (state == 2) {
  x = x - speed;
  if (x < 0) {
   x = 0;
   state = 3;
  }
 }else if (state == 3) {
  y = y - speed;
  if (y < 0) {
   y = 0;
   state = 0;
  }
 }
}
