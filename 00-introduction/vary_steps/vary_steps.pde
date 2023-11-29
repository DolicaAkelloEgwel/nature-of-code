class Walker {
  float x;
  float y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void display() {
    stroke(0);
  }
  float montecarlo() {
    while (true) {
      float r1 = random(-1,1);
      float prob = r1 * r1;
      float r2 = random(1);

      if (r2 < prob) {
        return r1;
      }
    }
  }
  void step() {
    float stepsize = 5;
    float stepx = montecarlo() * stepsize;
    float stepy = montecarlo() * stepsize;
    
    line(x,y,x+stepx,y+stepy);
    x += stepx;
    y += stepy;
  }
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
