int y1 = 0;
int y2 = 1000;

void setup(){
  size(1000,1000);
  background(255);
  //diminuindo o framerate para conseguir enxergar melhor o efeito
  frameRate(30);
}

void draw(){
 stroke(0);
 //apenas uma linha será feita por vez
 line(0, y1, width, y1);
 line(0, y2, width, y2);
 y2 -= 10;
 //incremento
 y1 += 10;
 
 if (y1 > height+50 && y2 < height-50){
  y1 = 0;
  y2 = 1000;
  background(255);
 }
}
