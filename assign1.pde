PImage bg, soil, life, robot, groundhog, soldier;
float soldierX=random(-80,480), soldierY = 80 * 2 + (floor(random(4)) * 80), robotX = 80 * 2 + (floor(random(6)) * 80), robotY= 80 * 2 + (floor(random(4)) * 80), laserX = robotX + 25, laserY = robotY + 37, laser = 0, laserSpeed = 2, laserRange = 80 * 2 + 25,laserWidth=0;
void setup() {
  noStroke();
  size(640, 480, P2D);
  image((bg = loadImage("img/bg.jpg")),0,0);
  soil = loadImage("img/soil.png");
  image(life = loadImage("img/life.png"),10,10);
  image(life = loadImage("img/life.png"),80,10);
  image(life = loadImage("img/life.png"),150,10);
  robot = loadImage("img/robot.png");
  groundhog = loadImage("img/groundhog.png");
  soldier = loadImage("img/soldier.png");
  fill(124, 204, 25);
  rect(0, 145, 640, 15);
  fill(255, 255, 0);
  ellipse(590, 50, 125, 125);
  fill(253, 184, 19);
  ellipse(590, 50, 115, 115);
}
void draw() {
  image(soil, 0, 160);
  image(groundhog, 280, 80);
    soldierX = soldierX + 3;
    if (soldierX > 640) {
      soldierX = -80;
    }
  strokeWeight(10);
  stroke(255, 0, 0);
  line(laserX - laser, laserY, laserX - laser + laserWidth, laserY);
  laserWidth += laserSpeed;
  laser += 2;
  if (laserWidth >= 40) {
    laserSpeed = 0;
  }
  else {
    laserSpeed = 2;
  }
  if (laserX - laser < laserX - laserRange) {
    laserWidth = laser = 0;
  }
  image(soldier, soldierX, soldierY);
  image(robot, robotX, robotY);
}
