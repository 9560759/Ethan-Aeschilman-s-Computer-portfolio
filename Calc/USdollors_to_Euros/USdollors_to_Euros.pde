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
  text("US Dollors:" + mouseX + uSDollorsToEuros(mouseX), 10, 100);
  text("Euros:" + mouseX + eurosToUSDollors(mouseX), 10, 140);
  println(uSDollorsToEuros(mouseX));
  println(eurosToUSDollors(mouseY));
  }

float uSDollorsToEuros(int USDollors){
  return USDollors*1.14942528736;
  
}
float eurosToUSDollors(float Euros){
  return(Euros*0.87);
}
