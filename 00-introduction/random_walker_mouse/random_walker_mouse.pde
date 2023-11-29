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
    float stepx = random(-1, 1);
    float stepy = random(-1, 1);
    
    if (random(1) >= 0.5) {
      if (mouseX > x) {
        stepx = abs(stepx);
      }
      if ((mouseX < x) && (stepx > 0)) {
        stepx *= -1;
      }
    }
    if (random(1) >= 0.5) {
      if (mouseY > y) {
        stepy = abs(stepy);
      }
      if ((mouseY < y) && (stepy > 0)) {
        stepy *= -1;
      }
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
