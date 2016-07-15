/* please implement your assign1 code in this file. */
PImage backgroundImg1,backgroundImg2,enemyImg,fighterImg,hpImg,treasureImg;
int x,treasureX,treasureY,enemyX,enemyY,bgX;
float hp;

void setup () {
  size(640,480) ;  // must use this size.
  
  hp = random(194);
  treasureX = floor(random(500));
  treasureY = floor(random(80,400));
  enemyX = -100;
  enemyY = floor(random(80,400));
  
  bgX = 0;
  enemyImg = loadImage("img/enemy.png");
  fighterImg = loadImage("img/fighter.png");
  hpImg = loadImage("img/hp.png");
  treasureImg = loadImage("img/treasure.png");
  enemyImg = loadImage("img/enemy.png");
  backgroundImg1 = loadImage("img/bg1.png");
  backgroundImg2 = loadImage("img/bg2.png");
}

void draw() {
  //background
  image(backgroundImg1,++bgX % 1280 - 640,0);
  image(backgroundImg2,(bgX + 640) % 1280 - 640,0);
  
  
  
  //hp
  stroke(#ff0000);
  fill(#ff0000);
  rect(32,24,hp,23);
  image(hpImg,20,20);
  
  //fighter
  image(fighterImg,580,240);
  
  //treasure
  image(treasureImg,treasureX,treasureY);
  
  //enemy
  image(enemyImg,enemyX,enemyY);
  if ((enemyX += 3) > 700){
    enemyX = -100;
    enemyY = floor(random(80,400));
  }
}

