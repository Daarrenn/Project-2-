int x = 1;
void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  circle(150, 150, x);
  x = x + 1;
  if(x > 450) {
    x = 1;
  }
}
