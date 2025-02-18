int opacity = 60;

public void setup() {
  background(255);
  size(360, 360);
  noLoop();
  stroke(255);
}

public void draw() {
  myFractal(180, 180, 400, 200, 250);
}

public void myFractal(int x, int y, int size, int len, int red) {
  if (size < 40) {
    fill(red, 60, 60, opacity);
    ellipse(x, y, size, size);
  } else {
    stroke(red, 60, 90);
    fill(red, 60, 90, opacity);
    ellipse(x-40, y, size, size);
    ellipse(x+40, y, size, size);
    ellipse(x, y+35, size, size);
    ellipse(x, y-35, size, size);
    myFractal(x,y, size-150, len - 20, red-10);
  }
}
