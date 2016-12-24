
 void mapcolumn(){
   stroke(255,150);
  noFill();
  translate(-435,-240,0);
 textFont(font2);
    fill(49,224,182);
    addnoise(20,10);
 getdata(); 
    // up(1);
   // down(1);
   if(i<2) {frameRate(1000);i++;}
  if(i<65498&&i>1) {
     up(1);
     down(1);
    cam.beginHUD();
   
    textFont(font3);
 fill(255);
 hint="Please Wait Loading...";
  text(hint,530,650);
     cam.endHUD();
    //up(1);
      for (int x=0; x<cols-1; x++)  {
  for (int y=0; y<rows-1; y++){
     stroke(255,150);
    line(x*scale, y*scale, -terrain[x][y], x*scale, (y+1)*scale, -terrain[x][y+1]);
 line(x*scale, y*scale, -terrain[x][y], (x+1)*scale, (y+1)*scale, -terrain[x+1][y+1]);
  line(x*scale, y*scale, -terrain[x][y], (x+1)*scale, y*scale, -terrain[x+1][y]);        
    }
  }
   for (int x=0; x<cols-1; x++)  {
     line(x*scale, 31*scale, -terrain[x][31], (x+1)*scale, 31*scale, -terrain[x+1][31]);        
   }
   for (int y=0; y<rows-1; y++){
      line(57*scale, y*scale, -terrain[57][y], 57*scale, (y+1)*scale, -terrain[57][y+1]);
   }
    i++;
       rotateX(-PI/2);
    textFont(font1);
    fill(49,224,182);
    TableRow row = trade.getRow(i);
    text(row.getString("column"+7),20,-350);
     textFont(font2);
    fill(255);
    text("Loading Data",20,-450);
 // print(terraina[7][11]+" ");
   rotateX(PI/2);
    fill(49,224,182);
   //tags1(int(number1));
   tags1(int(number1));
   tag1text();
   //fill(255);
      //tags2(pdoct);
   //tag2text();
   }
  }
  
  void getdata(){
     TableRow row = trade.getRow(i);
   if(row.getInt("column"+3)==30||row.getInt("column"+3)==99||row.getInt("column"+3)==28){
     terrainplus(14,22,i);
       terrainaplus(14,22,i);
       number1[1]+=row.getInt("column"+6);
       pnumber1[1]++;
       if(row.getInt("column"+5)==6||row.getInt("column"+5)==7||row.getInt("column"+5)==8){
         mpeak[1]+=row.getInt("column"+6);pmpeak[1]++;
       }
       if(row.getInt("column"+5)==11||row.getInt("column"+5)==12||row.getInt("column"+5)==13){
         npeak[1]+=row.getInt("column"+6);pnpeak[1]++;
       }
       if(row.getInt("column"+5)==16||row.getInt("column"+5)==17||row.getInt("column"+5)==18){
         epeak[1]+=row.getInt("column"+6);pepeak[1]++;
       }
      //print(account[row.getInt("column"+1)][2]==1);
     if(account[row.getInt("column"+1)][2]==1) {pmale[1]++;male[1]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==2) {pfamale[1]++;famale[1]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==1) {pbach[1]++;bach[1]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==2) {pmast[1]++;mast[1]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==3) {pdoct[1]++;doct[1]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==1) {mbach[1]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==2) {mmast[1]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==3) {mdoct[1]+=row.getInt("column"+6);}
   }
        
 if(row.getInt("column"+3)==269||row.getInt("column"+3)==34||row.getInt("column"+3)==265||row.getInt("column"+3)==33){
      terrainplus(24,22,i);
       terrainaplus(24,22,i);
       number1[2]+=row.getInt("column"+6);pnumber1[2]++;
       if(row.getInt("column"+5)==6||row.getInt("column"+5)==7||row.getInt("column"+5)==8){
         mpeak[2]+=row.getInt("column"+6);pmpeak[2]++;
       }
       if(row.getInt("column"+5)==11||row.getInt("column"+5)==12||row.getInt("column"+5)==13){
         npeak[2]+=row.getInt("column"+6);pnpeak[2]++;
        }
         if(row.getInt("column"+5)==16||row.getInt("column"+5)==17||row.getInt("column"+5)==18){
         epeak[2]+=row.getInt("column"+6);pepeak[2]++;
        }
if(account[row.getInt("column"+1)][2]==1) {pmale[2]++;male[2]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==2) {pfamale[2]++;famale[2]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==1) {pbach[2]++;bach[2]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==2) {pmast[2]++;mast[2]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==3) {pdoct[2]++;doct[2]+=row.getInt("column"+6);}
        if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==1) {mbach[2]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==2) {mmast[2]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==3) {mdoct[2]+=row.getInt("column"+6);}
 }
        
      if(row.getInt("column"+3)==268||row.getInt("column"+3)==36){
      terrainplus(22,10,i);
      terrainaplus(22,10,i);
       number1[3]+=row.getInt("column"+6);pnumber1[3]++;
        if(row.getInt("column"+5)==6||row.getInt("column"+5)==7||row.getInt("column"+5)==8){
         mpeak[3]+=row.getInt("column"+6);pmpeak[3]++;
        }  
        if(row.getInt("column"+5)==11||row.getInt("column"+5)==12||row.getInt("column"+5)==13){
         npeak[3]+=row.getInt("column"+6);pnpeak[3]++;
        }
         if(row.getInt("column"+5)==16||row.getInt("column"+5)==17||row.getInt("column"+5)==18){
         epeak[3]+=row.getInt("column"+6);pepeak[3]++;
        }
 if(account[row.getInt("column"+1)][2]==1) {pmale[3]++;male[3]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==2) {pfamale[3]++;famale[3]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==1) {pbach[3]++;bach[3]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==2) {pmast[3]++;mast[3]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==3) {pdoct[3]++;doct[3]+=row.getInt("column"+6);}
        if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==1) {mbach[3]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==2) {mmast[3]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==3) {mdoct[3]+=row.getInt("column"+6);}
      }
        
      if(row.getInt("column"+3)==267||row.getInt("column"+3)==38){
      terrainplus(6,10,i);
       terrainaplus(6,10,i);
        number1[4]+=row.getInt("column"+6);pnumber1[4]++;
        if(row.getInt("column"+5)==6||row.getInt("column"+5)==7||row.getInt("column"+5)==8){
         mpeak[4]+=row.getInt("column"+6);pmpeak[4]++;
        }     
        if(row.getInt("column"+5)==11||row.getInt("column"+5)==12||row.getInt("column"+5)==13){
         npeak[4]+=row.getInt("column"+6);pnpeak[4]++;
        }
           if(row.getInt("column"+5)==16||row.getInt("column"+5)==17||row.getInt("column"+5)==18){
         epeak[4]+=row.getInt("column"+6);pepeak[4]++;
        }
      if(account[row.getInt("column"+1)][2]==1) {pmale[4]++;male[4]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==2) {pfamale[4]++;famale[4]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==1) {pbach[4]++;bach[4]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==2) {pmast[4]++;mast[4]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==3) {pdoct[4]++;doct[4]+=row.getInt("column"+6);}
         if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==1) {mbach[4]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==2) {mmast[4]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==3) {mdoct[4]+=row.getInt("column"+6);}
      }
        
        if(row.getInt("column"+3)==265||row.getInt("column"+3)==33){
      terrainplus(36,24,i);
       terrainaplus(36,24,i);
       number1[5]+=row.getInt("column"+6);pnumber1[5]++;
         if(row.getInt("column"+5)==6||row.getInt("column"+5)==7||row.getInt("column"+5)==8){
         mpeak[5]+=row.getInt("column"+6);pmpeak[5]++;
        }  
         if(row.getInt("column"+5)==11||row.getInt("column"+5)==12||row.getInt("column"+5)==13){
         npeak[5]+=row.getInt("column"+6);pnpeak[5]++;
        }
           if(row.getInt("column"+5)==16||row.getInt("column"+5)==17||row.getInt("column"+5)==18){
         epeak[5]+=row.getInt("column"+6);pepeak[5]++;
        }
       if(account[row.getInt("column"+1)][2]==1) {pmale[5]++;male[5]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==2) {pfamale[5]++;famale[5]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==1) {pbach[5]++;bach[5]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==2) {pmast[5]++;mast[5]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==3) {pdoct[5]++;doct[5]+=row.getInt("column"+6);}
         if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==1) {mbach[5]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==2) {mmast[5]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==3) {mdoct[5]+=row.getInt("column"+6);}
      }
        
        
         if(row.getInt("column"+3)==266||row.getInt("column"+3)==37){
      terrainplus(52,10,i);
       terrainaplus(52,10,i);
       number1[6]+=row.getInt("column"+6);pnumber1[6]++;
        if(row.getInt("column"+5)==6||row.getInt("column"+5)==7||row.getInt("column"+5)==8){
         mpeak[6]+=row.getInt("column"+6);pmpeak[6]++;
        }  
         if(row.getInt("column"+5)==11||row.getInt("column"+5)==12||row.getInt("column"+5)==13){
         npeak[6]+=row.getInt("column"+6);pnpeak[6]++;
        }
           if(row.getInt("column"+5)==16||row.getInt("column"+5)==17||row.getInt("column"+5)==18){
         epeak[6]+=row.getInt("column"+6); pepeak[6]++;
        }
        if(account[row.getInt("column"+1)][2]==1) {pmale[6]++;male[6]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==2) {pfamale[6]++;famale[6]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==1) {pbach[6]++;bach[6]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==2) {pmast[6]++;mast[6]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==3) {pdoct[6]++;doct[6]+=row.getInt("column"+6);}
         if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==1) {mbach[6]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==2) {mmast[6]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==3) {mdoct[6]+=row.getInt("column"+6);}
      }
        
        
          if(row.getInt("column"+3)==49){
      terrainplus(14,24,i);
      terrainaplus(14,24,i);
       number1[7]+=row.getInt("column"+6);
        if(row.getInt("column"+5)==6||row.getInt("column"+5)==7||row.getInt("column"+5)==8){
         mpeak[7]+=row.getInt("column"+6);pmpeak[7]++;
        }  
         if(row.getInt("column"+5)==11||row.getInt("column"+5)==12||row.getInt("column"+5)==13){
         npeak[7]+=row.getInt("column"+6);pnpeak[7]++;
        }
           if(row.getInt("column"+5)==16||row.getInt("column"+5)==17||row.getInt("column"+5)==18){
         epeak[7]+=row.getInt("column"+6);pepeak[7]++;
        }
       if(account[row.getInt("column"+1)][2]==1) {pmale[7]++;male[7]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==2) {pfamale[7]++;famale[7]+=row.getInt("column"+6);}
     if(account[row.getInt("column"+1)][5]==1) {pbach[7]++;bach[7]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==2) {pmast[7]++;mast[7]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][5]==3) {pdoct[7]++;doct[7]+=row.getInt("column"+6);}
         if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==1) {mbach[7]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==2) {mmast[7]+=row.getInt("column"+6);}
       if(account[row.getInt("column"+1)][2]==1&&account[row.getInt("column"+1)][5]==3) {mdoct[7]+=row.getInt("column"+6);}
      }
       
  }
  
   void traverse(){
     if(eliy!=675){
       for(int b=(eliy-560)*569+1;b<(eliy-560+1)*569;b++){
      TableRow row = trade.getRow(b);
   if(row.getInt("column"+3)==30||row.getInt("column"+3)==99||row.getInt("column"+3)==28){
     terraintraverse(14,22,b,1);
       //terrainaplus(14,22,b);
      
   }
        
 if(row.getInt("column"+3)==269||row.getInt("column"+3)==34||row.getInt("column"+3)==265||row.getInt("column"+3)==33){
      terraintraverse(24,22,b,1);
      // terrainaplus(24,22,b);
      
 }
        
      if(row.getInt("column"+3)==268||row.getInt("column"+3)==36){
      terraintraverse(22,10,b,1);
      //terrainaplus(22,10,b);
       
      }
        
      if(row.getInt("column"+3)==267||row.getInt("column"+3)==38){
      terraintraverse(6,10,b,1);
      // terrainaplus(6,10,b);
       
      }
        
        if(row.getInt("column"+3)==265||row.getInt("column"+3)==33){
      terraintraverse(36,24,b,1);
      // terrainaplus(36,24,b);
      
      }
        
        
         if(row.getInt("column"+3)==266||row.getInt("column"+3)==37){
      terraintraverse(52,10,b,1);
      // terrainaplus(52,10,b);
     
      }
        
        
          if(row.getInt("column"+3)==49){
      terraintraverse(14,24,b,1);
      //terrainaplus(14,24,b);
    
      }
     
       }
     terraintraverse2(14,22);
      terraintraverse2(24,22);
      terraintraverse2(22,10);
      terraintraverse2(6,10);
      terraintraverse2(36,24);
      terraintraverse2(52,10);
      terraintraverse2(14,24);
     }
      
      if(eliy==675){
       for(int b=(eliy-560)*569+1;b<65498;b++){
      TableRow row = trade.getRow(b);
   if(row.getInt("column"+3)==30||row.getInt("column"+3)==99||row.getInt("column"+3)==28){
     terraintraverse(14,22,b,1);
       //terrainaplus(14,22,b);
      
   }
        
 if(row.getInt("column"+3)==269||row.getInt("column"+3)==34||row.getInt("column"+3)==265||row.getInt("column"+3)==33){
      terraintraverse(24,22,b,1);
      // terrainaplus(24,22,b);
      
 }
        
      if(row.getInt("column"+3)==268||row.getInt("column"+3)==36){
      terraintraverse(22,10,b,1);
      //terrainaplus(22,10,b);
       
      }
        
      if(row.getInt("column"+3)==267||row.getInt("column"+3)==38){
      terraintraverse(6,10,b,1);
      // terrainaplus(6,10,b);
       
      }
        
        if(row.getInt("column"+3)==265||row.getInt("column"+3)==33){
      terraintraverse(36,24,b,1);
      // terrainaplus(36,24,b);
      
      }
        
        
         if(row.getInt("column"+3)==266||row.getInt("column"+3)==37){
      terraintraverse(52,10,b,1);
      // terrainaplus(52,10,b);
     
      }
        
        
          if(row.getInt("column"+3)==49){
      terraintraverse(14,24,b,1);
      //terrainaplus(14,24,b);
    
      }
     
       }
        terraintraverse2(14,22);
      terraintraverse2(24,22);
      terraintraverse2(22,10);
      terraintraverse2(6,10);
      terraintraverse2(36,24);
      terraintraverse2(52,10);
      terraintraverse2(14,24);
     }
   }
  