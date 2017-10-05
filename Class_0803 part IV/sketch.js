function setup(){

	createCanvas(600,600);

}


function draw(){
	background(255);
	
var mapRot = map(mouseX, 0, width, 0, 2*PI);

push();
rotate(mapRot);
rect(0,0,50,50);
pop();

push();

translate(width/2, height/2);

rotate(mapRot);
rect(0, 0, 50, 50);


pop();

/*
push();

translate(200,200);
rect(0,0,100,100);

pop();
*/
}