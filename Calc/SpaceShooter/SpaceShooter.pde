SpaceShip ship;
ArrayList<Laser> lasers;
ArrayList<Rock> rocks;
Timer timer;
int rockRate = 1000;
boolean play = false;
int score = 0;

void setup() {
  size(520, 600);
  background(0);
  ship = new SpaceShip();
  lasers = new ArrayList<Laser>();
  timer = new Timer(rockRate);
  timer.start();
  rocks = new ArrayList<Rock>();
}
void draw() {
  background(0);
  noCursor();

  if (timer.isFinished()) {
    rocks.add(new Rock(int(random(width)), -20));
    timer.start();
  }
  for (int i=0; i<rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).display();
    if (rocks.get(i).reachedBottom()) {
      rocks.remove(i);
    }
    for (int j = 0; j<lasers.size(); j++) {
      if (dist(lasers.get(j).x, lasers.get(j).y, rocks.get(i).x, rocks.get(i).y)<rocks.get(i).r) {
        score += 100;
        lasers.remove(j);
        if (rocks.get(i).health < 1) {
          rocks.remove(i);
        } else {
          rocks.get(i).health -=10;
        }
      }
    }
  }

  for (int i=0; i<lasers.size(); i++) {
    lasers.get(i).fire();
    lasers.get(i).display();
    if (lasers.get(i).reachTop()) {
      lasers.remove(i);
    }
  }
  ship.display(mouseX, mouseY, 50);
  updateDisplay();
}

void updateDisplay() {
  fill(127,127);
  rect(0, 0, width, 80);
  fill(255);
  text("Score: " + score, 10, 30);
  //text("Health: " + ship.Health, 10, 30);
}


void mouseReleased() {
  lasers.add(new Laser(mouseX+10, mouseY, color(0, 0, 0)));
  lasers.add(new Laser(mouseX, mouseY, color(0, 255, 0)));
  lasers.add(new Laser(mouseX+20, mouseY, color(0, 0, 255)));
  lasers.add(new Laser(mouseX+30, mouseY, color(255, 255, 0)));
  lasers.add(new Laser(mouseX+40, mouseY, color(255, 255, 255)));
}
