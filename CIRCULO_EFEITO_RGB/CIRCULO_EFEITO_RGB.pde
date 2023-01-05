int diam = 1250;
int r = 0;
int g = 0;
int b = 0;

void setup (){
 size(1000,1000);
 background(255);
 frameRate(15);
}

void draw() {
 ellipseMode(CENTER);
 stroke(r, g, b);
 ellipse(500, 500, diam, diam);
 diam -= 50;
 r += 5;
 g += 5;
 b += 20;
 
 if (diam < 0){
  diam = 1250;
  r = 0;
  g = 0;
  b = 0;
 }
}
