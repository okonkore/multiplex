int x = 0;
ArrayList<Point> pointList = new ArrayList<Point>();

void settings() {
  fullScreen();
}

void setup() {
  frameRate(25);
  background(0);
  noStroke();
  fill(102);
  pointList.add(new Point(100, 100, 2, 400, 300));
  pointList.add(new Point(100, 100, 3, 400, 300));
  pointList.add(new Point(100, 100, 4, 400, 300));
  pointList.add(new Point(100, 100, 5, 400, 300));
  pointList.add(new Point(100, 100, 6, 400, 300));
  pointList.add(new Point(100, 100, 7, 400, 300));
  pointList.add(new Point(100, 100, 8, 400, 300));
  pointList.add(new Point(500, 100, 2, 400, 300));
  pointList.add(new Point(500, 100, 3, 400, 300));
  pointList.add(new Point(500, 100, 4, 400, 300));
  pointList.add(new Point(500, 100, 5, 400, 300));
  pointList.add(new Point(500, 100, 6, 400, 300));
  pointList.add(new Point(500, 100, 7, 400, 300));
  pointList.add(new Point(500, 100, 8, 400, 300));
}

void draw() {
  fill(255);
   
  for(int i = 0; i < pointList.size(); i++){
    rect(pointList.get(i).getDisplayX(), pointList.get(i).getDisplayY(), 2, 2);  
  }
}
