class SpaceShip {
  int x, y, r;
  color c1, c2, c3;
  float speed;

  SpaceShip() {
    x=0;
    y=0;
   
  }


  void display(int x, int y, int r) {
     this.r = r;
    this.x = x;
    this.y = x;
    rectMode(CORNER);
    stroke(0);
    strokeWeight(0);
    fill(127);
    rect(x-20, y, 20, 50);
    rect(x+20, y, 20, 50);
    rect(x-20, y+50, 20, 10);
    rect(x-20, y+60, 10, 10);
    rect(x+20, y+50, 20, 10);
    rect(x+30, y+60, 10, 10);
    fill(255, 0, 0);
    fill(127);
    ellipse(x+10, y+20, r, 80);
    fill(0);
    ellipse(x+10, y+20, 30, 40);
    fill(0, 255, 0);
    rect(x, y+10, 20, 20);
  }
}
