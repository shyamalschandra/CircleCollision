/**
 * Code Adapted by: Shyamal Chandra
 * Circle Collision with Swapping Velocities
 * by Ira Greenberg. 
 * 
 * Based on Keith Peter's Solution in
 * Foundation Actionscript Animation: Making Things Move!
 */

final int MAX_BALLS = 250;
final int MAX_SIZE = 200;
final int MAX_LITTLE_BALLS = 50;
final int MIN_LITTLE_BALLS = 10;

Ball[] balls;

void setup() {
  frameRate(30);
  size(1920,1080);
  
  balls = new Ball[MAX_BALLS];
  
  balls[0] = new Ball(random(1920), random(1080), random(MAX_SIZE), random(255), random(255), random(255));
  
  for (int i = 1; i < MAX_BALLS; i++) {
    balls[i] = new Ball(random(1920), random(1080), random(MIN_LITTLE_BALLS, MAX_LITTLE_BALLS), random(255), random(255), random(255));
  }
  
}

void draw() {
  background(34);

  for (Ball b : balls) {
    b.update();
    b.display();
    b.checkBoundaryCollision();
  }
  
  balls[0].checkCollision(balls[1]);
}
