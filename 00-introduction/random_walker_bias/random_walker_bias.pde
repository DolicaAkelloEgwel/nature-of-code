class Walker {
  float x;
  float y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float stepx = random(-1, 0);
    float stepy = random(-1, 0);
    
    float xbias = random(1);
    float ybias = random(1);
    
    if (xbias >= 0.4) {
      stepx = abs(stepx);
    }
    if (ybias >= 0.4) {
      stepy = abs(stepy);
    }

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
