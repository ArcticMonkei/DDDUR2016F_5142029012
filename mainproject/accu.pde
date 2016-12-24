  Table trade=new Table();
    Table merchant=new Table();
int[][]account=new int[599999][6];
void getAccount(){
 int totalRows;
 String lines[] = loadStrings("account.csv"); 
  for (int i = 0; i < lines.length; i++) {
    String s = lines[i];
    String[] NumsRaw = trim(split(s,","));
    int number1= int(NumsRaw[0].replace("A","1").replace("B","2").replace("C","3").replace("D","4").replace("E","5"));
     NumsRaw[2]= NumsRaw[2].replace("m","1").replace("f","2");
     NumsRaw[5]= NumsRaw[5].replace("B","1").replace("M","2").replace("D","3");
    for(int k=1;k<6;k++){
account[number1][k]=int(NumsRaw[k]);
    }
    //print(account[number1][5]);
  }
}

void getmerchant(){
 int columeofData=4;
 int totalRows;
 String lines[] = loadStrings("merchant");

 for(int i=1;i<columeofData;i++){
   merchant.addColumn("column"+i);
   //print("column"+i);
 }
 
 TableRow newRow = merchant.addRow();
  for (int i = 0; i < lines.length; i++) {
    String s = lines[i];
    String[] NumsRaw = trim(split(s,";"));
    //print(NumsRaw); 
   // println("there are " + NumsRaw.length + " unit");
    
    newRow = merchant.addRow();
    for (int k=1;k<columeofData;k++){
         newRow.setString("column"+k, NumsRaw[k-1]);
  } 
  }
  //TableRow row = weather.getRow(3);
         //print(row.getFloat("column"+2));
}

 void gettrade(){
 int columeofData=5;
 int totalRows;
 String lines[] = loadStrings("trade3.csv");
 //print(lines.length);

 for(int i=1;i<columeofData+3;i++){
   trade.addColumn("column"+i);
   //print("column"+i);
 }
 
 TableRow newRow = trade.addRow();
  for (int i = 1; i < lines.length; i++) {
    String s = lines[i];
    String[] NumsRaw = trim(split(s,','));
    String[] NumsRaw2 = trim(split(NumsRaw[3],' '));
    String[] NumsRaw3 = trim(split(NumsRaw2[0],"-"));
    String[] NumsRaw4 = trim(split(NumsRaw2[1],":"));
    //print(NumsRaw4[0]); 
    //print(i+" ");
   // if( NumsRaw2.length!=2) print(i);
    
    newRow = trade.addRow();
    for (int k=1;k<8;++k){
        if(k==7){
  String value = NumsRaw[3];
    newRow.setString("column"+k, value);
      }
     if(k==6){
  int value = int(NumsRaw[4]);
    newRow.setInt("column"+k, value);
      }
       if(k==5){
    int value = int(NumsRaw4[0]);
    newRow.setInt("column"+k, value);
      }
     if(k==4){
    float value = float(NumsRaw3[2]);
    newRow.setFloat("column"+k, value);
      }
       if(k==2||k==3){
         newRow.setString("column"+k, NumsRaw[k-1]);
    }
    if(k==1){
      int number2= int(NumsRaw[0].replace("A","1").replace("B","2").replace("C","3").replace("D","4").replace("E","5"));
         newRow.setInt("column"+k, number2);
         //print(number2+" ");
    }
  } 
  }
  TableRow row = trade.getRow(4);
   //print(row.getFloat("column"+6));
  //TableRow row = weather.getRow(3);
         //print(row.getFloat("column"+2));

}

 //TableRow a = reader.getRow(i);   
 //String sClean = s.split(0, 110);//get the date information out of data