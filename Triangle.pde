class Triangle {
  Point p1, p2, p3;
  public Triangle(Point p1, Point p2, Point p3) {
    this.p1=p1;
    this.p2=p2;
    this.p3=p3;
  }
  public Point getP1() {
    return this.p1;
  }
  public Point getP2() {
    return this.p2;
  }
  public Point getP3() {
    return this.p3;
  }
  public void draw() {
    noStroke();

    beginShape(TRIANGLES);
    fill(255 - p1.getZ()*255 / 10);
    vertex(p1.getDisplayX(), p1.getDisplayY());
    fill(255 - p1.getZ()*255 / 10);
    vertex(p2.getDisplayX(), p2.getDisplayY());
    fill(255 - p1.getZ()*255 / 10);
    vertex(p3.getDisplayX(), p3.getDisplayY());
    endShape();
  }
}
