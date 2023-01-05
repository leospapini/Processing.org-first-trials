Car myCar1;
Car myCar2;

void setup(){
 size(480,270);
 frameRate(120);
 //argumentos vão dentro de parenteses quando o objeto é construído
 myCar1 = new Car(color(51), 0, 100, 2);
 myCar2 = new Car(color(151), 0, 200, 1);
}

void draw(){
 background(255);
 myCar1.move();
 myCar1.display();
 myCar2.move();
 myCar2.display();
}

//mesmo q tenha múltiplos objetos(myCar1 e myCar2), somente uma classe é necessária
//não importa quantas cookies vc faça, somente uma cookie cutter será necessária.
class Car {
 color c;
 float xpos;
 float ypos;
 float xspeed;
 
 //o construtor define os parâmetros(q estão definidos no setup)
 Car(color tempC, float tempXpos, float tempYpos, float tempXspeed){
  c = tempC;
  xpos = tempXpos;
  ypos = tempYpos;
  xspeed = tempXspeed;
 }
 
 void display(){
  stroke(0);
  fill(c);
  rectMode(CENTER);
  rect(xpos, ypos, 20, 10);
 }
 
 void move(){
  xpos = xpos + xspeed;
  if (xpos > width){
   xpos = 0; 
  }
 }
}
