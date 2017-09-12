void setup() {
  size(600,600);
  background(140);
}

void draw () {
  background(255);
  if(mousePressed == true && mouseY > 400 && mouseX < 300){
    fill(0,128,128);
    rect(0,400,300,200);
  }
  if(mouseX<300 && mouseY<400){
    fill(0,0,255);
    rect(0,0,300,400);
    ;
  }
  if(mouseX > 300){
    fill(255,0,0);
    rect(300,0,300,600);
  }
  if(mouseX == 450){
    fill(255,255,0);
    rect(0,0,600,600);
  }
  
    
}

/*
void mousePressed() { 
rect(mouseX,90,60,70);
ellipse(mouseX,mouseY,90,90);
}

void mouseDragged() {

  fill(130,50,79);
 triangle(mouseX,mouseY,mouseX+180,mouseY+180, mouseX+100, mouseY+156);
}

void keyPressed() {
  println(key);
}

*/