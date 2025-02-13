//Christopher B.
//Animation part 1

//built in variables:
//mouseX, mouseY: these are the coordinates for your mouse pointer

//define own variables here
float x, y, am;//right click, also can have multiples

void setup() {
  size(600,600);
  frameRate(60);
  y=-200;
  x=30;
  am=30;
}

void draw() {
  background(255);
  strokeWeight(4);
  //fill(mouseX);
  //line(300,300, mouseX, mouseY);
  
  //top
  rect(110,-400, 80,450);
  triangle(115,50, 185,50, 150,90);
  rect(210,-400, 80,450);
  triangle(215,50, 285,50, 250,90);
  rect(310,-400, 80,450);
  triangle(315,50, 385,50, 350,90);
  rect(410,-400, 80,450);
  triangle(415,50, 485,50, 450,90);
  
  //bottom
  rect(110,550, 80,450);
  rect(210,550, 80,450);
  rect(310,550, 80,450);
  rect(410,550, 80,450);
  
  //right
  rect(550,110, 450,80);
  triangle(50,115, 50,185, 90,150);
  rect(550,210, 450,80);
  triangle(50,215, 50,285, 90,250);
  rect(550,310, 450,80);
  triangle(50,315, 50,385, 90,350);
  rect(550,410, 450,80);
  triangle(50,415, 50,485, 90,450);
  
  //left
  rect(-400,110, 450,80);
  rect(-400,210, 450,80);
  rect(-400,310, 450,80);
  rect(-400,410, 450,80);
  y+=x;
  x-=0.7;
  if (y<-200) {
    am/=1.1;
    x=am;
  }
}
