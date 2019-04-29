background(0); //background color
size(1000, 600); //window size

//draws a picture of the top of a pagoda in the moonlight

ellipse(500, 200, 500, 500); //the moon; no stroke and no fill

stroke(200); //light gray outline
fill(200); //light gray filling
ellipse(350, 100, 100, 50); //moon crater
ellipse(375, 30, 65, 55); //moon crater
ellipse(320, 170, 55, 65); //moon crater
strokeWeight(20);
point(700, 200); //moon crater
strokeWeight(50);
point(670, 100); //moon crater
strokeWeight(1);

stroke(20); //dark gray outline
fill(20); //dark gray filling
rectMode(CENTER); //changes rect's display mode to "CENTER"
rect(500, 499, 800, 200); //building wall

stroke(0); //pure black outline
fill(0); //pure black filling
rect(500, 520, 200, 100); //building wall window

stroke(100); //gray outline
fill(100); //gray filling
rect(500, 315, 1000, 168); //roof filler
stroke(90); //slightly darker gray outline
fill(90); //slightly gray filling
rect(500, 410, 1000, 18); //front rim filler

stroke(70); //dark gray outline
line(0, 400, 1000, 400); //front rim of roof
line(0, 420, 1000, 420); //bottom of the front rim
line(80, 250, 920, 250); //top of roof
line(50, 230, 950, 230); //tippy-top of roof
line(-100, 400, 70, 230); //far left side of roof
line(-100, 400, 80, 250); //left side of roof
line(930, 230, 1100, 400); //far right side of roof
line(920, 250, 1100, 400); //right side of roof
line(400, 230, 500, 150); //left side of spire
line(600, 230, 500, 150); //right side of spire
line(500, 150, 500, 100); //tip of spire

//roof front details
stroke(80);
strokeWeight(20);
line(20, 312, 20, 410);
line(60, 280, 60, 410);
line(100, 260, 100, 410);
line(140, 260, 140, 410);
line(180, 260, 180, 410);
line(220, 260, 220, 410);
line(260, 260, 260, 410);
line(300, 260, 300, 410);
line(340, 260, 340, 410);
line(380, 260, 380, 410);
line(420, 260, 420, 410);
line(460, 260, 460, 410);
line(500, 260, 500, 410);
line(540, 260, 540, 410);
line(580, 260, 580, 410);
line(620, 260, 620, 410);
line(660, 260, 660, 410);
line(700, 260, 700, 410);
line(740, 260, 740, 410);
line(780, 260, 780, 410);
line(820, 260, 820, 410);
line(860, 260, 860, 410);
line(900, 260, 900, 410);
line(940, 280, 940, 410);
line(980, 312, 980, 410);

stroke(0); //pure black outline
fill(0); //pure black filling
rotate(PI/4);
rect(860, -531, 100, 50); //covers right roof outcropping
rotate(PI/2);
rect(160, -177, 100, 50); //covers left roof outcropping

rotate(5*PI/4); //resets rotation
