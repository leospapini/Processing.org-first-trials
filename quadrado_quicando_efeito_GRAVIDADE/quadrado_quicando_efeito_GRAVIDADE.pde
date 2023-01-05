float x = 240;
float y = 0; 

float speed = 0;

//uma nova variável, para gravidade (aceleração)
//usamos um numero relativamente pequeno (0.1) pq
//essa aceleração acumula com o tempo, aumentando a velocidade.
//tente aumentar para 2.0 e veja oq acontece
float gravity = 0.1;

void setup(){
 size(480,270); 
}

void draw(){
 background(255);
 
 //código do quadrado
 fill(175);
 stroke(0);
 rectMode(CENTER);
 rect(x, y, 10, 10);
 
 //adicione speed na localização
 y = y + speed;
 
 //adicione gravidade para a velocidade
 speed = speed + gravity;
 
 //se o quadrado atinge a parte inferior
 //reverta a velocidade
 if(y > height) {
  //multiplicando por -0.95 ao invés de 01 desacelera o quadrado
  //toda vez q ele quica(diminuindo a speed).
  //Isso é conhecido como "dampening effect" e é uma simulação
  //mais realística do mundo real(sem isso, a bola quicaria para sempre)
  speed = speed * -0.95;
  y = height;
 }
}
