//Christopher B.
//Animation part 1

//built in variables:
//mouseX, mouseY: these are the coordinates for your mouse pointer

//define own variables here
int pick,test,prep,back;
float x, y;//right click, also can have multiples
float t1,t2,t3,t4, b1,b2,b3,b4, l1,l2,l3,l4, r1,r2,r3,r4;
void setup() {
  size(600,600);
  frameRate(60);
  y=-200;
  x=0;
  pick=0;
  test=0;
  prep=0;
}

void draw() {
  background(#334046);
  strokeWeight(7);
  
  //warning
  fill(#E3E3E3);
  rect(100,80, 400,20);
  rect(100,500, 400,20);
  rect(80,100, 20,400);
  rect(500,100, 20,400);
  
  x+=1;
  if(x>=1){
    prep=test;
    if(x==60){
      t1=0;
      t2=0;
      t3=0;
      t4=0;
      b1=0;
      b2=0;
      b3=0;
      b4=0;
      l1=0;
      l2=0;
      l3=0;
      l4=0;
      r1=0;
      r2=0;
      r3=0;
      r4=0;
    }
    
    //warning2.0
    fill(#F54343);
    if(prep==1){
      rect(100,80, 400,20);
    }
    if(prep==2){
      rect(100,500, 400,20);
    }
    if(prep==3){
      rect(80,100, 20,400);
    }
    if(prep==4){
      rect(500,100, 20,400);
    }
    
    //random animation
    if(x==1){
      test = int(random(1,5));
      while(test == prep){
        test = int(random(1,5));
      }
    }
    if(x==60){
      pick=test;
      back=0;
    }
    if(x==120){
      back=pick;
      pick=0;
    }
    
    //movement2.0
    if(x<=60){
      if(back==1){
        t1-=200/60;
        t2-=400/60;
        t3-=300/60;
      }
      if(back==2){
        b1-=100/60;
        b2-=400/60;
        b4-=300/60;
      }
      if(back==3){
        l1-=300/60;
        l2-=400/60;
        l4-=200/60;
      }
      if(back==4){
        r2-=400/60;
        r3-=300/60;
        r4-=100/60;
      }
    }
    
    //movement
    if(pick==1){
      t1+=200/60;
      t2+=400/60;
      t3+=300/60;
    }
    if(pick==2){
      b1+=100/60;
      b2+=400/60;
      b4+=300/60;
    }
    if(pick==3){
      l1+=300/60;
      l2+=400/60;
      l4+=200/60;
    }
    if(pick==4){
      r2+=400/60;
      r3+=300/60;
      r4+=100/60;
    }
    if(x==120){
      x=0;
    }
  }
  
  //tiles
  fill(#C6C6C6);
  rect(100,100, 100,100);
  rect(200,100, 100,100);
  rect(300,100, 100,100);
  rect(400,100, 100,100);
  rect(100,200, 100,100);
  rect(200,200, 100,100);
  rect(300,200, 100,100);
  rect(400,200, 100,100);
  rect(100,300, 100,100);
  rect(200,300, 100,100);
  rect(300,300, 100,100);
  rect(400,300, 100,100);
  rect(100,400, 100,100);
  rect(200,400, 100,100);
  rect(300,400, 100,100);
  rect(400,400, 100,100);
  
  //walls
  fill(#475359);
  rect(400,100, 100,100);
  rect(100,300, 100,100);
  rect(300,400, 100,100);
  
  //player
  fill(#3FD69D);
  ellipse(mouseX,mouseY, 50,50);
  //fill(mouseX);
  //line(300,300, mouseX, mouseY);
  
  //top
  fill(#A0522D);
  rect(110,-400+t1, 80,450);
  rect(210,-400+t2, 80,450);
  rect(310,-400+t3, 80,450);
  rect(410,-400+t4, 80,450);
  fill(#858c90);
  triangle(115,50+t1, 185,50+t1, 150,90+t1);
  triangle(215,50+t2, 285,50+t2, 250,90+t2);
  triangle(315,50+t3, 385,50+t3, 350,90+t3);
  triangle(415,50+t4, 485,50+t4, 450,90+t4);
  
  //bottom
  fill(#A0522D);
  rect(110,550-b1, 80,450);
  rect(210,550-b2, 80,450);
  rect(310,550-b3, 80,450);
  rect(410,550-b4, 80,450);
  fill(#858c90);
  triangle(115,550-b1, 185,550-b1, 150,510-b1);
  triangle(215,550-b2, 285,550-b2, 250,510-b2);
  triangle(315,550-b3, 385,550-b3, 350,510-b3);
  triangle(415,550-b4, 485,550-b4, 450,510-b4);
  
  //left
  fill(#A0522D);
  rect(-400+l1,110, 450,80);
  rect(-400+l2,210, 450,80);
  rect(-400+l3,310, 450,80);
  rect(-400+l4,410, 450,80);
  fill(#858c90);
  triangle(50+l1,115, 50+l1,185, 90+l1,150);
  triangle(50+l2,215, 50+l2,285, 90+l2,250);
  triangle(50+l3,315, 50+l3,385, 90+l3,350);
  triangle(50+l4,415, 50+l4,485, 90+l4,450);
  
  //right
  fill(#A0522D);
  rect(550-r1,110, 450,80);
  rect(550-r2,210, 450,80);
  rect(550-r3,310, 450,80);
  rect(550-r4,410, 450,80);
  fill(#858c90);
  triangle(550-r1,115, 550-r1,185, 510-r1,150);
  triangle(550-r2,215, 550-r2,285, 510-r2,250);
  triangle(550-r3,315, 550-r3,385, 510-r3,350);
  triangle(550-r4,415, 550-r4,485, 510-r4,450);
}
