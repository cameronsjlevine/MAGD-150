//The Gateway of Dimensions
/*A program that includes two buttons, one that shows what I decided to call
  "Urban Mystique", and another that shows a scene in reference to the song
  "Lucy in the Sky with Diamonds" by the Beatles
*/
int WORLD_STATE = 0; //global variable that determines which scene is displayed
int TELE_STATIC = 190; //global variable that controls the tele's static movement
int RAIN = 190; //global variable that controls rain movement in the mystique
int KALEIDOSCOPE = 0; //global variable that controls the kaleidoscope eye

void setup(){
  size(1000, 600);
}

void draw(){
  rectMode(CENTER);
  //State 0 is the selection screen
  if(WORLD_STATE == 0){
    background(105, 0, 206); //purple color
    stroke(0); //pure black color
    if(mouseX >= 200 && mouseX <= 400 && mouseY >= 250 && mouseY <= 350){
      fill(0, 200, 0); //green color
      if(mousePressed){
        WORLD_STATE = 1;
        println("Press any key to reset.");
      }
    } else {
      fill(255); //pure white color
    }
    rect(300, height/2, 200, 100); //left button
    if(mouseX >= 600 && mouseX <= 800 && mouseY >= 200 && mouseY <= 400){
      fill(0, 200, 0); //green color
      if(mousePressed){
        WORLD_STATE = 2;
        println("Press any key to reset.");
      }
    } else {
      fill(255); //pure white color
    }
    strokeWeight(10);
    ellipse(700, height/2, 200, 200); //right button
    fill(0);
    textSize(20);
    text("Urban Mystique", 225, 310);
    text("Lucy in the", 650, 270);
    text("Sky with", 650, 310);
    text("Diamonds", 650, 350);
  }
  //State 1 is the "Urban Mystique"
  if(WORLD_STATE == 1){
    stroke(0);
    fill(0);
    strokeWeight(1);
    rect(width, height/2, width*2, 200); //window
    stroke(70);
    fill(70);
    rect(0, height/2, 300, 200); //left-most building side
    rect(250, height/2, 100, 200); //left building side
    rect(1000, height/2, 300, 200); //right-most building side
    rect(750, height/2, 100, 200); //right building side
    stroke(90);
    fill(90);
    rect(200, height/2, 100, 200); //left-most building face
    rect(300, height/2, 50, 200); //left building face
    rect(800, height/2, 100, 200); //right-most building face
    rect(700, height/2, 50, 200); //right building face
    stroke(230); //light gray color
    fill(230);
    rect(width/2, height/2, 350, 300); //a large television
    stroke(220); //even lighter gray color
    fill(220);
    rect(width/2, TELE_STATIC, 350, 20); //tv static
    TELE_STATIC++;
    if(TELE_STATIC >= 410){
      TELE_STATIC = 190;
    }
    stroke(0);
    strokeWeight(3);
    //first symbol
    line(397, 270, 423, 270);
    line(390, 260, 430, 260);
    line(410, 260, 410, 257);
    line(390, 260, 390, 268);
    line(430, 260, 430, 268);
    line(389, 280, 431, 280);
    line(420, 280, 420, 290);
    noFill();
    arc(389, 280, 30, 35, 0, PI/2);
    arc(428, 291, 15, 15, 0, PI);
    //second symbol
    line(445, 298, 475, 298);
    line(460, 298, 460, 272);
    line(452, 272, 468, 272);
    line(447, 285, 473, 285);
    line(460, 257, 475, 271);
    line(460, 257, 445, 271);
    //third symbol
    line(520, 260, 520, 290);
    line(529, 257, 529, 298);
    line(522, 298, 526, 298);
    line(485, 272, 515, 272);
    line(490, 264, 515, 264);
    line(492, 260, 486, 266);
    line(488, 284, 513, 284);
    line(488, 284, 488, 294);
    line(513, 284, 513, 294);
    line(513, 294, 505, 294);
    line(500, 257, 500, 298);
    //fourth symbol
    line(579, 257, 579, 298);
    line(579, 257, 589, 257);
    line(589, 257, 589, 287);
    line(589, 287, 585, 287);
    line(565, 262, 565, 292);
    line(565, 282, 573, 282);
    line(555, 272, 573, 272);
    line(560, 262, 573, 262);
    line(555, 265, 561, 257);
    line(545, 265, 551, 257);
    line(573, 294, 552, 297);
    line(557, 280, 557, 296);
    line(547, 278, 547, 298);
    line(550, 270, 540, 284);
    //Japanese that reads: "Complete Control"
    
    stroke(0, 0, 255);
    strokeWeight(1);
    int xRain = round(random(width));
    line(xRain, RAIN, xRain, RAIN+10); //rain
    int yRain = round(random(width));
    line(yRain, RAIN, yRain, RAIN+10); //more rain
    int zRain = round(random(width));
    line(zRain, RAIN, zRain, RAIN+10); //even more rain
    int uRain = round(random(width));
    line(uRain, RAIN, uRain, RAIN+10); //unnecessarily more rain
    int qRain = round(random(width));
    line(qRain, RAIN, qRain, RAIN+10); //just enough rain
    RAIN+=20;
    if(RAIN >= 410){
      RAIN = 190;
    }
    fill(#8C83AF); //lavender color
    stroke(#8C83AF);
    rect(width/2, 500, width*2, 200); //bottom border
    rect(width/2, 100, width*2, 200); //top border
    stroke(70); //dark gray color
    
    //border fancification
    //the top
    line(0, 0, 200, 200);
    line(100, 100, 0, 200);
    line(1000, 0, 800, 200);
    line(900, 100, 1000, 200);
    //the bottom
    line(200, 600, 0, 400);
    line(200, 600, 400, 400);
    line(400, 400, 600, 600);
    line(600, 600, 800, 400);
    line(800, 400, 1000, 600);
    
    stroke(90);
    strokeWeight(3);
    line(width/2, 100, 400, 50); //furthest top left eye lash
    line(width/2, 100, 600, 50); //furthest top right eye lash
    line(width/2, 100, 450, 30); //top left eye lash
    line(width/2, 100, 550, 30); //top right eye lash
    line(width/2, 100, 400, 150); //furthest bottom left eye lash
    line(width/2, 100, 600, 150); //furthest bottom right eye lash
    line(width/2, 100, 450, 180); //bottom left eye lash
    line(width/2, 100, 550, 180); //bottom right eye lash
    fill(230);
    stroke(100);
    strokeWeight(5);
    ellipse(width/2, 100, 200, 100); //the eye
    fill(0);
    stroke(0);
    ellipse(width/2, 100, 50, 90); //the pupil
  }
  //State 2 is "Lucy in the Sky with Diamonds"
  if(WORLD_STATE == 2){
    background(255, 175, 0); //marmalade color
    fill(#06C4AC); //turquoise color
    stroke(#06C4AC);
    ellipse(0, 500, 1100, 600); //west bank
    pushStyle();
    fill(0, 0, 255);
    stroke(0, 0, 255);
    ellipse(0, 700, 2200, 600); //river
    cellophaneFlowers(700, 200, 100, false); //right cellophane flower
    stroke(0, 200, 0); //green color
    strokeWeight(70);
    line(900, -100, 1100, 150); //tangerine leaf
    stroke(#B74712); //brown color
    line(900, 500, 900, 0); //tangerine tree
    popStyle();
    ellipse(1000, 600, 1100, 700); //east bank
    cellophaneFlowers(200, 200, 50, true); //left cellophane flower
    cellophaneFlowers(400, 300, 50, true); //center cellophane flower
    fill(#B74712); 
    stroke(#B74712);
    strokeWeight(1);
    beginShape();
      vertex(100, 500);
      vertex(300, 500);
      vertex(275, 525);
      vertex(125, 525);
    endShape(); //a boat
    fill(#FFC800); //tangerine color
    stroke(#FFC800);
    ellipse(975, 30, 50, 45); //a tangerine

    //a "kaleidoscope eye"
    fill(255, 230, 0);
    stroke(255, 0, 0); 
    bezier(450, 50, 400+KALEIDOSCOPE, 90, 400+KALEIDOSCOPE, 110, 450, 150);
    bezier(450, 50, 500-KALEIDOSCOPE, 90, 500-KALEIDOSCOPE, 110, 450, 150);
    bezier(450, 50, 400+KALEIDOSCOPE, 90, 400+KALEIDOSCOPE, 110, 450, 100);
    bezier(450, 50, 500-KALEIDOSCOPE, 90, 500-KALEIDOSCOPE, 110, 450, 100);
    fill(230); //light gray color
    stroke(50); //dark grey color
    bezier(450, 0, 400+KALEIDOSCOPE, 90, 400+KALEIDOSCOPE, 110, 450, 50);
    bezier(450, 0, 500-KALEIDOSCOPE, 90, 500-KALEIDOSCOPE, 110, 450, 50);
    bezier(450, 150, 400+KALEIDOSCOPE, 90, 400+KALEIDOSCOPE, 110, 450, 250);
    bezier(450, 150, 500-KALEIDOSCOPE, 90, 500-KALEIDOSCOPE, 110, 450, 250);
    KALEIDOSCOPE++;
    if(KALEIDOSCOPE == 100){
      KALEIDOSCOPE = 0;
    }
    //note: I admit it looks nothing like a kaleidoscope, 
    //but it does look pretty psychedelic
  }
  if(keyPressed){
    WORLD_STATE = 0;
  }
}

//creates a cellophane flower of yellow and green
void cellophaneFlowers(int centerX, int centerY, int size, boolean direction){
  fill(0, 255, 0, 140); //green color
  stroke(0, 200, 0, 140);
  strokeWeight(5);
  if(direction == true){
    line(centerX, centerY, centerX-50, centerY+100); //plant stem
  } else {
    line(centerX, centerY, centerX+50, centerY+100); //plant stem
  }
  fill(255, 255, 0); //yellow color
  stroke(255, 255, 0);
  ellipse(centerX+size, centerY, size, size/2); //right petal
  ellipse(centerX-size, centerY, size, size/2); //left petal
  ellipse(centerX, centerY+size, size/2, size); //bottom petal
  ellipse(centerX, centerY-size, size/2, size); //top petal
  fill(0);
  stroke(0);
  ellipse(centerX, centerY, size, size); //flower center
}
