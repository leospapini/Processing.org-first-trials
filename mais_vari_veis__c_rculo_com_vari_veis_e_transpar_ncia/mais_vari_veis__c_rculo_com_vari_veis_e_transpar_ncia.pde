float r = 100;
float g = 150;
float b = 200;
float a = 200;

float diam = 20;
float x = 100;
float y = 100;

void setup(){
 size(480,270);
 background(25);
}

void draw(){
 stroke(0);
 //lembre-se q o 4° argumento de uma cor é a transparência
 fill(r, g, b, a);
 ellipse(x, y, diam, diam);
}
