int x = 0;
void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  circle(x, x, 100);
  x = x + 1;
  if(x > 350) {
    x = -50;
  }
}
