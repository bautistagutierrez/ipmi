// Juan Bautista Gutierrez 95502/7
String estado;
int segundos;
PImage twd;
PImage twdd;
PImage twddd;
PImage twdddd;
PFont fuente;
String titulo,texto2,texto3;
int px,py;


void setup() {
  size(640, 480);
  px = width;
  py= height; 
  estado ="pantalla1";
   twd=loadImage("twd1.jpg"); 
twdd=loadImage("twd2.jpg");
twddd=loadImage("twd3.jpg");
twdddd=loadImage("twd4.jpg");
fuente = loadFont("TektonPro-BoldCond-30.vlw");
titulo= "The Walking Thead";
texto2= "The Walking Dead es una historia creada por Robert Kirkman en el 2003, situada en un universo post-apocalíptico donde los muertos han regresado a la vida como criaturas irracionales hambrientas de carne fresca y donde la civilización como la conocemos ha sucumbido ante el incesante paso de estos caminantes";
texto3="la serie se enfoca más en las relaciones interpersonales de sus diferentes protagonistas y la manera en la que el ser humano lidia con el miedo a la muerte y el instinto de supervivencia presente en todos y cada uno de nosotros";
  textFont(fuente);
}


void draw() {
  background(255);
 
  fill(100);
  text(segundos, 400, 50);
  if (estado.equals("pantalla1")) {
    image(twd,0,0); 
    fill(255);
    textSize(40);
    text(titulo,px,height /2);
      px ++;
    if (px > width) {
    px = 0;
  }
  } else if (estado.equals("pantalla2")) {
    image(twdd,0,0); 
    fill(255);
    textSize(30);
    text(texto2,px,height /3,600,500);
     px ++;
    if (px > width) {
    px = 0;
  }
  } else if (estado.equals("pantalla3")) {
    image(twddd,0,0);
    fill(255);
    textSize(30);
    text(texto3,150,py,400,400);
    py --;
    if (py < 0) {
    py = height;
  }
  } else if (estado.equals("pantallafinal")) {
    image(twdddd,0,0); 
    fill(255);
    textSize(40);
    text("Reiniciar", 500, 200);
    circle( 550, 250, 50 );
  }
  if (frameCount%60 == 0) {
    segundos++;
  }
  if (segundos<8) {
    estado = "pantalla1";
  } else if (segundos>=8 && segundos<= 14) {
    estado = "pantalla2";
  } else if (segundos > 14 && segundos <20) {
    estado = "pantalla3";
  } else {
    estado = "pantallafinal";
  }
}
void mousePressed() {
   if( estado.equals("pantallafinal") ){
    if( dist(550, 250, mouseX, mouseY) < 25 ){
      estado = "pantalla1";
  segundos=0;
  }
 // estado = "inicio";
 // segundos = 0;
}
}
