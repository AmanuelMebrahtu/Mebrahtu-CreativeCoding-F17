var mapVal;
var conVal;

function setup(){

	createCanvas(600,600);
	background(255);
	
}


function draw(){
	

background(255);
line(100,0,100,height);
line(500,0,500,height);

conVal = constrain(mouseX, 100, 500);
mapVal = map(mouseX, 0, width, 100, 500);

fill(255,255,0);
ellipse(conVal, (2/3)*height, 30, 30);


fill(0,255,0);
ellipse(mapVal,(1/3)*height, 30, 30);




	/*
	background(255);
	noStroke();

	mapped = map(mouseY, 0, height, 0, 255);
	size = map(mouseX, 0, width, 40,400);

	fill(0,0,mapped);
	ellipse(width/2, height/2,size, size);
	*/
}