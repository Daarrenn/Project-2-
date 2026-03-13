float x;
int y;
float bigice = 1;
float bigbear = 1;
float bigcloud = 1;
float bergx = 1;
float bergy = 1;
float waterlevel;

void setup() {
size(900, 900);
background(154, 220, 250);
fill(90, 138, 190);
rect(0, 350, 900, 550);
noStroke();
}

void draw() {
  background(154, 220, 250);
  fill(90, 138, 190);
  rect(0, 350-waterlevel, 900, 800);
  waterlevel = waterlevel + 0.03;
  ice(700, 510, 1);
  bear(680, 470, 1);
  ice(750, 760, 0.7);
  ice(500, 820, 0.5);
  cloud(100, 100, 1);
  cloud(300, 200, 1.3);
  cloud(400, 75, 0.8);
  cloud(700, 150, 1.6);
  cloud(900, 85, 0.6);
  iceberg(bergx, bergy);
  bergx = bergx + 0.15;
  bergy = bergy + 0.2;
}

void iceberg(float bergx, float bergy){
pushMatrix();
translate(140 - bergx, 650 + bergy);
//leftmost shadow
rect(-200, -100, 150, 500);
//light shadow
fill(190, 212, 227);
quad(10, -102, 15, 300, -130, 300, -90, -70);
//lighter shadow
fill(162, 195, 216);
quad(61, -101, 1, -101, 10, 300, 61, 300);
//dark shadow
fill(127, 164, 188);
triangle(71, -101, 41, -101, 71, 200);
//white bottom
fill(240);
quad(180, -160, 70, -100, 20, 400, 220, 400);  
//top
fill(140, 186, 216);
quad(181, -160, 71, -100, -200, -20, -200, -120); 
quad(181, -160, 120, -179, 0, -163, -120, -120);
popMatrix();

}

void ice (float x, float y, float bigice) {
  
  noStroke();
  pushMatrix();
  translate(x, y);
  scale(bigice);
//shadow
  fill(152, 180, 198);
  ellipse(-3, 12, 360, 260);
//ice
  fill(240, 249, 255);
  ellipse(0, 0, 350, 250);
  popMatrix();
}

void bear(float x, float y, float bigbear) {
  pushMatrix();
translate(x, y);
scale(bigbear);
stroke(0);
fill(255);

//leg front behind
fill(255);
rect(60, 16, 40, 75, 90);
ellipse(86, 81, 35, 20);
noStroke();
rect(61, 17, 38, 73, 90);
stroke(0);
//leg behind behind
fill(255);
rect(-80, 16, 40, 75, 90);
ellipse(-54, 81, 35, 20);
noStroke();
rect(-79, 17, 38, 73, 90);
stroke(0);
//body
ellipse(7, 0, 200, 125);
//ear behind
ellipse(60, -90, 30, 30);
//head
ellipse(90, -60, 85, 85);
//ear in front
ellipse(120, -90, 30, 30);
noStroke();
ellipse(119, -88, 30, 30);
//nose
stroke(0);
fill(255);
ellipse(125, -50, 23, 25);
fill(0);
ellipse(128, -48, 15, 10);
//eyes
circle(130, -67, 7);
circle(100, -67, 7);
//leg front front
fill(255);
rect(50, 26, 40, 75, 90);
ellipse(76, 91, 35, 20);
noStroke();
rect(51, 27, 38, 73, 90);
stroke(0);
//leg behind front
fill(255);
rect(-90, 26, 40, 75, 90);
ellipse(-64, 91, 35, 20);
noStroke();
rect(-89, 27, 38, 73, 90);

popMatrix();
}

void cloud(float x, float y, float bigcloud) {
pushMatrix();
translate(x, y);
scale(bigcloud);
fill(255);
ellipse(0, 0, 100, 100);
ellipse(50, 20, 60, 60);
ellipse(-65, 14, 72, 72);
ellipse(-100, 30, 40, 40);
rect(-100, 30, 150, 20);
popMatrix();
}
