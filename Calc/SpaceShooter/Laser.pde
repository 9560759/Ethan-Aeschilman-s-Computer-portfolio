class Laser {
  int x, y, w, h;
  float speed;
  color c;
  Laser(int x, int y, color c) {
    this.x =x;
    this.y = y;
    this.c = c;
    speed = 10;
    w = 2;
    h = 10;
  }

  void fire() {
    y -= speed;
  }

  boolean reachTop() {
    if (y<0 - 50) {
      return true;
    } else {
      return false;
    }
  }
  void display() {
    rectMode(CENTER);
    fill(255, 0, 0);
    rect(x, y, w, h);
  }
}

 
