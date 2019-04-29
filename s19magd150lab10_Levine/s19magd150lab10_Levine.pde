/*Lone Billboard on a Building in Moonlight*/
/*This program displays a billboard atop a building,
  with the moon in the background. The billboard
  has a texture, which is an advertisement. The
  camera rotates back and forth, showcasing the
  3D shapes and the lighting effects.*/
  
PImage billboardSign; //billboard image used to create a texture
PImage buildingSide; //building side image used to create a texture
int rotation = 0; //controls the camera's rotation
boolean direction = true; //controls which direction the camera is moving

void setup(){
  size(1000, 600, P3D);
  billboardSign = loadImage("billboardTexture.png");
  buildingSide = loadImage("building_side.png");
}

void draw(){
  background(0);
  
  /*This code creates three different lighting effects,
    creates a camera, and controls the camera's position.*/
  directionalLight(255, 255, 255, 0, -1, -1); //light going bottom-up
  spotLight(255, 255, 255, 400, 400, 100, 1000, 0, 66, PI, 1); //light directly at billboard face
  spotLight(255, 255, 255, 200, 400, 100, 1000, 0, 66, PI, 1); //light directly at billboard left side
  if(direction){
    rotation+=2;
    if(rotation%300 == 0 && rotation != 0){
      direction = false; //move to the left
    }
  } else {
    rotation-=2;
    if(rotation%-300 == 0 && rotation != 0){
      direction = true; //move to the right
    }
  }
  camera(width/2.0+rotation, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), 
         width/2.0, height/2.0, 0, 0, 1, 0);
         
  fill(255); //color of moon and billboard
  noStroke();
  
  /*This code creates the moon, which is just a sphere.*/
  pushMatrix();
  translate(-100, -100, -500);
  sphere(100);
  popMatrix();
  
  /*This code creates the billboard, which is just a rectangle.*/
  pushMatrix();
  translate(width/2, height/2, 40);
  scale(100);
  box(1.5, 1, .5); //billboard
  popMatrix();
  
  /*This code creates a thin rectangle upon which the "billboardSign"
    texture is displayed. It is placed in front of the billboard.*/
  pushMatrix();
  beginShape();
  texture(billboardSign);
  vertex(425, 250, 66, 0, 0); //top left
  vertex(575, 250, 66, 500, 0); //top right
  vertex(575, 350, 66, 500, 322); //bottom right
  vertex(425, 350, 66, 0, 322); //bottom left
  endShape();
  popMatrix();
  
  fill(100); //color of the billboard stilts
  
  /*This code creates stilts for the billboard to sit upon.*/
  pushMatrix();
  translate(560, 360, 40);
  scale(10);
  box(1, 2, 1); //right stilt
  popMatrix();
  pushMatrix();
  translate(440, 350, 40);
  scale(10);
  box(1, 2, 1); //left stilt
  popMatrix();
  
  /*This code creates the building upon which the billboard is
    located, with the "buildingSide" texture.*/
  //building face
  beginShape();
  texture(buildingSide);
  vertex(275, 360, 150, 0, 0); //top left
  vertex(725, 360, 150, 450, 0); //top right
  vertex(725, 840, 150, 450, 480); //bottom right
  vertex(275, 840, 150, 0, 480); //bottom left
  endShape(); 
  //building left side
  beginShape();
  texture(buildingSide);
  vertex(275, 360, 150, 0, 0); //top left
  vertex(275, 360, -300, 450, 0); //top right
  vertex(275, 840, -300, 450, 480); //bottom right
  vertex(275, 840, 150, 0, 480); //bottom left
  endShape();
  //building right side
  beginShape();
  texture(buildingSide);
  vertex(725, 360, 150, 0, 0); //top left
  vertex(725, 360, -300, 450, 0); //top right
  vertex(725, 840, -300, 450, 480); //bottom right
  vertex(725, 840, 150, 0, 480); //bottom left
  endShape();
  //building top side
  beginShape();
  vertex(275, 360, 150, 0, 0); //top left
  vertex(725, 360, 150, 450, 0); //top right
  vertex(725, 360, -300, 450, 480); //bottom right
  vertex(275, 360, -300, 0, 480); //bottom left
  endShape();
}
