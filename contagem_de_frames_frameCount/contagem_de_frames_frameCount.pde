void setup(){
 size(1000,1000); 
 frameRate(60);
}

void draw() {
 background(50);
 stroke(255);
 //frameCount é usado para colorir o retângulo, frameCount conta a quantidade de frames q teve
 //desde o começo do debug
 fill(frameCount);
 rectMode(CENTER);
 //o retângulo sempre vai estar no meio da janela
 //se estiver localizado no (width/2, height/2).
 rect(width/2, height/2, mouseX+10, mouseY+10);
}

void keyPressed(){
  println(key);
}
