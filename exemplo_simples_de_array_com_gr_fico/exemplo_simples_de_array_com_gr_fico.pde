size(110,110);
int[] x = {
 50, 61, 83, 69, 71, 50, 29, 31, 17, 39 
};

fill(0);
//lendo um elemento do array por vez com o loop for
for (int i = 0; i < x.length; i++){
 rect(0, i*10, x[i], 8); 
}

//definindo arrays
//1° forma
int[] data; //declarando

void setup(){
 size(100, 100);
 data = new int[5]; //criando
 data[0] = 19; //atribua
 data[1] = 40;
 data[2] = 75;
 data[3] = 76;
 data[4] = 90;
}

//2° forma
int[] data = new int[5]; //declarando e criando ao mesmo tempo

void setup(){
 size(100, 100);
 data[0] = 19; //atribuindo
 data[1] = 40;
 data[2] = 75;
 data[3] = 76;
 data[4] = 90;
}

//3° forma
int[] data = {19, 40, 75, 76, 90}; //declarando, criando e atribuindo

void setup(){
 size(100, 100); 
}
