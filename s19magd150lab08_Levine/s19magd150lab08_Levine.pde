//1984: BIG BROTHER IS WATCHING
/*This program creates a poster for a
  movie based on the book "1984" by 
  George Orwell. It features a moving 
  wall of text inscribed as 
  "BIGBROTHERISWATCHING", in reference 
  to a famous line in the book, along 
  with large, rose-tinted glasses meant 
  to represent "Big Brother" himself.
  A screenshot may be taken by pressing
  any key while the program is running.*/
import processing.pdf.*;
PFont bigBrother; //font of "BIG BROTHER IS WATCHING"
PFont littleBrother; //font of the text at the bottom
float movement = 510; //controls the text's x position
int movementTimer = 0; //controls when the text moves and stops
boolean screenshot = false; //allows for a screenshot to be taken

void setup(){
  size(500, 600);
  bigBrother = createFont("Courier New Bold", 44);
  littleBrother = createFont("Franklin Gothic Medium", 44);
  println("Press any key to take a screenshot and exit.");
}

void draw(){
  if(screenshot)
    beginRecord(PDF, "screenshot.pdf"); //screenshot saved as .pdf
  background(0);
  
  /*This code uses four .txt files in order
    to write out "1984".*/
  textAlign(CENTER, CENTER);
  fill(255); //color of the text
  textSize(30);
  textFont(littleBrother);
  String[] uno = loadStrings("1.txt");
  text(uno[0], 20, 550);
  String[] dos = loadStrings("9.txt");
  text(dos[0], 50, 560);
  String[] tres = loadStrings("8.txt");
  text(tres[0], 78, 550);
  String[] cuatro = loadStrings("4.txt");
  text(cuatro[0], 104, 560);
  textSize(25);
  text("George Orwell", 200, 560);
  text("Coming Soon", 400, 560);
  
  /*This code writes "BIG BROTHER IS WATCHING" continually
    across the screen, moving it along in a stop-and-go fashion.*/
  if(movementTimer >= 50 && movementTimer <= 100){
    //stops the words in their place
  } else {
    movement -= 2;
  }
  textSize(30);
  textFont(bigBrother);
  for(int i = 0; i < 500; i += 60){
    text("BIGBROTHERBIGBROTHERBIGBROTHERBIGBROTHERBIGBROTHER", movement, i);
    text("ISWATCHINGISWATCHINGISWATCHINGISWATCHINGISWATCHING", movement, i+30);
  }
  
  /*The all-seeing eyes of "Big Brother",
    covered by bright red round spectacles.*/
  fill(255, 0, 0, 150); //color of the glasses
  stroke(150, 0, 0); //color of the rims
  strokeWeight(10);
  line(0, 200, 20, 200); //left part of glasses frame
  line(230, 200, 270, 200);//center part of glasses frame
  line(480, 200, 500, 200); //right part of glasses frame
  ellipse(375, 200, 200, 200); //right lens
  ellipse(125, 200, 200, 200); //left lens
  
  /*This code increases movementTimer by 1, 
    checks if either movementTimer or movement
    need to be reset, and exits the program
    upon screenshot completion.*/
  movementTimer++;
  if(movementTimer >= 101)
    movementTimer = 0;
  if(movement <= -10)
    movement = 510;
  if(screenshot){
    endRecord();
    exit(); //the program exits afterward because it lags if kept running
  }
}

/*If a key is pressed, then the screenshot boolean
  will allow a screenshot to be taken.*/
void keyPressed(){
  screenshot = true;
}
