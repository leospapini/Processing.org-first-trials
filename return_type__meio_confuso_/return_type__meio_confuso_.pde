void setup(){
 size(480,270); 
}

void draw(){
 background(255);
 stroke(0);
 
 float d = distance(width/2, height/2, mouseX, mouseY); //calcula a distância
 fill(d*3, d*2, d);                                   //entre o meio do mapa, 
 ellipseMode(CENTER);                                 //width/2, height/2
 ellipse(width/2, height/2, 100, 100);                //e o mouseX e mouseY
}

float distance(float x1, float y1, float x2, float y2) {
 float dx = x1 - x2;
 float dy = y1 - y2;
 float d = sqrt(dx*dx + dy*dy);
 return d;
}
