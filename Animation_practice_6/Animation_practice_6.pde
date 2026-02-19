int x = 0;
int y = 300;
void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  circle(100, x, 100);
  circle(200, y, 100);
  x = x + 1;
  y = y - 1;
  if(x > 350) {
    x = -50;
    y = 350;
  }
}
