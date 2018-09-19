// Global Variables

void setup() {
  size(500, 500);
  img = loadImage("Yes.jpg");
}

void draw() {
  ellipse(250, 250, 25, 25);
  image(img, 0, 0);
}
