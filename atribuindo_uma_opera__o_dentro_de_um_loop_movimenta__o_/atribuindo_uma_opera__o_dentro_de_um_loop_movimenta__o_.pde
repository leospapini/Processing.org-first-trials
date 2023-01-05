int circleX = 0;
int circleY = 350;

void setup(){
 size(1000, 1000); 
 frameRate(120);
}

void draw(){
 background(255);
 stroke(0);
 fill(175);
 //especificando a localização e formato da ellipse
 ellipse(circleX, circleY, 50, 50);
 
 //atribuindo uma operação q incremente 1 no valor de circleX em cada ciclo
 circleX = circleX + 1;
}
