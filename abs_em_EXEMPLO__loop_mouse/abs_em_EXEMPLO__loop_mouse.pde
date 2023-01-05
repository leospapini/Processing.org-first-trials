void setup(){
 size(480,270); 
}

void draw(){
 background(0);
 //começa com i = 0
 int i = 0;
 
 //enquanto i for menor q width da janela
 while (i < width) {
  noStroke();
  //abs = valor absoluto, ou seja, distance vai ser igual à o
  //valor absoluto (total) da diferença (-) entre mouseX e i
  float distance = abs(mouseX - i);
  
  //essa distancia é usada para preencher a cor do retângulo
  //em relação ao eixo x onde foi colocado a variável i
  fill(distance);
  rect(i, 0, 10, height);
  //aumenta 10 de i
  i += 10;
 }
}
