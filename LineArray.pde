class LineArray {
  private float x, y;
  private ArrayList<Line> list;
  public LineArray(float x, float y) {
    list = new ArrayList<Line>();
    this.x = x;
    this.y = y;
  }
  public void update() {
    float x;
    float y;
    float t;
    if (list.size() == 0) {
      x = this.x;
      y = this.y;
      t = random(0, 2*PI);
    } else {
      Line last = list.get(list.size() - 1);
      x = last.getP2().getX();
      y = last.getP2().getY();
      t = atan2(last.getP2().getX() - last.getP1().getX(), last.getP2().getY() - last.getP1().getY());
      t = t+random(-1, 1);
    }
    Line newLine= new Line(new Point(x, y, 1, 1, 1), new Point(x+ cos(t), y+ sin(t), 1, 1, 1));
    this.list.add(newLine);
  }
}
