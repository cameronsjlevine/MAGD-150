//draws the planet Saturn in outer space with Uranus, some stars, 
//and a UFO in the background
size(1000, 600);
background(0);

/*draws the planet Saturn*/
colorMode(RGB, 255);
stroke(255, 141, 0); //orange color
fill(255, 141, 0);
strokeWeight(1000);
point(1000, 600); //the base of Saturn

stroke(#FFE2BF); //orange cream color
noFill();
strokeWeight(150);
strokeCap(PROJECT);
arc(1100, -100, 1000, 1000, PI/2, PI/1.3); //top detail of Saturn
strokeWeight(100);
arc(1000, 100, 1000, 1000, PI/2, PI/1.2); //bottom detail of Saturn
stroke(0);
arc(1000, 600, 1095, 1095, 1.09*PI, 1.5*PI); //cleans up Saturn's details

strokeCap(SQUARE);
colorMode(HSB, 360, 100, 100, 100);
stroke(40, 10, 59, 50); //transparent grey color
noFill();
strokeWeight(100);
bezier(607, 363, 360, 450, 360, 482, 550, 640); //ring of Saturn
colorMode(RGB, 255);

/*cleans up Saturn's ring*/
stroke(#FFE2BF);
noFill();
strokeWeight(100);
bezier(579, 374, 610, 409, 652, 490, 784, 551);
strokeWeight(40);
bezier(608, 327, 511, 470, 652, 300, 558, 420);
strokeWeight(10);
line(558, 385, 545, 408);
noStroke();
fill(255, 141, 0);
triangle(562, 434, 542, 408, 528, 447);
stroke(255, 141, 0);
line(607, 310, 625, 342);

/*space details*/
stroke(196, 247, 255); //light cyan color
fill(196, 247, 255);
ellipse(150, 100, 100, 100); //the planet Uranus
stroke(255); //pure white color
fill(255);
quad(520, 20, 521, 21, 520, 22, 519, 21); //top left star
quad(220, 520, 221, 521, 220, 522, 219, 521); //bottom right star
quad(120, 420, 121, 421, 120, 422, 119, 421); //bottom left star
quad(820, 70, 821, 71, 820, 72, 819, 71); //top right star
stroke(145, 145, 145); //gray color
noFill();
strokeWeight(1);
ellipse(400, 230, 55, 40); //UFO glass
line(410, 250, 420, 270); //UFO right landing gear
line(390, 250, 380, 270); //UFO left landing gear
noFill();
stroke(#980000); //deep red color
strokeWeight(20);
arc(400, 200, 100, 100, 0.8, PI/1.35); //UFO rim
