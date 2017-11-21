
var img;
var img0;
var img1;
var space = 50;
let p;
let h;
var level = 0;
var row = 1;
var x;
var y;
var dist;
var hit;
var hit1;
var hit2;

function preload() {
  img = loadImage("assets/soldier.png");
  img0 = loadImage("assets/horse.png");
  img1 = loadImage("assets/grass.jpg");
}
function reset(){
	p = new Player();
}
function setup(){

	createCanvas(600,600);
	h = new Horse();
	reset();
	hit = dist(p.x, p.y, h.x, h.y);
	hit1 = dist(p.x, p.y, h.x1, h.y);
	hit2 = dist(p.x, p.y, h.x2, h.y);
	if (hit < 80){
			reset();
		}

		if (hit1 < 80){
			reset();
		}

		if (hit2 < 80){
			reset();
		}

}


// Switch Cases
function draw(){
	if(level == 0){
		background(193, 79, 54);
		image(img1,0,0,600,600);
		p.display();

		for (var i = 50; i<550; i+=125){
			h.display(i);
			h.move();
		}

		



	if(level == 1){
		background(193, 79, 54);
		p.display();

		
	}

	}
}
// The object is created and is what the player plays as
class Player{
	constructor(){
		this.x = 300;
		this.y = 550;
		this.w = 50;
		this.h = 50;
	
	}
	move(x1, y1){
		this.x += x1*space;
		this.y += y1*space;
		if(this.y < 0){
			level += 1;
		}
	}
	display(){
		rectMode(CENTER);
		image(img,this.x,this.y,this.w,this.h);
	}


}
var velocity = 1;
// The Obstacles the player must overcome

class Horse{

	constructor(){
		this.x = 0;
		this.x1 = this.x + 250;
		this.x2 = this.x1 + 250;
		this.y = y;
		this.w = 100;
		this.h = 50;
	}
	move(){
		this.x += velocity;
		this.x1 += velocity;
		this.x2 += velocity;
		
		if (this.x > width+space){
			this.x = -1 * this.w - space;
		}
		if (this.x1 > width+space){
			this.x1 = -1 * this.w - space;
		}
		if (this.x2 > width+space){
			this.x2 = -1 * this.w - space;
		}
	
	} 
	display(y){
		rectMode(CENTER);
		image(img0,(this.x),y,100,100);
		image(img0,(this.x1),y,100,100);
		image(img0,(this.x2),y,100,100);
	}
	

}

// player movement
function keyPressed() {
	if(keyCode === UP_ARROW) {
	  p.move(0, -1);
	} else if(keyCode === DOWN_ARROW) {
	  p.move(0, 1);
	} else if(keyCode === LEFT_ARROW) {
	  p.move(-1, 0);
	} else if(keyCode === RIGHT_ARROW) {
	  p.move(1, 0);
	}
  }