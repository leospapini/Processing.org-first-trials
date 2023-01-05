void setup() {
 size(1000,1000);
 frameRate(30); //o framerate é setado em 30 fps
 background(255);
}

void draw() {
  
  ellipseMode(CENTER);
  rectMode(CENTER);    //centraliza o círculo e os retângulos
  
  //corpo
  stroke(0);
  fill(175);
  rect(mouseX, mouseY, 20, 100);
  
  //cabeça
    stroke(0);
  fill(255);
  ellipse(mouseX, mouseY-30, 60, 60);
  
  //olhos
    fill(mouseX/2, 0, mouseY/2); //cores RGB determinadas pela posição do mouse
  ellipse(mouseX-19, mouseY-30, 16, 32);
  ellipse(mouseX+19, mouseY-30, 16, 32);
  
  //pernas
    stroke(0);
  line(mouseX-10, mouseY+50, pmouseX-10, pmouseY+60);
  line(mouseX+10, mouseY+50, pmouseX+10, pmouseY+60);
}

void mousePressed() {
  print("Take me to your leader!"); 
}
