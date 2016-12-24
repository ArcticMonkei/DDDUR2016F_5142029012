void welcome(){
  
   background(15);
  fill(255,127,126,10);
  rect(0,0,width,height);
  //image(img, 0, 0,width,height);
  for (int i=0;i<wedot.length;i++) {
   wedot[i].displaytriangle();
   wedot[i].wallProcess();
       wedot[i].update();
  }
    for (int k=0;k<6;k++) {
    center[k].update();
    center[k].displaytrianglecenter();
    center[k].wallProcesscenter();
    }
    textFont(font7);
    fill(49,224,182,125*(sin(0.2*startcount)+1));
    text("PRESS.SPACE.TO.ENTER", 500, 643);
   if(startcount<30){
     fill(255);
         textFont(font8);
    text("OF SJTU", 500, 628); 
    //textFont(font6);
    //text("SJTU", 215, 380); 
    textFont(font9);
    text("Consumption Data", 500, 600); 
    fill(49,224,182,random(0,255-startcount*8));

      textFont(font8);
    text("OF SJTU", 500, 628); 
    //textFont(font6);
    //text("SJTU", 215, 380); 
    textFont(font9);
    text("Consumption Data", 500, 600); 
    }
    else{
      fill(49,224,182);
      textFont(font8);
    text("OF SJTU", 500, 628); 
    //textFont(font6);
    //text("SJTU", 215, 380); 
    textFont(font9);
    text("Consumption Data", 500, 600); 
    }
  startcount++;
    
  }