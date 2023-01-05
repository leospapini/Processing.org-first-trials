float r = 0;
float g = 0;
float b = 0;

void setup(){
 size(480,270); 
}

void draw(){
 //cor no background e desenhar linhas para dividir os quadrantes
 background(r, g, b);
 stroke(255);
 line(width/2, 0, width/2, height);
 line(0, height/2, width, height/2);
 
 //se o mouse estiver no lado direito da janela, aumente o vermelho
 //senão, ou seja, se estiver do lado esquerdo, diminua o vermelho.
 if (mouseX > width/2){
  r = r + 1; 
 }else {
  r = r - 1; 
 }
 
 //se o mouse estiver abaixo da metade da linha Y, aumente o azul
 //senão, diminua o azul
 if (mouseY > height/2){
  b = b + 1; 
 }else {
  b = b - 1; 
 }
 
 if (mousePressed){
  g = g + 1; 
 }else {
   g = g - 1;
 }
 
 //constrain = restringe os valores entre 0 e 255
 r = constrain(r,0,255);
 g = constrain(g,0,255);
 b = constrain(b,0,255);
 
}
