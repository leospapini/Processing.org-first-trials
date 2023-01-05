size(480,270);
background(255);

int y = 80;
int spacing = 10;
int len = 20;

for(int x = 50; x <= 150; x += spacing){ //x foi declarado dentro do controle de repetição
                                         //for (init, test, update)
 line(x, y, x, y + len); 
}
