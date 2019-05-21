class Rock {
  int x, y; 
  int speed; 
  color c;
  int r; 
  int health;
  boolean isPU;

  Rock(int x, int y) {
    r = int(random(15, 55)); 
    this.x = x;
    this.y = y;
    speed = int(random(1, 3));    
    c = color(random(50), random(255), 111); 
    health = r;
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x+10, y+10, health, health);
  }
}
