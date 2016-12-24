void selection(){
 if(flag[1]==true){
      getupterrain(int(number1),1);
      getdownterrain(pnumber1,1);
for (int x=0; x<58; x++) {
   for (int y=0; y<32 ; y++) {
    terraina[x][y]= terrainupdraft[x][y];
    terrain[x][y]= terraindowndraft[x][y];
   }
}
      up(1);
      down(1);
    }
    
    if(flag[2]==true){
      if(peaktime[0]==true){
      getupterrain(int(mpeak),1);
      getdownterrain(pmpeak,1);
      }
      if(peaktime[1]==true){
       getupterrain(int(npeak),1);
      getdownterrain(pnpeak,1);
      }
      if(peaktime[2]==true){
       getupterrain(int(epeak),1);
      getdownterrain(pepeak,1);
      }
for (int x=0; x<58; x++) {
   for (int y=0; y<32 ; y++) {
    terraina[x][y]= terrainupdraft[x][y];
    terrain[x][y]= terraindowndraft[x][y];
   }
}
      up(1);
      down(1);
      }
      
      
    
    
     if(flag[3]==true){
    if(gender[0]==true){
      getupterrain(int(male),1);
      getdownterrain(pmale,1);
      }
      if(gender[1]==true){
       getupterrain(int(famale),1);
      getdownterrain(pfamale,1);
      }
for (int x=0; x<58; x++) {
   for (int y=0; y<32 ; y++) {
    terraina[x][y]= terrainupdraft[x][y];
    terrain[x][y]= terraindowndraft[x][y];
   }
}
      up(1);
      down(1);
    }
    
     if(flag[4]==true){
       if(degree[0]==true){
      getupterrain(int(bach),1);
      getdownterrain(pbach,1);
      }
      if(degree[1]==true){
       getupterrain(int(mast),1);
      getdownterrain(pmast,1);
      }
      if(degree[2]==true){
       getupterrain(int(doct),1);
      getdownterrain(pdoct,1);
      }
for (int x=0; x<58; x++) {
   for (int y=0; y<32 ; y++) {
    terraina[x][y]= terrainupdraft[x][y];
    terrain[x][y]= terraindowndraft[x][y];
   }
}
      up(1);
      down(1);
    }
    
    if(flag[5]==true){
      for(int qq=1;qq<8;qq++){
                 fbach[qq]=bach[qq]-mbach[qq];
                fmast[qq]=mast[qq]-mmast[qq];
                fdoct[qq]=doct[qq]-mdoct[qq];
              }
        if(compar[0]==true){
      getupterrain(int(mbach),2);
      getdownterrain(int(fbach),0.002);
      }
      if(compar[1]==true){
        getupterrain(int(mmast),2);
      getdownterrain(int(fmast),0.002);
      }
      if(compar[2]==true){
       getupterrain(int(mdoct),2);
      getdownterrain(int(fdoct),0.002);
      }
     
for (int x=0; x<58; x++) {
   for (int y=0; y<32 ; y++) {
    terraina[x][y]= terrainupdraft[x][y];
    terrain[x][y]= terraindowndraft[x][y];
   }
}
      up(1);
      down(1);
    }
    
        if(flag[6]==true){
      traverse();
for (int x=0; x<58; x++) {
   for (int y=0; y<32 ; y++) {
    terraina[x][y]= terrainupdraft[x][y];
    terrain[x][y]= terraindowndraft[x][y];
   }
}
      up(1);
      down(1);
    }
    
       }