class Walker {
  float x;
  float y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void display() {
    stroke(0);
    // point(x,y);
  }
  void step() {
    float stepsize = 10;
    float stepx = random(-stepsize, stepsize);
    float stepy = random(-stepsize, stepsize);
    
    // if (random(1) >= 0.5) {
    //   stepx = mouse_direction_step(mouseX, x, stepx);
    // }
    // if (random(1) >= 0.5) {
    //   stepy = mouse_direction_step(mouseY, y, stepy);
    // }

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
