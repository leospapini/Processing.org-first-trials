float x = 240;
float y = 180;
float w = 60;
float h = 60;
float eyeSize = 16;

void setup(){
 size(480,270); 
}

void draw(){
 background(255); 
 
 //cor com base na distância do mouse
 float d = dist(x, y, mouseX, mouseY);
 color c = color(d); //definindo color c = color(d);
 
 //posição do mouseX determina velocidade para a moveZoog function
 float factor = constrain(mouseX, 0, 5); //constrain(o que será restrito, valor mínimo, valor máximo);
 
 //o código para mudar as variáveis associadas
 //com o aparecimento e movimentação do zoog
 //estão fora do draw() dentro de funções chamadas aqui dentro
 //as funções recebem argumentos, como por exemplo:
 // "jiggle zoog by the following factor)
 //e "draw zoog with the following eye color"
 jiggleZoog(factor);
 drawZoog(c);
}

void jiggleZoog(float speed){
 //muda o x e y randomicamente
 x = x + random(-1, 1)*speed;
 y = y + random(-1, 1)*speed;
 //restringe zoog a janela
 x = constrain(x, 0, width);
 y = constrain(y, 0, height);
}

void drawZoog(color eyeColor) {
 ellipseMode(CENTER);
 rectMode(CENTER);
 
 //braços com um loop for
 for (float i = y - h/3; i < y + h/2; i += 10) {
  stroke(0);
  line(x - w/4, i, x + w/4, i);
 }
 //corpo
 stroke(0);
 fill(175);
 rect(x, y, w/6, h);
 //cabeça
 stroke(0);
 fill(255);
 ellipse(x, y - h, w, h);
 //olhos
 fill(eyeColor);
 ellipse(x - w/3, y - h, eyeSize, eyeSize*2);
 ellipse(x + w/3, y - h, eyeSize, eyeSize*2);
 //pernas
 stroke(0);
 line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
 line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
}
