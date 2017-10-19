int numRandomWalkers =20; 
float x[] = new float[numRandomWalkers];
float y[] = new float[numRandomWalkers];
float dx[] = new float[numRandomWalkers];
float dy[] = new float[numRandomWalkers];
float w;
float h;
float z ;



void setup() {
  size(500, 500);
    for (int i=0; i<numRandomWalkers;i++){
    x[i] = random(0, width);
    y[i] = random(0, height);
    dx[i] = random(-8, 8);
    dy[i] = random(-8, 8);
  }
  background(250);
  ellipseMode(CENTER);
  noStroke();
}

void draw() {
  
   for (int i=0; i<numRandomWalkers;i++){
  float r = int(random(5));
  
  if (r == 0 || r==2) {
    y[i] +=dx[i];
    rect(x[i],y[i],10,20);
  } else if (r == 1 ) {
    x[i] += dx[i];
  } else {
    x[i] -= dx[i];
    
  } 
  
  if (x[i]>600 || y[i]>600|| x[i]<0 || y[i]<0) {
    x[i]=random(0,width);
    y[i]=random(0,height);;
  }
    float w = map(mouseX, 0, width,0 , 255);
    float h = int(random(255));
    float z = int(random(100));
 
fill(w,h,z);
  


  ellipse(x[i], y[i], 10, 20);
}}