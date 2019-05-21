void setup() {
  size(1000, 1000);
  background(127);
}

void draw() {
  background(127);
  int i = 0;
  while ( i<width) {
    line(0, i, width, i);
    line(i, 0, i, height);
    fill(255);
    text(i, i, 12);
    text(i, 5, i);
    i+=+100;

    //for (int i=0; i<width; i+=200) {
    //line(0, i, width, i);
    //line(i, 0, i, height);
    //text(i, i, 12);
    //text(i, 5, i)
    //}
  }
  noLoop();
}
