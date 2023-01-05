//mesma coisa do último exemplo
int y = 0;
int x = 0;
int spacing = 10;
int len = 20;

//uma variável para marcar aonde as linhas vão terminar
int xendLegs = 480;
int yendLegs = 270;
void setup(){
  size(480, 270);
  background(255);
  frameRate(10);
}

void draw(){
stroke(0);
while ((x <= xendLegs) && (y <= yendLegs)){
 line(x, y, x, y + len);
 x = x + spacing;
}

if(x > width){
 x = 0;
 y = y + 20;
  }
}
//while ((x <= xendLegs) && (y <= yendLegs)){
 //line(x, y, x, y + len);
 //x = x + spacing;
 // }
//}  
