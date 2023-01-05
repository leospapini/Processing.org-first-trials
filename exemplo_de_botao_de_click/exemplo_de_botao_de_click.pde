boolean button;

int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(480, 270); 
}

void draw() {
 if (button){
  background(255); 
 }else {
  background(0); 
 }
 
 fill(175);
 rect(x,y,w,h);
}

void mousePressed() {
 if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    button = !button;
  }   
}
