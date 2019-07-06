int x=60;
int y=390;
int bodyHeight=180;
int neckHeight=40;
int radius=45;
float easing=0.04;

void setup(){
  size(4000,2000);
  
strokeWeight(2);
background(0,153,204);
ellipseMode(RADIUS);
}
void draw(){
  int targetX=mouseX;
  x+=(targetX-x)*easing;
  
  if(mousePressed){
    neckHeight=16;
    bodyHeight=90;
  }
  else{
    neckHeight=70;
    bodyHeight=160;
  }
  float ny=y-bodyHeight-neckHeight-radius;
  background(0,150,200);
//neck
stroke(255);
line(x+2,y-bodyHeight,x+2,ny);
line(x+12,y-bodyHeight,x+12,ny);
line(x+22,y-bodyHeight,x+22,ny);


//antena
line(x+12,ny,x-18,ny-43);
line(x+12,ny,x+42,ny-99);
line(x+12,ny,x+78,ny+15);


//body
noStroke();
fill(255,204,0);
ellipse(x,y-33,33,33);
fill(0);
rect(x-45,y-bodyHeight,90,bodyHeight-33);
fill(255,204,0);
rect(x-45,y-bodyHeight+17,90,6);


//head
fill(0);
ellipse(x+12,ny,radius,radius);
fill(255);
ellipse(x+24,ny-6,14,14);
fill(0);
ellipse(x+24,ny-6,3,3);
fill(153,204,255);
ellipse(x,ny-8,5,5);
ellipse(x+30,ny-26,4,4);
ellipse(x+41,ny+6,3,3); 
}
