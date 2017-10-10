function setup(){

	createCanvas(800,600);

}


function draw(){
	background(255);
	
var mapRot = map(mouseX, 0, width, 0, 2*PI);
var mapRot1 = map(mouseX, 0, width, 0, 0.5*PI);
var mapRot2 = map(mouseX, 0, width, 0, 1.33*PI);

push();
translate (100,300);
scale(1.5);
rotate(mapRot);
rect(0,0,50,50);
pop();

push();

translate(250, height/2);
scale(2);
rotate(mapRot1);
rect(0, 0, 50, 50);


pop();

push();
translate (500,300);
scale(1.5);
rotate(mapRot2);
rect(0,0,50,50);
pop();

/*
push();

translate(200,200);
rect(0,0,100,100);

pop();
*/
}