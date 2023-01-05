float c1 = 0;
float c2 = 255;

float c1Change = 1;   //acréscimo
float c2Change = -1; //decréscimo

void setup() {
 size(480,270); 
}

void draw(){
 noStroke();
 
 //retângulo da esquerda
 fill(c1, 0, c2);
 rect(0, 0, 240, 270);
 
 //retângulo da direita
 fill(c2, 0, c1);
 rect(240, 0, 240, 270);
 
 //ajuste de cores
 c1 = c1 + c1Change;
 c2 = c2 + c2Change;
 //lembre-se || signifca OU
 if(c1 < 0 || c1 > 255) {
  c1Change *= -1; // mesma coisa q c1Change = c1Change * -1; 
 }
 if (c2 < 0 || c2 > 255) {
  c2Change *= -1; 
 }
 
}
