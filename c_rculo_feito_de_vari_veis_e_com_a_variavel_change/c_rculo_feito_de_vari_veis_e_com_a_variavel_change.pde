// We've got 8 variables now!  All  of type float.
float circleX = 0;
float circleY = 0;
float circleW = 50;
float circleH = 100;
float circleStroke = 255;
float circleFill = 0;
float backgroundColor = 255;
float change = 0.5;

// Your basic setup
void setup() {
  size(480, 270);
}

void draw() {
  // Draw the background and the ellipse
  // Variables are used for everything: 
  // background, stroke, fill, location, and size.
  background(backgroundColor);
  stroke(circleStroke);
  fill(circleFill);
  ellipse(circleX, circleY, circleW, circleH);

  //vai adicionando o valor de change que é 0.5 em cada outra variável, criando uma
  //noção de movimentação no círculo
 
  circleX = circleX + change;
  circleY = circleY + change;
  circleW = circleW + change;
  circleH = circleH - change;
  circleStroke = circleStroke - change;
  circleFill = circleFill + change;
}
