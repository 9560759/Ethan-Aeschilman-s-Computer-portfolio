void setup () {
  size(500, 500);
  frameRate(1);
}


void draw() {
  background(200);
  strokeWeight(1);
  makehead();
  makemouth();
  makenose();
  makeEyes();
}

void mouseClicked() {
  saveFrame("line-######.png");
}

void makehead() { 
  fill(255, random(200, 230), random(22, 200));
  ellipse(width/2, height/2, random(width*0.55, width*0.75), random(height*0.8, height*0.99));
}

void makemouth() {
  fill(0);
  strokeWeight(random(3, 5));
  if (random(10)>0) {
    bezier(random(width*0.3, width*0.4), random(height*0.69, height*0.80), 
      random(width*0.10, width*0.4), random(height*0.90, height*0.99), 
      random(width*0.6, width*0.7), random(height*0.6, height*0.8), 
      random(width*0.60, width*0.75), random(height*0.7, height*0.8));
  } else if (random(10)>1) {
    line(random(width*0.33, random(width*0.44)), 
      random(height*0.69, random(height*0.8)), 
      random(width*0.6, random(width*0.69)), 
      random(height*0.69, random(height*0.8)));
  }
}

void makenose() {
  fill(255, random(0, 300), random(0, 200));
  if (random(10)>0) {
    triangle(width/2.2, (height/2), 
      width/1.8, height/2, 
      random(240, 260), random(270, 300));
  }
}
void makeEyes() {
    fill(0);
    ellipse(200, 200, random(10, 50), random(10, 50));
    ellipse(300, 200, random(10, 50), random(10, 50));
  }
