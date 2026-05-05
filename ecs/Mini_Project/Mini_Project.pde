//Ellie Mason | 31 March 2026 | Mini Project - Click the Target
int targetX, targetY;
int targetSize = 50;
PImage bg;
PImage cursorImg;
PImage targetImg;
int score = 0;

int totalTime = 30;
int startTime;
int timeLeft;

boolean gameOver = false;

void setup() {
  imageMode(CENTER);
  
  targetImg = loadImage("shrimp.png");
  cursorImg = loadImage("crab2.0.png");
  noCursor();
  
  size(600, 600);
  textAlign(CENTER, CENTER);
  textSize(32); 
  
  
  bg = loadImage("page.png");
  
  startTime = millis();
  
  
  moveTarget();
}

void draw() {
image(bg,width/2, height/2,width, height);
  
  int elapsed = (millis() - startTime) / 1000;
  timeLeft = totalTime - elapsed;
  
  if (timeLeft <= 0) {
    timeLeft = 0;
    gameOver = true;
  }
  
  
  if (!gameOver) {
    image(targetImg, targetX, targetY, targetSize, targetSize);
  }
  
 
  fill(0);
  textSize(24);
  text("Score: " + score, width/2, 30);
  text("Time: " + timeLeft, width/2, 60);
  
  
  if (gameOver) {
    textSize(40);
    fill(0);
    text("Game Over!", width/2, height/2 - 20);
    text("Final Score: " + score, width/2, height/2 + 30);
  }
  
  image(cursorImg, mouseX, mouseY, 40, 40);
}

void mousePressed() {
  if (!gameOver) {
    
    
    float d = dist(mouseX, mouseY, targetX, targetY);
    
    if (d < targetSize / 2) {
      score++;        
      moveTarget();   
    }
  } else {
    
    score = 0;
    startTime = millis();
    gameOver = false;
    moveTarget();
  }
}


void moveTarget() {
  targetX = int(random(targetSize, width - targetSize));
  targetY = int(random(100, height - targetSize)); // leave space for UI
}
