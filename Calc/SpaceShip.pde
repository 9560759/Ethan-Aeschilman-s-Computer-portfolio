//spaceship App
//By: Ethan Aeschilman
//sept. 24, 2018
void setup(){
  size(1000,1000);
  
}
void draw(){
  background(0);
  drawSpaceship(mouseX, mouseY);
}  

void drawSpaceship(int x, int y) {
  stroke(0);
  strokeWeight(0);
  fill(127);
  rect(x-20, y, 20, 50);
  rect(x+20, y, 20, 50);
  rect(x-20, y+50, 20, 10);
  rect(x-20, y+60, 10, 10);
  rect(x+20, y+50, 20, 10);
  rect(x+30, y+60, 10, 10);
  
}
