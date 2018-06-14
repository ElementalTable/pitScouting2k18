//This section defines the vaiables for data collection
boolean scaleBot = false;
boolean switchBot = false;
boolean climber = false;
int numOfMotors = 0;
int teamNum = 0000;
String activeBox = "";
textBox typeDrivetrain;

void setup() {
 size(500,500);
 textSize(16); 
 fill(0);
  //teamMember = new textBox(10, 300, 500, 60, 200, 200, 200, 0, 0, 0, "Scout  Name: ", false, true, false);
  typeDrivetrain = new textBox(0, 0, 200, 25, 200, 200, 200, 0, 0, 0 , "Type Of Drivetrain", false, true, false);
}

void mousePressed(){
 typeDrivetrain.mousePressed(); 
 if (typeDrivetrain.activated == true) {
      activeBox = "Type Of Drivetrain";
 }
}

void draw(){
  typeDrivetrain.draw();
}

void keyPressed(){
  println(key+""+activeBox);
  if (activeBox == "typeDrivetrain"){
   typeDrivetrain.update(key, keyCode);  
  }
  
  
}
