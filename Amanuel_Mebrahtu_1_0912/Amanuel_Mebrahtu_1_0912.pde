fullScreen();
background (#524004);
noStroke () ;
PFont write;
write = loadFont("AlienCaret-30.vlw");

// Frame
rect (20, 20, 2520, 1400);
// End Frame

// Flag
fill(#17CB33);
rect (20, 20, 2520, 466.66);
fill(#EFF707);
rect (20, 486.66, 2520, 466.66);
fill(#F71007);
rect (20, 953.32, 2520, 466.66);
// End Flag

// flower base
fill (245,172,15);
ellipse (1200, 800, 800, 800);
//end flower base
//small petals

fill (#4F24FF);
ellipse (1400,600,200,200);

fill (#26EA00);
ellipse (1400, 1000, 200,200);

fill (#FF58AC);
ellipse (1000, 1000, 200,200);

fill (#FC6363);
ellipse (1000, 600, 200, 200);
//petals
fill (240,255,62);
ellipse (1200, 600,305, 398);


fill (165, 255, 0);
ellipse (1200, 1000, 305, 398);

fill (#E063FC);
ellipse (1000, 800, 400,305);

fill (139,255,233);
ellipse (1400, 800, 400, 305);
//end of petals
//Ears
fill(198,134,66);
rect (1200, 770, 180,70);
rect (1017,770, 180, 70);
//End Ears
//Neck
rect (1150,800, 100, 300);
//face
fill (198,134,66);
ellipse (1200,800, 350, 445);
//Eyes
fill (255,255,255);
ellipse (1100, 780, 80, 80);
ellipse (1300, 780, 80, 80);
fill (0, 0, 0);
ellipse (1100, 780, 35, 35);
ellipse (1300, 780, 35, 35);
fill (255,255,255);
ellipse (1109, 768, 10, 10);
ellipse (1309, 768, 10, 10);
//End Eyes
//Nose
fill (198,134,66);
stroke(141,85,36);
strokeWeight (2.5); 
arc (1200, 850, 40, 40, 0, PI/1);
//End Nose
//Mouth
fill(#FFF7CB);
stroke(#98140F);
strokeWeight(1.4);
arc (1200, 900, 200, 200, 0, PI/1);
stroke(0,0,0);
line (1114, 950, 1134, 950);
line (1134, 950, 1139, 955);
line (1139, 955, 1144, 950);
line (1144, 950, 1287,950);
//End Mouth
//Hair
noStroke();
fill (0, 0, 0);
ellipse (1058, 670, 80, 80);
ellipse (1076, 643, 80, 80);
ellipse (1096, 623, 80, 80);
ellipse (1125, 609, 80, 80);
ellipse (1160, 605, 80, 80);
ellipse (1170, 600, 80, 80);
ellipse (1200, 600, 80, 80);
ellipse (1230, 610, 80, 80);
ellipse (1260, 610, 80, 80);
ellipse (1280, 626, 80, 80);
ellipse (1310, 640, 80, 80);
ellipse (1330, 660, 80, 80);
ellipse (1300,870, 8, 8);
//End hair
//Shirt
String a = "Amanuel";
fill(255,255,255);
rect(1000, 1100, 400, 1000);

fill(0,0,0);
rect(1000, 1130, 400, 50);
rect(1000, 1270, 400, 50);
textFont(write,69);
text(a, 1060, 1250);

fill (198,134,66);
stroke(0,0,0);
strokeWeight(1);
arc(1200,1100,100,100,0,PI/1);

line(1050, 1160, 1050, 1500);
line(1350,1160, 1350, 1500);