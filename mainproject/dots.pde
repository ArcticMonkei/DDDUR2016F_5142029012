class Dots{
  PVector speed;
  float disline;
  float area;
  color trianfill;
  PVector loc;
  int p,t;
  
  
  Dots(PVector speed, PVector loc){
    this.speed= speed;
    this.loc= loc;
  }
  
  void update(){
     displaydots();
     displaylines();
    moving();
  }
  
  void displaydots(){
    strokeWeight(1);
    fill(49,224,182,100);
    //point(loc.x,loc.y);
    ellipse(loc.x,loc.y,1,1);
  }
  
  void displaylines(){
    Dots a;
    for(int i=0;i<wedot.length;i++){
      a=wedot[i];
      if(this==a){
        p=i;
      }
      if(i>p){
        disline=dist(a.loc.x,a.loc.y,loc.x,loc.y);
        if(disline<130){
          strokeWeight(map(disline,0,120,0,0.1));
          stroke(49,224,182);
          line(loc.x,loc.y,a.loc.x,a.loc.y);
        
        }
      }
    }
  }
  
  
 void displaytriangle(){
    Dots m,n;
    for(int i=0;i<wedot.length;i++){
      m=wedot[i];
      if(this==m){
        t=i;
      }
      if(i>t){
      for(int k=i;k<wedot.length;k++){
        n=wedot[k];
        if(m!=this&&n!=this){
          PVector edge1=PVector.sub(m.loc,loc);
          PVector edge2=PVector.sub(n.loc,loc);     
          area=1/2*edge1.mag()*edge2.mag()*sin(PVector.angleBetween(edge1,edge2));
          if(edge1.mag()<105&&edge2.mag()<105&&edge1.mag()>10&&edge2.mag()>10){
            trianfill=color(49,224,182,map(abs(250-mouseX)+abs(250-mouseY)+area,0,2*width,0,100));
          noStroke();
          fill(trianfill);
          triangle(m.loc.x,m.loc.y,n.loc.x,n.loc.y,loc.x,loc.y);
          }
        }
        }
      }
    }
  }
  
  
  void moving(){
    loc.add(speed);
  }
  
  void wallProcess() 
  {
    if (loc.x>width) {
      loc.x = width;
      speed.x = speed.x*-1;
    }
    if (loc.x<0) {
      loc.x = 0;
      speed.x = speed.x*-1;
    }
    if (loc.y>height) {
      loc.y = height;
      speed.y = speed.y*-1;
    }
    if (loc.y<0) {
      loc.y = 0;
      speed.y = speed.y*-1;
    }

  }
  
  void displaytrianglecenter(){
    Dots m,n;
    for(int i=0;i<center.length;i++){
      m=center[i];
      if(this==m){
        t=i;
      }
      if(i>t){
      for(int k=i;k<center.length;k++){
        n=center[k];
        if(m!=this&&n!=this){
          fill(49,224,182);
          triangle(m.loc.x,m.loc.y,n.loc.x,n.loc.y,loc.x,loc.y);
        }
      }
      }
    }
  }
  
  void wallProcesscenter() {
    PVector an=new PVector(475,610);
    
    if (an.dist(loc)>30){
    speed=an.sub(loc); 
    speed.normalize();
    speed.setMag(random(1,3));
  }
  
  }
}