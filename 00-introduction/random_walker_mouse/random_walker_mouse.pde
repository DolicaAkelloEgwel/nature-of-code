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
  float mouse_direction_step(int mouse_pos, float point, float step_value) {
    if (mouse_pos > point) {
      return abs(step_value);
    }
    if ((mouse_pos < point) && (step_value > 0)) {
      return step_value *= -1;
    }
    return step_value;
  }
  void step() {
    float stepx = random(-1, 1);
    float stepy = random(-1, 1);
    
    if (random(1) >= 0.5) {
      stepx = mouse_direction_step(mouseX, x, stepx);
    }
    if (random(1) >= 0.5) {
      stepy = mouse_direction_step(mouseY, y, stepy);
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
