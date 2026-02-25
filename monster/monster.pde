int x;


void setup() {
  size(600, 600);
}

void draw() {
  monster(x, 0);

  x = x + 1;
  background(0, 0, 255);
}

void monster(int x, int y){
pushMatrix();
translate(x, 300);
noStroke();

//feet left
fill(99, 206, 6);
ellipse(-15, 205, 70, 40);

//feet right
ellipse(65, 205, 70, 40);

//leg left
stroke(155, 105, 5);
strokeWeight(20);
line(-30, 100, -30, 190);

//leg right
line(50, 100, 50, 190);


//body
noStroke();
fill(99, 206, 6);
rect(-80, -130, 180, 250, 360);

//eyes
fill(255);
ellipse(-20, -40, 60, 60);
ellipse(70, -40, 60, 60);
fill(0);
ellipse(-30, -45, 20, 20);
ellipse(80, -35, 20, 20);

//mouth
fill(250, 58, 58);
ellipse(30, 50, 110, 60);
popMatrix();
}
