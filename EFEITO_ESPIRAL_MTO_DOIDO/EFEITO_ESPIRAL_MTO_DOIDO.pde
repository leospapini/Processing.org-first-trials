float AngleStart = 0;
float AngleBump = 0;
float RingThickness = 30;
float speed = 1;
color OrangeColor = color(180, 95, 10);
color BlueColor = color(0, 80, 110);

void setup(){
 size(1000, 1000);
 frameRate(120);
 smooth();  //deenha tudo bem limpo
 noStroke();//não desenha linha para as formas
}

void draw(){
 background(BlueColor);
 float diam = width;
 float angle = AngleStart;
 while (diam > 0) {
  fill(OrangeColor);
  ellipse(500, 500, diam, diam);
  fill(BlueColor);
  //desenhando metade do disco em azul
  arc(500, 500, diam, diam, angle, angle+PI);
  diam -= RingThickness; 
  angle += speed*AngleBump;
 }
 AngleStart += speed*.01;
 AngleBump += speed*.005;
}

void keyTyped(){
 if (key == 'r') RingThickness = max(RingThickness-10, 10);
 if (key == 'R') RingThickness += 10;
 if (key == 's') speed = max(speed-.1, .1);
 if (key == 'S') speed += .1;
}
