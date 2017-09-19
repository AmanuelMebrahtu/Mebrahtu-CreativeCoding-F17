int x = 10;
int y = 1;
int s = 4;
int v= int(random(8,25));
float tri = 800;
int m = millis();
int score = 0;
float x1 = random(0,800);
float y1 = random(0,800);
float x2 = random(0,800);
float y2 = random(0,800);
int g=2;
int b=4;
float time = random(0,30000);
float time1 = random(0,30000);
float time2 = random(0,30000);
void setup(){
  size(800,800);
}

void draw(){
  background(255,255,0);
  if (x <= width){
    x=x+s;
  }
  if (x >= width || x<=0){
    s = s*-1;
    x=x+s;
  }
   if (y <= height){
     y=y+v;
   }
   if (y >= height || y<=0){
     v*= -1;
     y=y+v;
   }
   //shots
   fill (#18F0DC);
  triangle(mouseX+15,tri, mouseX-15, tri, mouseX,tri-15);
  
  if (mousePressed == true){
    tri -= 15;
  }
  
  if(tri <= 0){
    tri = 800;
    triangle(mouseX+15,tri, mouseX-15, tri, mouseX,tri-15);
  }
 
  // end shots
  noStroke();
  fill(255,0,0);
  ellipse(x,y, 30,30);
  if (y1 >= height || y<=0){
     b*= -1;
  }
  if (x1 >= width || x<=0){
    g*= -1;
  }
    if (y2 >= height || y<=0){
     b*= -1;
  }
  if (x2 >= width || x<=0){
    g*= -1;
  }
  if( millis() >= time && millis() <= time+3000 || millis() >=time1 && millis() <= time1+3000){
    fill(0,0,255);
    ellipse(x1,y1,20,20);
    x1 += g;
    y1 += b;
  }
  if( millis() >= time2 && millis() <= time2+2000){
    fill(#F317FF);
    rect(x2,y2,20,20);
    x2 += g;
    y2 += b;
  }
  if (dist(mouseX-15,tri,x1,y1)< 20){
   println("Special Hit! 15 points");
   score += 15;
  }
  if (dist(mouseX-15,tri,x2,y2)< 20){
   println("SUPER Hit! 25 points");
   score += 25;
  }
  if (dist(mouseX-15,tri,x,y) < 30){
    println("Hit! 5 Points");
    score += 5;
    
  }
  
  if (millis() > 30000){
    println("Game Over! You got " + score +" Points. Stop and Retry to beat your Score!");
    fill(255,255,0);
    rect(0,0,800,800);
  }
  
} 