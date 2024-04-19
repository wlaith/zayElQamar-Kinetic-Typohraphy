PImage img; 

void setup() { 
  size(700, 700);
  img = loadImage("zayElQamar-02.png");
  img.resize(700, 700);
}

void draw() {
  background(0);
  fill(255);
  noStroke();
  float tiles = mouseX/5;
  float tileSize = width/tiles;
  translate(tileSize/2,tileSize/2);
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float size = map(brightness(c),0,255,tileSize,0);    
      ellipse(x*tileSize, y*tileSize, size, size);
    }
  }
}
