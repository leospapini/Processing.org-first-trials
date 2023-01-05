int w = 60;
int h = 60;
int eyeSize = 16;

void setup(){
 size(480,270); 
}

void draw(){
 background(255);
 ellipseMode(CENTER);
 rectMode(CENTER);
 
 int y = height/2;
 
 //várias versões de zoog
 //a variável x agora é incluída num loop for
 //para q seja incorporada como múltiplos zoogs
 for (int x = 80; x < width; x += 80){
  //corpo
  stroke(0);
  fill(175);
  rect(x, y, w/6, h*2);
  
  //cabeça
  fill(255);
  ellipse(x, y-h/2, w, h);
  
  //olhos
  fill(0);
  ellipse(x-w/3, y-h/2, eyeSize, eyeSize*2);
  ellipse(x+w/3, y-h/2, eyeSize, eyeSize*2);
  
  //pernas
  stroke(0);
  line(x-w/12, y+h, x-w/4, y+h+10);
  line(x+w/12, y+h, x+w/4, y+h+10);
 }
}
