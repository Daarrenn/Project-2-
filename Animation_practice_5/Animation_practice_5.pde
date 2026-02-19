int x = 0;
int y = 0;
void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  circle(x, 150, y);
  x = x + 5;
  y = y + 1;
  if(x > 350) {
    x = -50;
    y = 0;
  }
}
