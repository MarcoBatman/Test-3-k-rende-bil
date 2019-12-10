PImage highway;
PImage car;
int posx ;
int posy;
int xspeed;

void setup(){
 
  size(1920,1080);
  highway = loadImage("highway.png");
  car = loadImage("bil.png");  
  posx=0;
  posy=50;
  xspeed = 50;
}
void keyPressed(){
  if (keyPressed) {
   if (key == '1' || key == '!'){
   posy = 50;
 }
   if (key == '2' || key == '"' || key == '@'){
   posy = 300;
   }
   if (key == '3' || key == '#' || key == '£'){
     posy = 580;
   }
   if (key == '4' || key == '¤' || key == '$'){
     posy = 830;
   }
    
  }
}
void mousePressed(){
 if (mouseY>0 && mouseY<270){
 posy=50;
 }
  if (mouseY>270 && mouseY<540){
 posy=300;
 }
  if (mouseY>540 && mouseY<910){
 posy=580;
 }
  if (mouseY>910 && mouseY<1080){
 posy=830;
 }
}

void draw(){
  if (posx>width){
  posx=-50;
}
   frameRate(60);
  posx= posx + xspeed;
  image(highway,0,0,1920,1080);
  image(car,posx,posy,200,200);
  
}
