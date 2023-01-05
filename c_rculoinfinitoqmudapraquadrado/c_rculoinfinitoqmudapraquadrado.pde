void setup(){
size(1280,720);
background(255);
}

void draw(){
 if (mousePressed){
   stroke(0);
   fill(0,mouseX,mouseY);
   rect(mouseX-50,mouseY-50,100,100);   
 }else{
   stroke(0);
   fill(0,mouseX,mouseY);
   ellipse(mouseX,mouseY,100,100);
 }
}
