float x;
int y;
float big = 1;




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
  rect(0, 350, 900, 550);
  ice(700, 510, 1);
}













void ice (float x, float y, float big) {
  
  noStroke();
  pushMatrix();
  translate(x, y);
  scale(big);
//shadow
  fill(152, 180, 198);
  ellipse(-3, 12, 360, 260);
//ice
  fill(240, 249, 255);
  ellipse(0, 0, 350, 250);
  popMatrix();

//cloud
pushMatrix();
translate(200, 200);
fill(255);
ellipse(0, 0, 100, 100);
ellipse(50, 20, 60, 60);
ellipse(-65, 14, 72, 72);
ellipse(-100, 30, 40, 40);
rect(-100, 30, 150, 20);
popMatrix();




//big iceberg
pushMatrix();
translate(140, 650);
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




//polar bear
pushMatrix();
translate(450, 200);
stroke(0);
fill(255);

ellipse(0, 0, 220, 150);
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
popMatrix();

}
