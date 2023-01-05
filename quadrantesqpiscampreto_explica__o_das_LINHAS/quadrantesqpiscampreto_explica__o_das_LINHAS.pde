void setup(){
 size(480,270); 
}

void draw(){
 background(255);
 stroke(0);
 line(240, 0, 240, 270);
 line(0, 135, 480, 135); //sintaxe da linha = line(x1, y1, x2, y2);
 
 //preencher o fundo com uma cor preta
 noStroke();
 fill(0);
 
 //dependendo da localização do mouse, um retângulo diferente é acionado
 if (mouseX < 240 && mouseY < 135) { //&& significa AND, ou seja
   rect(0, 0, 240, 135);            //as duas condições tem q ser true para ocorrerem
   }else if (mouseX > 240 && mouseY < 135) {
    rect(240, 0, 240, 135); 
   }else if (mouseX < 240 && mouseY > 135) {
    rect(0, 135, 240, 135); 
   }else if (mouseX > 240 && mouseY > 135) {
    rect(240, 135, 240, 135); 
   }
}
