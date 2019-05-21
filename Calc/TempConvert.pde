void setup(){
  size(300,300);
  
}

void draw(){
  background(255);
  fill(0);
  
  for(int i=0; i<width; i+=20){
    line(i, 50, i, 55);
    textSize(8);
    text(i, i-5, 50);
  }
  rect(0, 60, mouseX, 20);
  text("Cel:" + mouseX + "Far:" + celToFar(mouseX), 10, 100);
  text("Far:" + mouseX + "Cel:" + celToFar(mouseX), 10, 120);
  println(celToFar(mouseX));
  println(farToCel(mouseY));
  }

float celToFar(int cel){
  return cel*1.8+32;
  
}
float farToCel(float far){
  return(far-32)*5/9;
}
