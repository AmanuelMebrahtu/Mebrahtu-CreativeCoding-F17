function setup(){

	createCanvas(600,500);
	background(255);
	console.log("Launched the screen!");

}

function draw(){

noStroke();


if(mouseIsPressed && mouseY < 166.66 && mouseX < 300){
    fill(0,128,128);
    rect(0,0,300,166.66);
  }
 else{
 	fill(255);
    rect(0,0,300,166.66);
 }
if(mouseX > 300){
	fill(0,0,255);
	rect(300,0,300,500);
}
else{
	fill(255);
	rect(300,0,300,500);
}
if(mouseX < 300 && mouseY > 166.66){
	fill(255,0,0);
	rect(0,166.66,300, 333.33);
}
else{
	fill(255);
	rect(0,166.66,300, 333.33);
}
if(mouseX == 500){
	fill(255,255,0);
	rect(0,0,600,500);
}
}
