float r = 150;
float g = 0;
float b = 0;

void setup(){
 size(480,270); 
}

void draw(){
 background(r, g, b);
 stroke(255);
 line(width/2, 0, width/2, height);
 
 //se o mouse estiver no lado direito da tela, é o equivalente
 //a "if mouseX is greater than width divided by 2."
 if(mouseX > width/2){
  r = r + 1; 
 }else {
  r = r - 1; 
 }
 
 if (r > 255){
  r = 255; 
 }else if (r < 0) {
  r = 0; 
 }
}
