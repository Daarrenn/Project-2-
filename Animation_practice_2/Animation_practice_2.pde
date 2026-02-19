int x = 300;
void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  circle(x, 150, 100);
  x = x - 1;
  if(x < -50) {
    x = 350;
  }
}
