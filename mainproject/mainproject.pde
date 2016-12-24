import peasy.*;
PImage mapSJTU;
PeasyCam cam;
boolean enter=false;
int trans1=0;
float[][] terrain;
float[][] terraina;
float[][] terrainfloat;
float[][] terrainupdraft;
float[][] terraindowndraft;
int scale=15;
int i=1;
int i2=1;
float flying=0;
int cols=58, rows=32;
PFont font1,font2,font3,font4,font5;
float[] number1,mpeak,npeak,epeak,male,famale,bach,mast,doct,mbach,mmast,mdoct,fbach,fmast,fdoct;
int[] pnumber1,pmpeak,pnpeak,pepeak,pmale,pfamale,pbach,pmast,pdoct;
boolean flag[],peaktime[],gender[],degree[],compar[];
String hint,time1,time2;
Integrator [][] intergrators;
int ll,ll1,ll2,ll3,ll4,ll5,eliy;

Dots [] wedot=new Dots[75];
Dots [] center=new Dots[6];
PFont font6,font7,font8,font9;
int startcount=0;
 PVector an=new PVector(300,300);
 
void setup() {
    font6 = createFont("Homestead-Display.ttf", 70);
  font7= createFont("Rockwell",10);
    font8 = createFont("Homestead-Display.ttf", 20);
  font9= createFont("les Sensations de Cerise.ttf",80);
  //frameRate(54);
  for (int i=0;i<wedot.length;i++) {
  wedot[i]= new Dots(new PVector(random(-3,3),random(-3,3)),new PVector(random(0,width),random(0,height)));
  if(wedot[i].loc.dist(an)<120) i--;
  }
  for(int k=0;k<center.length;k++){
    center[k]=new Dots(new PVector(random(-3,k-2),random(-3,k-2)),new PVector(random(470,490),random(600,620)));
}
  //smooth();
  size(800,800,P3D);

  cam = new PeasyCam(this,1200);
  mapSJTU = loadImage("sjtu.jpg");
  gettrade();
   font1 = createFont("Homestead-Display.ttf", 90);
    font2 = createFont("Homestead-Display.ttf", 20);
        font3 = createFont("Gill Sans MT Italic.ttf", 8);
          font4 = createFont("Homestead-Display.ttf", 15);
           font5 = createFont("Gill Sans MT Italic.ttf", 10);
           intergrators=new Integrator[2][2];
  terrain=new float[58][32];
    terraina=new float[58][32];
    terrainfloat=new float[58][32];
    terrainupdraft=new float[58][32];
    terraindowndraft=new float[58][32];
    number1=new float[8];
    mpeak=new float[8];
    npeak=new float[8];
    epeak=new float[8];
    male=new float[8];
    famale=new float[8];
     bach=new float[8];
    mast=new float[8];
    doct=new float[8];
     pnumber1=new int[8];
    pmpeak=new int[8];
    pnpeak=new int[8];
    pepeak=new int[8];
    pmale=new int[8];
    pfamale=new int[8];
     pbach=new int[8];
   pmast=new int[8];
    pdoct=new int[8];
     mbach=new float[8];
   mmast=new float[8];
    mdoct=new float[8];
    fbach=new float[8];
   fmast=new float[8];
    fdoct=new float[8];
    flag=new boolean[8];
    peaktime=new boolean[8];
    gender=new boolean[8];
    degree=new boolean[8];
    compar=new boolean[8];
    for(int un=0;un<8;un++) {
      number1[un]=0;mpeak[un]=0;npeak[un]=0;epeak[un]=0;male[un]=0;famale[un]=0;bach[un]=0;mast[un]=0;doct[un]=0;
      pnumber1[un]=0;pmpeak[un]=0;pnpeak[un]=0;pepeak[un]=0;pmale[un]=0;pfamale[un]=0;pbach[un]=0;pmast[un]=0;pdoct[un]=0;
      peaktime[un]=false; gender[un]=false; degree[un]=false;compar[un]=false;
      mbach[un]=0;mmast[un]=0;mdoct[un]=0;fbach[un]=0;fmast[un]=0;fdoct[un]=0;
      if (un==1) flag[un]=true;
      else flag[un]=false;
    }
  for (int x=0; x<58; x++) {
   for (int y=0; y<32 ; y++) {
  terrain[x][y]=0;
  terraina[x][y]=0;
  terrainfloat[x][y]=0;
terrainupdraft[x][y]=0;
terraindowndraft[x][y]=0;
   }
  }
  cam.rotateX(-PI/2); 
  getAccount();
  ll=0;ll1=0;ll2=0;ll3=0;ll4=0;ll5=0;eliy=560;
 // frameRate(1000);
 smooth();
}

void draw() {
  if(enter==false){
      cam.beginHUD();
     
  welcome();
    print("1");
    cam.endHUD();
    if(key==' '){
      enter=true;
    }
  }
if(enter==true){
   tint(200,255);
   background(30);
   imagea();
    UI();
           display();
}
//}
        // print(male[1]);
         
     //     if (mouseX>300 ||mouseY> 300) {
   //   cam.setActive(false);
  //  } else {
   //   cam.setActive(true);
   // }
  // print(pmale[1]+" "+i+" ");
}