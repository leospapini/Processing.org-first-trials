//exemplo de mouse pressionado ou tecla
void setup () {
 size(480, 270);
 background(255);
}

void draw () {
 //nada acontece em loop neste exemplo 
}

//sempre q o usuário clicar no mouse a condição é ativada
void mousePressed() {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 16, 16);
}

//sempre que o usuário apertar uma tecla a condição é ativada
void keyPressed() {
 background(255); 
}
