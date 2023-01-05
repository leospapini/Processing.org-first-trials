void setup() {
  size(400, 400);
  background(0);
}

void draw() {
  line(200, 200, mouseX, mouseY);
  if(mousePressed){
   stroke(0); 
  }else{
   stroke(255); 
  }
}
