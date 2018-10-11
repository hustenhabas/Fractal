class Galho {

  Galho(float x, float y, float angle, float size, int n) {
    if  (size > 5) {
      pushMatrix();
      PVector p = PVector.fromAngle(angle);
      p.setMag(size);
      stroke(random(0, 255), random(0, 255), random(0, 255));
      translate(x, y);
      if (n == 1) {
        p.rotate(radians(45));
      } else if (n == 2) {
        p.rotate(radians(-45));
      }
      line(0, 0, p.x, p.y);
      Galho a = new Galho(p.x, p.y, p.heading(), size* 2/3, 1);
      Galho b = new Galho(p.x, p.y, p.heading(), size*2/3, 2);
      popMatrix();
    }
  }
}
