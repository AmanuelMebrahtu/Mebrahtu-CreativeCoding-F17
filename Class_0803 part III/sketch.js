var red;
var green;

function setup(){

	createCanvas(600,600);
	background(255);
	red = 255;
	green = 255
}

function draw(){

for(var s=0; s <10; s++){
	green = 255 - (s*20);
	for( var i =0; i<10; i++) {
		red = 255 - (i*20);
		fill(red, green,0);
		rect((i* 30)+20 ,(s*30)+20,15,15);
	
	}
}
}