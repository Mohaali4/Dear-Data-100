
String[] types = {
  "Postbox", "Letterbox", "Letterbox",
  "Postbox", "Letterbox"
};

String[] access = {
  "Easy", "Moderate", "Easy",
  "Hard", "Hard"
};

String[] heights = {
  "Comfortable", "Low", "High",
  "Low", "Comfortable"
};

String[] locations = {
  "Front door", "Porch", "On door",
  "On floor", "On door"
};

String[] designs = {
  "Modern", "Modern", "Plain",
  "Plain", "Unusual"
};

void setup() {
  size(800, 400);
  noLoop();
}

void draw() {
  background(255);
  textAlign(CENTER);

  fill(0);
  textSize(24);
  text("Letterbox Data", 400, 40);

  for (int i = 0; i < 5; i++) {
    int x = 100 + i * 150;
    int y = 150;

    // Type = Colour
    if (types[i].equals("Postbox")) {
      fill(0, 150, 255);
    } else {
      fill(255, 120, 150);
    }

    // Height = Size
    int s = 50;
    if (heights[i].equals("Low")) {
      s = 30;
    }
    if (heights[i].equals("High")) {
      s = 70;
    }

    // Access = Shape
    if (access[i].equals("Easy")) {
      ellipse(x, y, s, s);
    } else if (access[i].equals("Moderate")) {
      rectMode(CENTER);
      rect(x, y, s, s);
    } else {
      triangle(x, y-s/2, x-s/2, y+s/2,
               x+s/2, y+s/2);
    }

    // Location and Design = Text
    fill(0);
    textSize(14);
    text("Box " + (i + 1), x, 220);
    text(locations[i], x, 245);
    text(designs[i], x, 270);
  }

  textSize(14);
  text("Blue = Postbox | Pink = Letterbox", 400, 325);
  text("Circle = Easy | Square = Moderate | Triangle = Hard", 400, 350);
  text("Small = Low | Medium = Comfortable | Large = High", 400, 375);
}
