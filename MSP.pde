PImage home,home1,home2,home3,home4;
PImage about1,about2;
PImage skill1,skill2;
PImage experience1,experience2;
PImage hope1;
PImage botton1,botton2;

int gameState;
final int HOME = 0;
final int ABOUT1 = 1;
final int ABOUT2 = 2;
final int SKILL1 = 3;
final int SKILL2 = 4;
final int EXPERIENCE1 = 5;
final int EXPERIENCE2 = 6;
final int HOPE1 = 7;

void setup() {
  
  size(1250, 703);
  gameState = HOME;
  
  home = loadImage("img/home.png");
  home1 = loadImage("img/home1.png");
  home2 = loadImage("img/home2.png");
  home3 = loadImage("img/home3.png");
  home4 = loadImage("img/home4.png");
  about1 = loadImage("img/about1.png");
  about2 = loadImage("img/about2.png");
  skill1 = loadImage("img/skill1.png");
  skill2 = loadImage("img/skill2.png");
  experience1 = loadImage("img/experience1.png");
  experience2 = loadImage("img/experience2.png");
  hope1 = loadImage("img/hope1.png");
  botton1 = loadImage("img/botton1.png");
  botton2 = loadImage("img/botton2.png");
  
}


void draw() {

  switch(gameState) {
    
  case HOME:
    image(home, 0, 0,1250,703) ;
  
    //mouse action1
    if ( mouseX > 314 && mouseX < 543 && mouseY < 633 && mouseY > 312){
      image(home1, 0, 0,1250,703) ;
      if ( mousePressed ){
        //click
        gameState = ABOUT1;
      }
    }
    
    //mouse action2
    if ( mouseX > 544 && mouseX < 770 && mouseY < 633 && mouseY > 312){
      image(home2, 0, 0,1250,703) ;
      if ( mousePressed ){
        //click
        gameState = SKILL1;
      }
    }
    
    //mouse action3
    if ( mouseX > 771 && mouseX < 997 && mouseY < 633 && mouseY > 312){
      image(home3, 0, 0,1250,703) ;
      if ( mousePressed ){
        //click
        gameState = EXPERIENCE1;
      }
    }

    //mouse action4
    if ( mouseX > 998 && mouseX < 1249 && mouseY < 633 && mouseY > 312){
      image(home4, 0, 0,1250,703) ;
      if ( mousePressed ){
        //click
        gameState = HOPE1;
      }
    }
    
    break;

  case ABOUT1:
    image(about1, 0, 0,1250,703) ;
    
    //mouse action1
    if ( mouseX > 960 && mouseX < 1105 && mouseY < 690 && mouseY > 633){
       image(botton1, 960, 633,145,57) ;
      if ( mousePressed ){
        //click
        gameState = ABOUT2;
      }
    }
    break;
    
  case ABOUT2:
    image(about2, 0, 0,1250,703) ;
    
    //mouse action1
    if ( mouseX > 785 && mouseX < 930 && mouseY < 690 && mouseY > 633){
      image(botton2, 785, 633,145,57) ;
      if ( mousePressed ){
        //click
        gameState = HOME;
      }
    }
    break;
    
  case SKILL1:
    image(skill1, 0, 0,1250,703) ;
  
    //mouse action
    if ( mouseX > 1020 && mouseX < 1165 && mouseY < 463 && mouseY > 406){
      image(botton1, 1020, 406,145,57) ;
      if ( mousePressed ){
        //click
        gameState = SKILL2;
      }
    }
    break;
    
  case SKILL2:
    image(skill2, 0, 0,1250,703) ;
  
    //mouse action1
    if ( mouseX > 1004 && mouseX < 1149 && mouseY < 690 && mouseY > 633){
      image(botton2, 1004, 633,145,57) ;
      if ( mousePressed ){
        //click
        gameState = HOME;
      }
    }
    
    //mouse action2
    if ( mouseX > 319 && mouseX < 357 && mouseY < 41 && mouseY > 9){
      if ( mousePressed ){
        //click
        gameState = SKILL1;
      }
    }
    break;

  case EXPERIENCE1:
    image(experience1, 0, 0,1250,703) ;
  
    //mouse action
    if ( mouseX > 1027 && mouseX < 1172 && mouseY < 690 && mouseY > 633){
      image(botton1, 1027, 633,145,57) ;
      if ( mousePressed ){
        //click
        gameState = EXPERIENCE2;
      }
    }
    break;
    
  case EXPERIENCE2:
    image(experience2, 0, 0,1250,703) ;
  
    //mouse action
    if ( mouseX > 454 && mouseX < 599 && mouseY < 690 && mouseY > 633){
      image(botton2, 454, 633,145,57) ;
      if ( mousePressed ){
        //click
        gameState = HOME;
      }
    }
    
    //mouse action2
    if ( mouseX > 319 && mouseX < 357 && mouseY < 41 && mouseY > 9){
      if ( mousePressed ){
        //click
        gameState = EXPERIENCE1;
      }
    }
    break;

    
  case HOPE1:
    image(hope1, 0, 0,1250,703) ;
  
    //mouse action
    if ( mouseX > 964 && mouseX < 1109 && mouseY < 690 && mouseY > 633){
      image(botton2, 964, 633,145,57) ;
      if ( mousePressed ){
        //click
        gameState = HOME;
      }
    }
    
    
    break;


  }
 
}