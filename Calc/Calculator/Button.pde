class Button {
  int x, y, w, h, v;
  String op;
  color c;
  boolean hov, as0perator;


  Button(int x, int y, int w, int h, int v, color c) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.v=v;
    this.c=c;
    op = "";
    hov = false;
  }

  Button as0perator(String op) {
    this.op=op;
    as0perator=true;
    hov = false;
    return this;
  }


  void display() {
    if (as0perator) {
      stroke(33, 120, 255);
      rectMode(CENTER);
      if (hov) {
        fill(135, 180, 255);
      } else {
        fill(155, 194, 255);
      }
      rect(x, y, w, h, 2);
      fill(0);
      textAlign(CENTER);
      textSize(12);
      text(op, x, y);
    } else {
      rectMode(CENTER);
      if (hov) {
        fill(255);
      } else {
        fill (c);
      }
      rect(x, y, w, h, 2);
      fill(0);
      textAlign(CENTER, CENTER);
      textSize(12);
      text(v, x, y);
      stroke(0);
    }
  }


  void hover() {
    hov = mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }
}
