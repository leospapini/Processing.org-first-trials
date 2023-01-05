void setup(){
  size(480,270);
}

void draw(){
 background(0);
 int x = 0;
 //x está disponível apenas a partir de agora no código, se uma variável é declarada
 //dentro de um draw(), ela estará disponível apenas dentro do draw(), e abaixo
 //do momento onde ela foi declarada, nunca acima.
 while(x < width) {
  stroke(255);
  line(x, 0, x, height);
  x += 15;
 }
}

void mousePressed(){
 //x não está disponível neste void, pois ele foi declarado no draw()
 println("the mouse was pressed!");
}
