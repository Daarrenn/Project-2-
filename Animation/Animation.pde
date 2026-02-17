int x = 0;
void setup() {
  size(300, 300);
  fill(100);
}

void draw() {
  background (0, 255, 0);
  circle (x, 100, 50);
  x = x + 1;
  if (x > 275) {
    x = -25;
  }
}
