Car myCar;

void setup() {
 size(480,270);
 //iniciando objeto Car no setup() chamando um construtor.
 frameRate(120);
 myCar = new Car();
}

void draw(){
 background(255);
 //opere o objeto car dentro do draw() chamando
 //object methods usando o ponto de syntax.
 myCar.move();
 myCar.display();
}

//define a classe fora do setup e do draw.
class Car {
 //variáveis da classe
 color c;
 float xpos;
 float ypos;
 float xspeed;
 
 //dentro da classe, um construtor
 Car(){
  c = color(175);
  xpos = width/2;
  ypos = height/2;
  xspeed = 1;
 }
 
 //a função de visualização dentro da classe
 void display(){
  //o carro é só um quadrado
  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(xpos, ypos, 20, 10);
 }
 
 //a função de movimentação dentro da classe
 void move(){
  xpos = xpos + xspeed;
  if (xpos > width) {
   xpos = 0; 
  }
 }
}
