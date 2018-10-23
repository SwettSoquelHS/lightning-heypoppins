int startX;
int startY;
int endX;
int endY;

void setup(){
  size(800,600);
  startX = width/2;
  startY = 160;
  endX = 400;
  endY = 0;
  background(0);
}

double stroke;

void drawEdgeL(){
  beginShape();
  vertex(360, 100);
  vertex(350, 110);
  vertex(350, 150);
  vertex(360, 160);
  endShape(CLOSE);
}

void drawEdgeR(){
  beginShape();
  vertex(440, 100);
  vertex(450, 110);
  vertex(450, 150);
  vertex(440, 160);
  endShape(CLOSE);
}

void drawHammer(){
  strokeWeight(2);
  fill(95, 31, 1);
  rect(390, 0, 20, 105);
  fill(188, 183, 180);
  rect(360, 100, 80, 60);
  drawEdgeL();
  drawEdgeR();
  
}

void draw(){
  drawHammer();
  strokeWeight(5);
  stroke = Math.random();
  if(stroke <= .3){
      stroke(254, 255, 23);
    } else if(stroke <=.6){
      stroke(255, 13, 0);
    } else {
      stroke(0, 255, 253);
    }
  while(endX <= width){
    endX = startX + (int)(Math.random()*16)-6;
    endY = startY + (int)(Math.random()*18);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  startX = width/2 + (int)(Math.random()*16)-6;
  startY = 160;
  endX = 0;
  endY = 0;
}
