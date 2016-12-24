 void terrainplus(int c,int d,int i){
   if(i<65498){
   TableRow row = trade.getRow(i);
 terrain[c][d]+= row.getInt("column"+6)/10;
        for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
            if(m!=c&&n!=d){
           terrain[m][n]+= terrain[c][d]/(2*abs(m-c)*abs(n-d));
            }
              if(m!=c&&n==d) terrain[m][n]+= terrain[c][d]/(2*abs(m-c));
            if(m==c&&n!=d) terrain[m][n]+= terrain[c][d]/(2*abs(n-d));
            }
          }
   }
 }
 
  void terrainaplus(int c,int d,int i){
    if(i<65498){
   TableRow row = trade.getRow(i);
 terraina[c][d]+= row.getFloat("column"+6)/10000;
        for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
            if(m!=c&&n!=d){
           terraina[m][n]+= row.getFloat("column"+6)/(20000*abs(m-c)*abs(n-d));
            }
              if(m!=c&&n==d) terraina[m][n]+= row.getFloat("column"+6)/(20000*abs(m-c));
            if(m==c&&n!=d) terraina[m][n]+= row.getFloat("column"+6)/(20000*abs(n-d));
            }
          }
    }
 }
 
  void terraindownnum(int c,int d,int i,float r){
 terraindowndraft[c][d]= i*r/10;
        for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
            if(m!=c&&n!=d){ 
           terraindowndraft[m][n]+= terraindowndraft[c][d]/(2*abs(m-c)*abs(n-d));
            }
                if(m!=c&&n==d) terraindowndraft[m][n]+= terraindowndraft[c][d]/(2*abs(m-c));
            if(m==c&&n!=d) terraindowndraft[m][n]+= terraindowndraft[c][d]/(2*abs(n-d));
            }
          }
   }
   
     void terrainupnum(int c,int d,int i,float r){
 terrainupdraft[c][d]= i*r/10000;
        for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
            if(m!=c&&n!=d){
           terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(m-c)*abs(n-d));
          // print(terrainupdraft[m][n]);
            }
              if(m!=c&&n==d) terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(m-c));
            if(m==c&&n!=d) terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(n-d));
            }
          }
   }
   
     void terraininital(){
        for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
          terraindowndraft[m][n]=0;
            }
          }
   }
   
    void terrainainital(){
        for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
          terrainupdraft[m][n]=0;
            }
          }
   }
   
   void getupterrain(int[] i,float r){
     terrainupnum(14,22,i[1],r);
     terrainupnum(24,22,i[2],r);
     terrainupnum(22,10,i[3],r);
     terrainupnum(6,10,i[4],r);
     terrainupnum(36,24,i[5],r);
      terrainupnum(52,10,i[6],r);
      terrainupnum(14,24,i[7],r);
   }

   void getdownterrain(int[] i,float r){
     terraindownnum(14,22,i[1],r);
     terraindownnum(24,22,i[2],r);
     terraindownnum(22,10,i[3],r);
     terraindownnum(6,10,i[4],r);
     terraindownnum(36,24,i[5],r);
      terraindownnum(52,10,i[6],r);
    terraindownnum(14,24,i[7],r);
   }


 
 
 void addnoise(int up,int down){
   
  flying -= 0.03;
  float yoff = flying;
  for (int x=1; x<cols-1; x++) {
    float xoff = 0;
    for (int y=1; y<rows-1; y++) {
       if(i<65498&&i>1){
      terrain[x][y] = map(noise(xoff,yoff), 0,1,0,up);
       }
       terrainfloat[x][y] = map(noise(xoff,yoff), 0,1,0,down);
      xoff+=0.1;
    }
    yoff+=0.1;
  }
 }
 
 void terraintraverse(int c,int d,int i,float r){
   TableRow row = trade.getRow(i);
 terrainupdraft[c][d] += row.getInt("column"+6)/100;
       /* for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
            if(m!=c&&n!=d){
           terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(m-c)*abs(n-d));
          // print(terrainupdraft[m][n]);
            }
              if(m!=c&&n==d) terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(m-c));
            if(m==c&&n!=d) terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(n-d));
            }
          }*/
   }
   
   void terraintraverse2(int c,int d){
       for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
            if(m!=c&&n!=d){
           terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(m-c)*abs(n-d));
          // print(terrainupdraft[m][n]);
            }
              if(m!=c&&n==d) terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(m-c));
            if(m==c&&n!=d) terrainupdraft[m][n]+= terrainupdraft[c][d]/(2*abs(n-d));
           
          }
   }
   }
/* void terrainxplus(int c,int d,int i){
   if(i<65498){
   TableRow row = trade.getRow(i);
 terrain[c][d]+= row.getInt("column"+6)/10;
        for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
            if(m!=c&&n!=d){
           terrain[m][n]+= terrain[c][d]/(2*abs(m-c)*abs(n-d));
            }
              if(m!=c&&n==d) terrain[m][n]+= terrain[c][d]/(2*abs(m-c));
            if(m==c&&n!=d) terrain[m][n]+= terrain[c][d]/(2*abs(n-d));
            }
          }
   }
 }
 
  void terrainxaplus(int c,int d,int i){
   TableRow row = trade.getRow(i);
 terraina[c][d]+= row.getFloat("column"+6)/10000;
        for(int m=1;m<cols-1;m++){
          for(int n=1;n<rows-1;n++){
            if(m!=c&&n!=d){
           terraina[m][n]+= row.getFloat("column"+6)/(20000*abs(m-c)*abs(n-d));
            }
              if(m!=c&&n==d) terraina[m][n]+= row.getFloat("column"+6)/(20000*abs(m-c));
            if(m==c&&n!=d) terraina[m][n]+= row.getFloat("column"+6)/(20000*abs(n-d));
            }
          }
    }
 */