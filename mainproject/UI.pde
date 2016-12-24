void imagea(){
pushMatrix();


  image(mapSJTU, -435,-240,855,465);
  mapcolumn();
    fill(49,224,182);
  popMatrix();
}

void UI(){
  cam.beginHUD();
  fill(49,224,182);
 textFont(font4);
 translate(trans1,0);
    text("Consumption"+"\r\n"+"Data"+"\r\n"+"of SJTU",530,573);
    translate(-trans1,0);
            noStroke();
            fill(255,100);
            rect(470,560,15,15);
            rect(470,580,15,15);
            rect(470,600,15,15);
            rect(470,620,15,15);
            rect(470,640,15,15);
            rect(470,660,15,15);
            stroke(49,224,182);
            line(500,560,500,675);
            fill(200);
            textFont(font5);
            text("Total",440,570);
           // text("Morning Peak(6 a.m.-8 a.m.)",353,590);
            //text("Noon Peak(11 a.m.-1 p.m.)",358,610);
            //text("Evening Peak(4 p.m.-7 p.m.)",353,630);
          //  text("Boys'",440,650);
           // text("Girls'",440,670);
           text("Peak Time",420,590);
            text("Gender",433,610);
            text("Degree",433,630);
            text("Comparation",412,650);
           text("Traversal",424,670);
           
           if(peaktime[0]==true||degree[0]==true||compar[0]==true){
                fill(49,224,182);
            rect(500,560,100,38);
           
            
              }
              if(peaktime[1]==true||degree[1]==true||compar[1]==true){
               fill(49,224,182);
            rect(500,598,100,38);
           
          
              }
              if(peaktime[2]==true||degree[2]==true||compar[2]==true){
              fill(49,224,182);
            rect(500,636,100,38);
           
              }
           
           if(gender[0]==true){
              fill(49,224,182);
            rect(500,560,100,57);
           
              }
           if(gender[1]==true){
              fill(49,224,182);
            rect(500,617,100,57);
           
              }
           
           
           
             if(flag[1]==true){
              fill(49,224,182);
              rect(470,560,15,15);
            trans1=0;
            }
            
            if(flag[2]==true){
              fill(49,224,182);
              rect(470,580,15,15);
                noStroke();
               fill(255,100);
            rect(500,560,100,114);
 if(mouseX>500&&mouseX<600&&mouseY>560&&mouseY<598){
            fill(49,224,182,100);
            rect(500,560,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll1=1;
           terraininital();
           terrainainital();
           peaktime[0]=!peaktime[0];
             if(peaktime[0]==true){
                   for(int un=0;un<3;un++) {
      if (un!=0) peaktime[un]=false;
            }
             }
            }
 }
 
             if(mouseX>500&&mouseX<600&&mouseY>598&&mouseY<636){
            fill(49,224,182,100);
            rect(500,598,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll1=1;
           terraininital();
           terrainainital();
           peaktime[1]=!peaktime[1];
             if(peaktime[1]==true){
                   for(int un=0;un<3;un++) {
      if (un!=1) peaktime[un]=false;
            }
             }
            }
             }
             if(mouseX>500&&mouseX<600&&mouseY>636&&mouseY<675){
            fill(49,224,182,100);
            rect(500,636,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll1=1;
           terraininital();
           terrainainital();
           peaktime[2]=!peaktime[2];
             if(peaktime[2]==true){
                   for(int un=0;un<3;un++) {
      if (un!=2) peaktime[un]=false;
            }
             }
            }
             }
             
             fill(255,200);
            textFont(font5);
             translate(0,6);
            textLeading(12);
            if(peaktime[0]==false) text("Morning Peak"+"\r\n"+"6 a.m.-8 a.m.",510,570);
            if(peaktime[1]==false) text("Noon Peak"+"\r\n"+"11 a.m.-1 p.m.",510,608);
             if(peaktime[2]==false)text("Evening Peak"+"\r\n"+"4 p.m.-7 p.m.",510,646);
            translate(0,-6);
            
             if(peaktime[0]==true){
               translate(0,6);
            fill(50);
             text("Morning Peak"+"\r\n"+"6 a.m.-8 a.m.",510,570);
             translate(0,-6);
              }
              if(peaktime[1]==true){
                translate(0,6);
            fill(50);
            text("Noon Peak"+"\r\n"+"11 a.m.-1 p.m.",510,608);
           translate(0,-6);
              }
              if(peaktime[2]==true){
                translate(0,6);
           fill(50);
            text("Evening Peak"+"\r\n"+"4 p.m.-7 p.m.",510,646);
             translate(0,-6);
              }
              
            //rect(508,570,84,25,2);
            //rect(508,605,84,25,2);
            //rect(508,640,84,25,2);
            trans1=85;
            }
            
            if(flag[2]==false){
              for(int asda=0;asda<3;asda++) peaktime[asda]=false;
            }
       
             if(flag[3]==true){
              fill(49,224,182);
              rect(470,600,15,15);
              noStroke();
            fill(255,100);
            rect(500,560,100,115);
             if(mouseX>500&&mouseX<600&&mouseY>560&&mouseY<617){
            fill(49,224,182,100);
            rect(500,560,100,57);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll2=1;
           terraininital();
           terrainainital();
           gender[0]=!gender[0];
             if(gender[0]==true){
                   for(int un=0;un<3;un++) {
      if (un!=0) gender[un]=false;
            }
             }
            }
 }
             if(mouseX>500&&mouseX<600&&mouseY>617&&mouseY<674){
            fill(49,224,182,100);
            rect(500,617,100,57);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll2=1;
           terraininital();
           terrainainital();
           gender[1]=!gender[1];
             if(gender[1]==true){
                   for(int un=0;un<3;un++) {
      if (un!=1) gender[un]=false;
            }
             }
            }
             }
             fill(255,200);
            textFont(font5);
             translate(0,12);
            textLeading(12);
            if(gender[0]==false) text("Male",510,580);
            if(gender[1]==false) text("Famale",510,638);
            translate(0,-12);
            
             if(gender[0]==true){
               translate(0,12);
            fill(50);
            text("Male",510,580);
             translate(0,-12);
              }
              if(gender[1]==true){
                translate(0,12);
            fill(50);
            text("Famale",510,638);
           translate(0,-12);
              }
              trans1=85;
            }
            if(flag[3]==false){
              for(int asda=0;asda<3;asda++) gender[asda]=false;
            }
            if(flag[4]==true){
              fill(49,224,182);
              rect(470,620,15,15);
                noStroke();
                
 fill(255,50);
            rect(500,560,100,114);
             if(mouseX>500&&mouseX<600&&mouseY>560&&mouseY<598){
            fill(49,224,182,100);
            rect(500,560,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll3=1;
           terraininital();
           terrainainital();
           degree[0]=!degree[0];
             if(degree[0]==true){
                   for(int un=0;un<3;un++) {
      if (un!=0) degree[un]=false;
            }
             }
            }
 }
             if(mouseX>500&&mouseX<600&&mouseY>598&&mouseY<636){
            fill(49,224,182,100);
            rect(500,598,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll3=1;
           terraininital();
           terrainainital();
           degree[1]=!degree[1];
             if(degree[1]==true){
                   for(int un=0;un<3;un++) {
      if (un!=1) degree[un]=false;
            }
             }
            }
             }
             if(mouseX>500&&mouseX<600&&mouseY>636&&mouseY<675){
            fill(49,224,182,100);
            rect(500,636,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll3=1;
           terraininital();
           terrainainital();
           degree[2]=!degree[2];
             if(degree[2]==true){
                   for(int un=0;un<3;un++) {
      if (un!=2) degree[un]=false;
            }
             }
            }
             }
             
             fill(255,200);
            textFont(font5);
             translate(0,12);
            textLeading(12);
            if(degree[0]==false) text("Bachelor",510,570);
            if(degree[1]==false) text("Master",510,608);
             if(degree[2]==false)text("Doctor",510,646);
            translate(0,-12);
            
             if(degree[0]==true){
               translate(0,12);
            fill(50);
             text("Bachelor",510,570);
             translate(0,-12);
              }
              if(degree[1]==true){
                translate(0,12);
            fill(50);
            text("Master",510,608);
           translate(0,-12);
              }
              if(degree[2]==true){
                translate(0,12);
           fill(50);
            text("Doctor",510,646);
             translate(0,-12);
              }
              
            //rect(508,570,84,25,2);
            //rect(508,605,84,25,2);
            //rect(508,640,84,25,2);
            trans1=85;
            
            }
             if(flag[4]==false){
              for(int asda=0;asda<3;asda++) degree[asda]=false;
            }
            if(flag[5]==true){
              fill(49,224,182);
              rect(470,640,15,15);
                noStroke();
 fill(255,50);
            rect(500,560,100,114);
             if(mouseX>500&&mouseX<600&&mouseY>560&&mouseY<598){
            fill(49,224,182,100);
            rect(500,560,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll4=1;
           terraininital();
           terrainainital();
           compar[0]=!compar[0];
             if(compar[0]==true){
                   for(int un=0;un<3;un++) {
      if (un!=0) compar[un]=false;
            }
             }
            }
 }
             if(mouseX>500&&mouseX<600&&mouseY>598&&mouseY<636){
            fill(49,224,182,100);
            rect(500,598,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll4=1;
           terraininital();
           terrainainital();
           compar[1]=!compar[1];
             if(compar[1]==true){
                   for(int un=0;un<3;un++) {
      if (un!=1) compar[un]=false;
            }
             }
            }
             }
             if(mouseX>500&&mouseX<600&&mouseY>636&&mouseY<675){
            fill(49,224,182,100);
            rect(500,636,100,38);
            if(mousePressed){
           // fill(49,224,182);
            //rect(500,560,100,38);
           ll4=1;
           terraininital();
           terrainainital();
          compar[2]=!compar[2];
             if(compar[2]==true){
                   for(int un=0;un<3;un++) {
      if (un!=2) compar[un]=false;
            }
             }
            }
             }
             
             fill(255,200);
            textFont(font5);
             translate(0,12);
            textLeading(12);
            if(compar[0]==false) text("Gender for Bachelor",510,570);
            if(compar[1]==false) text("Gender for Master",510,608);
             if(compar[2]==false)text("Gender for Doctor",510,646);
            translate(0,-12);
            
             if(compar[0]==true){
               translate(0,12);
            fill(50);
             text("Gender for Bachelor",510,570);
             translate(0,-12);
              }
              if(compar[1]==true){
                translate(0,12);
            fill(50);
            text("Gender for Master",510,608);
           translate(0,-12);
              }
              if(compar[2]==true){
                translate(0,12);
           fill(50);
            text("Gender for Doctor",510,646);
             translate(0,-12);
              }
              
            //rect(508,570,84,25,2);
            //rect(508,605,84,25,2);
            //rect(508,640,84,25,2);
            trans1=85;
            
            }
             if(flag[5]==false){
              for(int asda=0;asda<3;asda++) compar[asda]=false;
            }
            if(flag[6]==true){
              fill(49,224,182);
              rect(470,660,15,15);
              ellipse(500, eliy, 3, 3);
              //(eliy-560)*569+1
              if(mouseX>497&&mouseX<508&&mouseY>560&&mouseY<675){
                
                if(mousePressed){
                  
                  terraininital();
                  terrainainital();
                  eliy=mouseY;
                  ll5=1;
                }
              }
  trans1=0;
            }

      
            if(mouseX>470&&mouseX<485&&mouseY>560&&mouseY<575){
            fill(49,224,182,100);
            rect(470,560,15,15);
            if(  mousePressed)  {
            ll=1;
              terraininital();
              terrainainital();
              flag[1]=!flag[1];
            if(flag[1]==true){
                   for(int un=0;un<8;un++) {
      if (un!=1) flag[un]=false;
                   }
    }
            }
            }
             if(mouseX>470&&mouseX<485&&mouseY>580&&mouseY<595){
            fill(49,224,182,100);
           rect(470,580,15,15);
          if(mousePressed) {
            ll=1;
            //terraininital();
           // terrainainital(); 
            flag[2]=!flag[2];
            if(flag[2]==true){
                   for(int un=0;un<8;un++) {
      if (un!=2) flag[un]=false;
                   }
    }
            }
            }
             if(mouseX>470&&mouseX<485&&mouseY>600&&mouseY<615){
            fill(49,224,182,100);
           rect(470,600,15,15);
            if(mousePressed)  {
              ll=1;
             // terraininital();
             // terrainainital();
              flag[3]=!flag[3];
              if(flag[3]==true){
                   for(int un=0;un<8;un++) {
      if (un!=3) flag[un]=false;
                   }
    }
            }
            }
            if(mouseX>470&&mouseX<485&&mouseY>620&&mouseY<635){
            fill(49,224,182,100);
          rect(470,620,15,15);
            if(mousePressed) {
              ll=1;
              //terraininital();
             // terrainainital();
              flag[4]=!flag[4];
                if(flag[4]==true){
                   for(int un=0;un<8;un++) {
      if (un!=4) flag[un]=false;
                   }
    }
            }
            }
            if(mouseX>470&&mouseX<485&&mouseY>640&&mouseY<655){
            fill(49,224,182,100);
          rect(470,640,15,15);
          if(mousePressed) {
            ll=1;
            terraininital();
            terrainainital(); 
            flag[5]=!flag[5];
              if(flag[5]==true){
                   for(int un=0;un<8;un++) {
      if (un!=5) flag[un]=false;
                   }
    }
            }
          }
          
             if(mouseX>470&&mouseX<485&&mouseY>660&&mouseY<675){
            fill(49,224,182,100);
        rect(470,660,15,15);
         if(mousePressed)  {
           ll=1;
           terraininital();
           terrainainital();
           flag[6]=!flag[6];
             if(flag[6]==true){
                   for(int un=0;un<8;un++) {
      if (un!=6) flag[un]=false;
                   }
    }
            }
            }

            
            /*if((mouseX>470&&mouseX<485&&mouseY>560&&mouseY<575)||(mouseX>470&&mouseX<485&&mouseY>580&&mouseY<595)||(mouseX>470&&mouseX<485&&mouseY>600&&mouseY<615)||(mouseX>470&&mouseX<485&&mouseY>620&&mouseY<635)||(mouseX>470&&mouseX<485&&mouseY>640&&mouseY<655)||(mouseX>470&&mouseX<485&&mouseY>660&&mouseY<675)){
              for(int r=0;r<8;r++){
                flag[r]=false;
              }
            }*/
         cam.endHUD();
}

void display(){
   pushMatrix();
            translate(-435,-240,0);
  if(i==65498){frameRate(16);i++;
 for(int un=0;un<8;un++) {
      if (un==1) flag[un]=true;
      else flag[un]=false;
    }
  }
if(i==65499) 
  {
    i=65499;
    


         
                if(flag[1]==true){
         fill(49,224,182);
               tags1(int(number1));
               fill(255);
               tags2(pnumber1);
 if(ll==1) {
                 selection();
                 ll=0;
 }
            }
            
            if(flag[2]==true){
              if(peaktime[0]==true){
              fill(49,224,182);
               tags1(int(mpeak));
               fill(255);
               tags2(pmpeak);
              }
              if(peaktime[1]==true){
              fill(49,224,182);
               tags1(int(npeak));
               fill(255);
               tags2(pnpeak);
              }
              if(peaktime[2]==true){
              fill(49,224,182);
               tags1(int(epeak));
               fill(255);
               tags2(pepeak);
              }
 if(ll1==1) {
                 selection();
                 ll1=0;
 }
            }
            
       
             if(flag[3]==true){
               if(gender[0]==true){
              fill(49,224,182);
               tags1(int(male));
               fill(255);
               tags2(pmale);
                
              }
              if(gender[1]==true){
              fill(49,224,182);
               tags1(int(famale));
               fill(255);
               tags2(pfamale);
              }
 if(ll2==1) {
                 selection();
                 ll2=0;
 }
            }
            
           
            
            
            if(flag[4]==true){
              if(degree[0]==true){
              fill(49,224,182);
               tags1(int(bach));
               fill(255);
               tags2(pbach);
              }
              if(degree[1]==true){
              fill(49,224,182);
               tags1(int(mast));
               fill(255);
               tags2(pmast);
              }
              if(degree[2]==true){
              fill(49,224,182);
               tags1(int(doct));
               fill(255);
               tags2(pdoct);
              }
               if(ll3==1) {
                 selection();
                 ll3=0;
               }
            }
            
            if(flag[5]==true){
              for(int qq=1;qq<8;qq++){
                fbach[qq]=bach[qq]-mbach[qq];
                fmast[qq]=mast[qq]-mmast[qq];
                fdoct[qq]=doct[qq]-mdoct[qq];
              }
              
               if(compar[0]==true){
              fill(49,224,182);
               tagscom1(mbach);
               fill(255);
               tagscom2(fbach);
              }
              if(compar[1]==true){
              fill(49,224,182);
               tagscom1(mmast);
               fill(255);
               tagscom2(fmast);
              }
              if(compar[2]==true){
              fill(49,224,182);
               tagscom1(mdoct);
               fill(255);
               tagscom2(fdoct);
              }
            
              if(ll4==1) {
                 selection();
                 ll4=0;
               }
            }
            
            if(flag[6]==true){
             textFont(font2);
              rotateX(-PI/2);
              TableRow row = trade.getRow((eliy-560)*569+1);
              time1=row.getString("column"+7);
              
              if(eliy<675){
              TableRow row2 = trade.getRow((eliy-560+1)*569+1);
             time2=row2.getString("column"+7);
              }
              if(eliy==675){
              TableRow row2 = trade.getRow(65498);
              time2=row.getString("column"+7);
              }
              
             text (time1+"-"+time2,20,-450);
              rotateX(PI/2);
 if(ll5==1) {
                 selection();
                 ll5=0;
               }
  
            }
            
        tag2text();
        up(1);
        if(flag[6]!=true){
    down(1);
        }
      }
  tag1text();
   fill(255);
   //tag2text();
     popMatrix();
}