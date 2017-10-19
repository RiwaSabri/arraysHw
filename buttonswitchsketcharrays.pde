float moonX=400;
float moonY=50;
float cmoonX[]= {moonX+3,moonX-3,moonX-20,moonX-20,moonX-20,moonX-10,moonX+12,moonX+14};
//float c1moonX= moonX+3;
//float c2moonX=moonX-3;
//float c3moonX=moonX+10;
//float c4moonX=moonX-20;
//float c5moonX=moonX-20;
float cmoonY[]= {moonY+3,moonY-12,moonY+22,moonY-20,moonY-15,moonY+3,moonY-3,moonY-20};
//float c1moonY=moonY+3 ;
//float c2moonY=moonY-12;
//float c3moonY=moonY+22;
//float c4moonY=moonY-20;
//float c5moonY=moonY-15;
//float c6moonX=moonX-10;
//float c6moonY=moonY+3;
//float c7moonX=moonX+12;
//float c7moonY=moonY-3;
//float c8moonX=moonX+14;
//float c8moonY=moonY-20;
float patX=0;
float patY=10;
float a=30;
boolean switchState=false;
float switchRadius=100;
boolean switchState2=true;
float w=10;
boolean switchState3=false;







void setup () {
size (500,500);
rectMode(CORNER);
ellipseMode(CENTER);}



void draw () {

drawGround();
drawMoon();

drawalien();
if (switchState==true){
drawinvasion();}}


  
void drawGround() {
fill(0);
rect (0,400,500,100);}

void drawMoon() {
fill(0);
ellipse(moonX,moonY,100,100);

fill(255,255,255,200);
  for (int i=0; i<8; i++){
ellipse(cmoonX[i],cmoonY[i],w,w);
if (switchState3==true){
   w=w+2;}
 


}
//ellipse(c2moonX,c2moonY,10,10);
//ellipse(c3moonX,c3moonY,10,10);
//ellipse(c4moonX,c4moonY,10,10);
//ellipse(c5moonX,c5moonY,10,10);
//ellipse(c6moonX,c6moonY,10,10);
//ellipse(c7moonX,c7moonY,10,10);
//ellipse(c8moonX,c8moonY,10,10);

}





void drawalien() {
  fill(30,100,50,200);
  noStroke();
ellipse(a,400,100,100);
if (switchState2==true){
a=a+1;}
}


void drawinvasion() {
  fill(0);
  stroke(0);
line(patX,patY,patX,patY+40);
patX +=5;


if (patX>width) {
patX =0; 
patY +=50;
}else {
  patX+=5;

}}
void mousePressed() {
if (dist(mouseX,mouseY,cmoonX[0],cmoonY[0])<w){
switchState3 = !switchState3;
w=10;

}

if (dist(mouseX,mouseY,cmoonX[1],cmoonY[1])<w){
switchState3 = !switchState3;
w=10;

}

if (dist(mouseX,mouseY,cmoonX[2],cmoonY[2])<w){
switchState3 = !switchState3;
w=10;

}

  if (dist(mouseX, mouseY, 400, 50) < switchRadius) {
    switchState = !switchState;}
    
  if (dist(mouseX,mouseY,a,400)<100){
    switchState2=!switchState2;}
    
}
  
 