//exemplo desenhando uma linha contínua
void setup () {
 size(1000, 1000);
 background(255);
}

void draw () {
 stroke(0);
 //desenha uma linha da posição anterior do mouse para a posição atual do mouse
 line(pmouseX, pmouseY, mouseX, mouseY);
}
