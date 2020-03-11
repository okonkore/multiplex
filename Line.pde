class Line {
  private Point p1, p2;
  private Point p3;
  public Line(Point p1, Point p2) {
    this.p1=p1;
    this.p2=p2;

    p3 = new Point(p1.getX() + p2.getY() - p1.getY(), p1.getY() - (p2.getX() - p1.getX()), p1.getZ(), p1.getCx(), p1.getCy());
    println(p3.getX());
    println(p3.getY());
    println(p3.getZ());
  }
  
  public Point getP1(){
    return this.p1;
  }

  public Point getP2(){
    return this.p2;
  }

  public void draw() {
    stroke(255);
    line(p1.getX(), p1.getY(), p2.getX(), p2.getY());
    noStroke();
  }
}
