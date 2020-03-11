int x = 0;
ArrayList<Point> pointList = new ArrayList<Point>();
Triangle triangle;
Line line;
void settings() {
  fullScreen(P2D);
}

void setup() {
  frameRate(25);
  background(0);
  float cX = width / 2;
  float cY = height / 2;
  triangle = new Triangle(new Point(100, 100, 2, cX, cY), new Point(200, 100, 3, cX, cY), new Point(200, 200, 4, cX, cY));
  line = new Line(new Point(300, 300, 2, cX, cY), new Point(400, 500, 2, cX, cY));
}

int tickCount;
void draw() {
  tickCount++;
  if (tickCount % 12 > 0) {
    // return;
  }
  fill(0);
  rect(0, 0, width, height);

  float z = 2+sin(radians(((float)tickCount)));
  Point p1 = triangle.getP1();
  p1.setZ(z);
  Point p2 = triangle.getP2();
  p2.setZ(z);
  Point p3 = triangle.getP3();
  p3.setZ(z);
  triangle.draw();
  line.draw();
}
