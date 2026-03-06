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
  ellipse(-7, 10, 360, 260);
//ice
  fill(245);
  ellipse(0, 0, 350, 250);
  popMatrix();

pushMatrix();
translate(140, 650);

fill(162, 195, 216);
quad(61, -101, 1, -101, 10, 300, 61, 300);
fill(127, 164, 188);
triangle(71, -101, 41, -101, 71, 200);
fill(240);
quad(180, -160, 70, -100, 20, 400, 220, 400);  
fill(140, 186, 216);
quad(181, -160, 71, -100, -200, -20, -200, -120); 
quad(181, -160, 120, -179, 0, -163, -120, -120);
popMatrix();

}
