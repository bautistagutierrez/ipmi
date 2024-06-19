void setup(){
  size(800,400);
}  
  
String estado="inicio";
  
  
void efecto(int x){
 int dia=400;
   rectMode(CENTER); 
   for(int i=1;  i<15; i++){
       dia = dia - 30;
       if(i%2 == 0){
         fill(255);
      ellipse(x,200, dia, dia); 
       }else{
         fill(0);
         rect(x,200, dia-30, dia-30);
       }
   }
  
  
  
}  
  
  
float col(int x){
  
 float ret=0; 
  
  
     ret = map(x, 400,800, 255, 0);
  
  
  return ret;
}  
  
  
  
  
void efecto2(int x){
 int dia=400;
   rectMode(CENTER); 
   for(int i=1;  i<15; i++){
       dia = dia - 30;
       if(i%2 == 0){
         
   
         fill(col(mouseX)-i*10);
      ellipse(x,200, dia, dia); 
       }else{
         fill(0);
         rect(x,200, dia-30, dia-30);
       }
   }
   
}    
  
  
  
  
  
void draw(){
  
  background(200);
  
 efecto(200); 
 if(estado == "inicio")
     efecto(600); 
    else
     efecto2(600);
}  
  
  
void mousePressed(){
  
  estado="efecto";
  
} 
  
  
  
void keyPressed(){
  
 if(key == 'r')
  estado="inicio";
  
}
