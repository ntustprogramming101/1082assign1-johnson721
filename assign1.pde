PImage bg, soil, life, robot, groundhog, soldier;
float sizexr = 640, sizeya = 0, soldierx = -76, soldiery = 240, robotx = 400, roboty = 160, robotrx = robotx + 60, robotry = roboty + 37;
void setup() {
  size(640, 480,P2D);
  frameRate(120);
  bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  life = loadImage("img/life.png");
  robot = loadImage("img/robot.png");
  groundhog = loadImage("img/groundhog.png");
  soldier = loadImage("img/soldier.png");
}
void draw() {
  colorMode(RGB);
  background(bg);
  noStroke();
  image(soil, 0, 160);
  image(life, 10, 10);
  image(life, 70, 10);
  image(life, 130, 10);
  fill(124, 204, 25);
  rect(0, 145, 640, 15);
  fill(255, 255, 0);
  ellipse(590, 50, 125, 125);
  fill(253, 184, 19);
  ellipse(590, 50, 115, 115);
  image(groundhog, 280, 80);
  if (soldierx < sizexr) {
    image(soldier, soldierx, soldiery);
    soldierx = soldierx + 4;
    if (soldierx == sizexr) {
      soldierx = -76;
    }
  }
  if (robotrx <= robotx + 60) {
    fill(255, 0, 0);
    ellipse(robotrx, robotry, 35, 10);
    robotrx=robotrx-2;
    if (robotrx == robotx - 146) {
      robotrx = robotx + 60;
    }
    image(robot, robotx, roboty);
  }
}
