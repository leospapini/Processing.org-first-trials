//alpha transparency
size(480, 270);
background(0);
noStroke();

//sem um 4° argumento significa 100% de opacidade
fill(0, 0, 255);
rect(0, 0, 240, 200);

//255 no 4° argumento também significa 100% de opacidade
fill(255, 0, 0, 255);
rect(0, 0, 480, 40);

//75% de opacidade
fill(255, 0, 0, 191);
rect(0, 50, 480, 40);

//55% de opacidade
fill(255, 0, 0, 127);
rect(0, 100, 480, 40);

//25% de opacidade
fill(255, 0, 0, 63);
rect(0, 150, 480, 40);
