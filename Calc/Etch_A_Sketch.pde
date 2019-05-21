int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
}

void draw() {
  strokeWeight(2);
  //thicc
  fill(255);
  drawName();
  noLoop();
}

// Algorithm for your first name
void drawName() {
  moveRight(1);
  moveDown(5);
  moveRight(5);
  moveDown(10);
  moveRight(5);
  moveLeft(5);
  moveUp(5);
  moveRight(5);
  moveLeft(5);
  moveUp(5);
  moveRight(5);
  moveRight(4);
  moveDown(10);
  moveUp(7);
  moveLeft(3);
  moveRight(6);
  moveLeft(3);
  moveUp(3);
  moveRight(4);
  moveDown(10);
  moveUp(5);
  moveRight(3);
  moveDown(5);
  moveUp(5);
  moveLeft(3);
  moveUp(5);
  moveRight(4);
  moveDown(10);
  moveUp(7);
  moveRight(4);
  moveUp(3);
  moveLeft(4);
  moveRight(4);
  moveDown(10);
  moveUp(10);
  moveRight(3);
  moveDown(5);
  moveRight(1);
  moveDown(5);
  moveUp(5);
  moveRight(5);
  moveDown(5);
 
  
  
  
}

// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}
void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}
void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x=x-(10*rep);
}
void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y=y-(10*rep);
}

//void keyPressed() {
 // if (key == CODED) {
    //if (keyCode == RIGHT) {
     // moveRight(1);
    //} else if (keyCode == DOWN) {
      //moveDown(1);
    //} else if (keyCode == UP) {
   //   moveUp(1);
   // } else if (keyCode == LEFT) {
     // moveLeft(1);
   // }
  //}
//}
        
