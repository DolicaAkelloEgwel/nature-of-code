class Walker {
  int x;
  int y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    int choice = int(random(4));
    
    switch(choice) {
      case 0:
        x++;
      case 1:
        x--;
      case 2:
        y++;
      case 3:
        y--;
    }
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
