float x = 100;
float y = 100;
float w = 60;
float h = 60;
float eyeSize = 16;

float xspeed = 3;
float yspeed = 1;

void setup(){
 size(480,270);
 frameRate(120);
}

void draw(){
 x = x + xspeed;
 y = y + yspeed;
 
 //revertendo a velocidade do zoog sempre q ele chega nas extremidades
 //fazendo ele ir para a outra direção
 if ((x > width) || ( x < 0)){
  xspeed *= -1; //xspeed = xspeed * -1;
 }
 //mesma coisa só q para o eixo y
 if ((y > height) || (y < 0)){
  yspeed *= -1; //yspeed = yspeed * -1; 
 }
 
 background(255);
 ellipseMode(CENTER);
 rectMode(CENTER);
 
 //corpo
 stroke(0);
 fill(150);
 rect(x, y, w/6, h*2);
 
 //cabeça
 fill(255);
 ellipse(x, y-h/2, w, h);
 
 //olhos
 fill(0);
 ellipse(x-w/3+1, y-h/2, eyeSize, eyeSize*2);
 ellipse(x+w/3-1, y-h/2, eyeSize, eyeSize*2);
 
 //pernas
 stroke(0);
 line(x-w/12, y+h, x-w/4, y+h+10);
 line(x+w/12, y+h, x+w/4, y+h+10);
}
