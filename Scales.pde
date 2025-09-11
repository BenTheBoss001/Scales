int g;
int num;

void setup(){
  size(1200,600);
  background(255);
  noLoop();
  g = 0;
  num = 0;
}

void draw(){
  for (int y = 550; y >= -100; y -= 55){
    for (int x = 0; x <= 1250; x+= 55){
      g += 1;
      scales(x,y);
    }
  }
}

void scales(int x, int y){
  num += 1;
  stroke(0);
  fill(78, 184, g);
  //int g = (int)(Math.random()*256);
  //fill(78, 184, 230);
  bezier(x,y,x+100,y+17.5,x,y+100,x,y+100);
  bezier(x,y,x-100,y+17.5,x,y+100,x,y+100);
  noStroke();
  //fill(66, 135, 245);
  fill(66, 135, g);
  bezier(x,y+12.5,x+62.5,y+27.5,x,y+87.5,x,y+87.5);
  bezier(x,y+12.5,x-62.5,y+27.5,x,y+87.5,x,y+87.5);
}



