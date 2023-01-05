int y = 80; //posição y de todas as linhas
int x = 0;  //posição x 
int spacing = 10;  //a distância entre elas
int len = 20;  //comprimento
int endLegs = 480;  //aonde elas tem q parar

void setup(){
 size(480,270); 
}

void draw(){
 background(0);
 stroke(255);
 x = 0;
 
 //a variável spacing, q determina a distância entre elas
 //é atribuida com o valor igual a mouseX dividio por 2
 //constrain = restringir
 spacing = constrain(mouseX / 2, 4, width);
 
 //condição de saída, quando x for maior q endLegs
 while (x <= endLegs){
  line(x, y, x, y + len);
  //incrementação de x
  //x está sempre sendo acrescentado o valor de spacing
  //quais são os limites de possibilidade para o spacing?
  x = x + spacing;
 
 }
 
}
