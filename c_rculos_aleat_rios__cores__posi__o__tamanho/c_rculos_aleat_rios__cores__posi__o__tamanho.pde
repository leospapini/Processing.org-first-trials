float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup(){
 size(1000,1000);
 background(255);
}

void draw(){
 //todas as vezes q o loop reiniciar, valores aleatórios
 //numéricos serão escolhidos para cada ellipse.
 r = random(255);
 g = random(255);
 b = random(255);
 a = random(255);
 diam = random(20);
 x = random(width);
 y = random(height);
 
 //se cada loop reiniciar diferente, várias elipses serão desenhadas em 
 //vários locais diferentes com várias cores diferentes
 noStroke(); //sem linha
 fill(r, g, b, a);
 ellipse(x, y, diam, diam);
}
