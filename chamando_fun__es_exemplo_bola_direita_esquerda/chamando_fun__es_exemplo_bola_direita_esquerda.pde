//declarar variáveis globais (permanecem iguais)
int x = 0;
int speed = 1;

//setup não muda
void setup(){
 size(480,270); 
}

void draw(){
 background(255);
 //ao invés de escrever todo o código sobre a bola dentro do draw()
 //nós simplificamos chamando funções. Como vou saber o nome delas?
 //nós inventamos os nomes com palavras q facilitem nosso entendimento
 move();
 bounce();
 display();
}

//aonde eu devo colocar minhas funções??
//nós podemos definir nossas funções em qualquer lugar do código
//q seja fora de setup() e draw(). No entanto, o local mais conveniente
//a se colocar elas é embaixo do draw().

//função para mover a bola
void move() {
 //muda a localização do x pela velocidade
 x = x + speed;
}

//função para quicar a bola
void bounce(){
 //se chega no limite, reverte a velocidade
 if ((x > width) || (x < 0)){
  speed = speed * -1; 
 }
}

//função para mostrar a bola
void display(){
 stroke(0);
 fill(175);
 ellipse(x, height/2, 32, 32);
}
