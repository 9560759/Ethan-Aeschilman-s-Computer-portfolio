int xspeed, yspeed;
int xpos, ypos, wdth, ht;
void setup(){
  size(displayWidth, displayHeight);
  background(0);
  xspeed = 3;
  yspeed = 10;
  wdth = 1000;
  ht = 1000;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60);
}
void draw(){
  background(0);
  fill(random(255), random(255), random(255));
  ellipse(xpos, ypos, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width-wdth/2 || xpos <= wdth/2){
    xspeed *= -1;
  }
  if (ypos >=height-ht/2 || ypos <= ht/2){
    yspeed = yspeed * -1;
  }
}
