class Point {
  private float x;
  private float y;
  private float z;
  private float cx;
  private float cy;

  public Point(float x, float y, float z, float cx, float cy) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.cx = cx;
    this.cy = cy;
  }

  public void setX(float x) {
    this.x = x;
  }

  public void setY(float y) {
    this.y = y;
  }

  public void setZ(float z) {
    this.z = z;
  }
  
  public float getDisplayX(){
    return this.cx + (this.x - this.cx) / this.z;
  }

  public float getDisplayY(){
    return this.cy + (this.y - this.cy) / this.z;
  }

  public float getZ() {
    return this.z;
  }
}
