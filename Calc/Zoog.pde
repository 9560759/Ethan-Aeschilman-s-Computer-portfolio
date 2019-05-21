void setup(){
  //set the size of the window
  size (displayWidth, displayHeight);
  background(700, 200, 200);
}

void draw() {
  //background(700, 200, 200);
  drawZoog(mouseX, mouseY);
  drawZoog(mouseX+50, mouseY);
  drawZoog(mouseX+100, mouseY);
  drawZoog(mouseX+150, mouseY);
  drawZoog(mouseX+200, mouseY);
  drawZoog(mouseX+250, mouseY);
  drawZoog(mouseX+300, mouseY);
  drawZoog(mouseX+350, mouseY);
  drawZoog(mouseX+400, mouseY);
  drawZoog(mouseX+450, mouseY);
  drawZoog(mouseX+500, mouseY);
  drawZoog(mouseX+550, mouseY);
  drawZoog(mouseX+600, mouseY);
  drawZoog(mouseX+650, mouseY);
  drawZoog(mouseX+700, mouseY);
  drawZoog(mouseX+750, mouseY);
  drawZoog(mouseX+800, mouseY);
  drawZoog(mouseX+850, mouseY);
  drawZoog(mouseX+900, mouseY);
  drawZoog(mouseX+950, mouseY);
  drawZoog(mouseX+1000, mouseY);
  drawZoog(mouseX+1050, mouseY);
  drawZoog(mouseX+1100, mouseY);
  drawZoog(mouseX+1150, mouseY);
  drawZoog(mouseX+1200, mouseY);
  drawZoog(mouseX+1250, mouseY);
  drawZoog(mouseX+1300, mouseY);
  drawZoog(mouseX+1350, mouseY);
  drawZoog(mouseX+1400, mouseY);
  drawZoog(mouseX+1450, mouseY);
  drawZoog(mouseX+1500, mouseY);
  drawZoog(mouseX+1550, mouseY);
  drawZoog(mouseX+1600, mouseY);
  drawZoog(mouseX+1650, mouseY);
  drawZoog(mouseX+1700, mouseY);
  drawZoog(mouseX+1750, mouseY);
  drawZoog(mouseX+1800, mouseY);
  drawZoog(mouseX+1850, mouseY);
  drawZoog(mouseX+1900, mouseY);
  drawZoog(mouseX+1950, mouseY);
  drawZoog(mouseX+2000, mouseY);
  drawZoog(mouseX+2050, mouseY);
  drawZoog(mouseX+2100, mouseY);
  drawZoog(mouseX+2150, mouseY);
  drawZoog(mouseX+2200, mouseY);
  drawZoog(mouseX+2250, mouseY);
  drawZoog(mouseX+2300, mouseY);
  drawZoog(mouseX+2350, mouseY);
  drawZoog(mouseX+2400, mouseY);
  drawZoog(mouseX+2450, mouseY);
  drawZoog(mouseX+2500, mouseY);
  drawZoog(mouseX+2550, mouseY);
  drawZoog(mouseX+2600, mouseY);
  drawZoog(mouseX+2650, mouseY);
  drawZoog(mouseX+2700, mouseY);
  drawZoog(mouseX+2750, mouseY);
  drawZoog(mouseX+2800, mouseY);
  drawZoog(mouseX+2850, mouseY);
  drawZoog(mouseX+2900, mouseY);
  drawZoog(mouseX+3000, mouseY);
  drawZoog(mouseX+3050, mouseY);
  drawZoog(mouseX+3100, mouseY);
  drawZoog(mouseX+3150, mouseY);
  drawZoog(mouseX+3200, mouseY);
   drawZoog(mouseX, mouseY+50);
  //drawZoog(int(random(width)), int(random(height)));
}
 
  //draw a white background
  void drawZoog(int x, int y){
  
    
  //set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
    
  //draw zoog's body
  stroke(0);
  fill((random(250)), random(250), random(250));
  rect(x, y, 20, 100);
  
  //draw zoog's head
  stroke(0);
  fill((random(250)), random(250), random(250));
  ellipse(x, y-30, 60, 60);
  
  //draw zoog's eyes
   fill((random(250)), random(250), random(250));
  ellipse(x-15, y-30, 16, 32);
  ellipse(x+15, y-30, 16, 32);
  
  //draw zoog's legs
  stroke(0);
  line(x-10, y+40, x-20, y+80);
  line(x+10, y+40, x+20, y+80);
}
