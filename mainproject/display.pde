void up(int n){
   for (int x=0; x<cols-1; x++)  {
  for (int y=0; y<rows-1; y++){
    stroke(49,224,182,200);
    //stroke(49,224,182,map(terraina[x][y],0,5000,100,255));
    line(x*scale, y*scale, n*map(terraina[x][y],0,5000,0,1000)+terrainfloat[x][y], x*scale, (y+1)*scale, n*map(terraina[x][y+1],0,5000,0,1000)+terrainfloat[x][y+1]);
 line(x*scale, y*scale, n*map(terraina[x][y],0,5000,0,1000)+terrainfloat[x][y], (x+1)*scale, (y+1)*scale, n*map(terraina[x+1][y+1],0,5000,0,1000)+terrainfloat[x+1][y+1]);
  line(x*scale, y*scale, n*map(terraina[x][y],0,5000,0,1000)+terrainfloat[x][y], (x+1)*scale, y*scale, n*map(terraina[x+1][y],0,5000,0,1000)+terrainfloat[x+1][y]);     
//print(terraina[x][y]+" ");
    }
  }
   for (int x=0; x<cols-1; x++)  {
     line(x*scale, 31*scale, n*map(terraina[x][31],0,5000,0,1000)+terrainfloat[x][31], (x+1)*scale, 31*scale, n*map(terraina[x+1][31],0,5000,0,1000)+terrainfloat[x+1][31]);        
   }
   for (int y=0; y<rows-1; y++){
      line(57*scale, y*scale,n*map(terraina[57][y],0,5000,0,1000)+terrainfloat[57][y], 57*scale, (y+1)*scale,n*map( terraina[57][y+1],0,5000,0,1000)+terrainfloat[57][y+1]);
   }
}

void down(int n){
   for (int x=0; x<cols-1; x++)  {
  for (int y=0; y<rows-1; y++){
    stroke(255,200);
    //stroke(49,224,182,map(terrain[x][y],0,5000,100,255));
    line(x*scale, y*scale, -n*map(terrain[x][y],0,5000,0,1000)-terrainfloat[x][y], x*scale, (y+1)*scale, -n*map(terrain[x][y+1],0,5000,0,1000)-terrainfloat[x][y+1]);
 line(x*scale, y*scale, -n*map(terrain[x][y],0,5000,0,1000)-terrainfloat[x][y], (x+1)*scale, (y+1)*scale, -n*map(terrain[x+1][y+1],0,5000,0,1000)-terrainfloat[x+1][y+1]);
  line(x*scale, y*scale, -n*map(terrain[x][y],0,5000,0,1000)-terrainfloat[x][y], (x+1)*scale, y*scale, -n*map(terrain[x+1][y],0,5000,0,1000)-terrainfloat[x+1][y]);     
//print(terraina[x][y]+" ");
    }
  }
   for (int x=0; x<cols-1; x++)  {
     line(x*scale, 31*scale, -n*map(terrain[x][31],0,5000,0,1000)-terrainfloat[x][31], (x+1)*scale, 31*scale, -n*map(terrain[x+1][31],0,5000,0,1000)-terrainfloat[x+1][31]);        
   }
   for (int y=0; y<rows-1; y++){
      line(57*scale, y*scale,-n*map(terrain[57][y],0,5000,0,1000)-terrainfloat[57][y], 57*scale, (y+1)*scale,-n*map( terrain[57][y+1],0,5000,0,1000)-terrainfloat[57][y+1]);
   }
}