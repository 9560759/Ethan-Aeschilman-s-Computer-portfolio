//global variables
int xspeed, yspeed, xpos, ypos, wdth, ht;

//runs one time
void setup(){
  //size(displayWidth, displayHeight);
  size(displayHeight, displayWidth);
  background(0);
  xspeed = 15;
  yspeed = 15;
  wdth = 20;
  ht = 20;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60);
}
void draw(){
  background(0);
  //runs on a loop
  fill(random(255), random(255), random(255));
  ellipse(xpos, ypos, wdth, ht);
  ellipse(ypos+15, xpos+15, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;   //<>//
  if (xpos >= width-wdth/2 || xpos <= wdth/2){
    xspeed *= -1;
  }
  if (ypos >=height-ht/2 || ypos <= ht/2){
    yspeed = yspeed * -1;
  }
}
