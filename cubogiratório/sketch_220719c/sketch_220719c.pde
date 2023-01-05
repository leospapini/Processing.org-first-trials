/**
 * Move Eye. 
 * by Simon Greenwold.
 * 
 * The camera lifts up (controlled by mouseY) while looking at the same point.
 */

void setup() {
  size(1280, 720, P3D);
  fill(204);
}

void draw() {
  lights();
  background(0);
  
  // Change height of the camera with mouseY
  camera(mouseX, mouseY, 220.0, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         1.0, 1.0, 0.0); // upX, upY, upZ
  
  noStroke();
  box(90);
  stroke(255);

}
