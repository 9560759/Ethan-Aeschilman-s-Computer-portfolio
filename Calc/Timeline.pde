void setup() {
  size(900, 400);
  background(0, 200, 200);
}
void draw() {
  background(0, 200, 200);
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text("History of Computers", width/2, 50);
  textSize(18);
  text("By: Ethan Aeschilman | 2018", width/2, 80);
  line(800, 250, 100, 250);


  histEvent("Turing machine - 1936", "mathmatical model of a computer that manipulates symbols on a strip of tape", 120, 220, true);
  histEvent("Eniac - 1946", "It was a computer that was abloe to solve a large class of numerical problems", 260, 280, false);
  histEvent(" Manchester Baby- 1948", "Was the first stored program computer ", 340, 220, true);
  histEvent("Pilot ACE - 1950", "It is a computer with 800 vacuum tube", 420, 280, false);
  histEvent("ATLAS - 1962", "This machine was the most powerful computer at the time of its release", 500, 220, true);
  histEvent("ARPANET - 1969", "It is the orginal basis for what forms the internet now", 600, 280, false);
  histEvent("Commodore PET - 1977", "It comes with 4 kb or 8 kb of ram which is a lot for the time", 700, 220, true);
  histEvent("Ti-99 - 1979", "This system usedc audio cassettes to store information", 750, 280, false);
}

void histEvent(String name, String descr, int x, int y, boolean top) {
  textSize(12);
  text(name, x, y);
  if (mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+30) {
    text(descr, x, y+20);
  }
  if (top) {
    line(x, y, x+30, y+30);
  } else {
    line(x, y-10, x+30, y-30);
  }
}
