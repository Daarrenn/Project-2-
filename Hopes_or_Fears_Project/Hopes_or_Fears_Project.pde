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
  fill(190);
  ellipse(0, 20, 350, 250);
//ice
  fill(245);
  ellipse(0, 0, 350, 250);
  popMatrix();

pushMatrix();
translate(140, 650);
strokeWeight(2);
stroke(98, 179, 232);
quad(180, -160, 70, -80, 40, 400, 220, 400);  
popMatrix();

}
