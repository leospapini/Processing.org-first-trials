Zoog zoog;

void setup(){
size(480,270);
zoog = new Zoog(width/2, height/2, 60, 60, 16);

}

void draw(){
  background(255);
  float factor = constrain(mouseX, 0, 5);
  zoog.jiggle(factor);
  zoog.display();
}

class Zoog{
 //variáveis da classe zoog
 float x, y, w, h, eyeSize;
 
 //zoog construtor
 Zoog(float tempX, float tempY, float tempW, float tempH, float tempEyeSize){
 x = tempX;
 y = tempY;
 w = tempW;
 h = tempH;
 eyeSize = tempEyeSize;
}

//movimentação do zoog
void jiggle(float speed) {
    //mudando a localização randômicamente
    x = x + random(-1, 1)*speed;
    y = y + random(-1, 1)*speed;
    //restringe o zoog à janela
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }
//display zoog
void display(){
    ellipseMode(CENTER);
    rectMode(CENTER);
    //for loop para os braços
    for (float i = y - h/3; i < y + h/2; i += 10) {
     stroke(0);
     line(x-w/4, i, x + w/4, i);
    }
    
    //corpo
    stroke(0);
    fill(175);
    rect(x, y, w/6, h);
    //cabeça
    stroke(0);
    fill(255);
    ellipse(x, y-h, w, h);
    //olhos
    fill(0);
    ellipse(x - w/3, y-h, eyeSize, eyeSize*2);
    ellipse(x + w/3, y-h, eyeSize, eyeSize*2);
    //pernas
    stroke(0);
    line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
    line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
  }
}
