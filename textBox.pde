public class textBox {
 // Fields
 int bgR, bgG, bgB;
 float x,y,w,h;
 int Tr, Tg, Tb;
 String start;
 String input = "";
 boolean activated;
 float[] boxCs = {0,0,0,0};
 private static final int kENTER = 10;
 private static final int kBACKSPACE = 8;
 boolean keyboard;
 boolean colorToggle;
 boolean drawn = false;
 
 
 // Constructors
 public textBox (float x, float y, float w, float h, int bgR, int bgG, int bgB, int Tr, int Tg, int Tb, String start, boolean activated, boolean keyboard, boolean colorToggle) {
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.bgR = bgR;
  this.bgG = bgG;
  this.bgB = bgB;
  this.Tr = Tr;
  this.Tg = Tg;
  this.Tb = Tb;
  this.start = start;
  this.activated = activated;
  this.boxCs[0] = x;
  this.boxCs[1] = y;
  this.boxCs[2] = w;
  this.boxCs[3] = h;
  this.keyboard = keyboard;
  this.colorToggle = colorToggle;
  }
  // Methods\
  
  
  public void update(char k,int kc) {
    int inpLen = 0;
    inpLen = input.length();
    //println(kc);
    if(kc==kBACKSPACE) {
     if(inpLen > 0) {
       input = input.substring(0, inpLen-1);
     }
    } else {input = input + k;}
    //println(inpLen);
    if(inpLen==35 && kc != kBACKSPACE) { 
     input = input + "\n";
    }
    if(inpLen==72 && kc != kBACKSPACE) { 
     input = input + "\n";
    }
    if(inpLen==109 && kc != kBACKSPACE) { 
     input = input + "\n";
    }
    if(inpLen==146 && kc != kBACKSPACE) { 
     input = input + "\n";
    }
    if(inpLen==183 && kc != kBACKSPACE) { 
     input = input + "\n";
    }
    if(inpLen==220 && kc != kBACKSPACE) { 
     input = input + "\n";
    }
    input = String.valueOf(input);
    //println(input);
    //writeText(Input);
  }
  
  
  public void updateColor(int bgR, int bgG, int bgB) {
    this.bgR = bgR;
    this.bgG = bgG;
    this.bgB = bgB;
  }
  
  public void draw() {
    fill(bgR, bgG, bgB);
    rect(x,y,w,h);
    fill(Tr,Tg,Tb);
    text(start+input, x+10, y+40);
    drawn = true;
  }
  public void mousePressed() {
    
    int mX=mouseX;
    int mY=mouseY;
    if (drawn) {
      if(mX>this.boxCs[0] && mY>this.boxCs[1] && mX<this.boxCs[0]+this.boxCs[2] && mY<this.boxCs[1]+this.boxCs[3]) {
        activated = true;
        updateColor(220, 220, 220);
        //println(keyboard);
        if (keyboard) {
          launch("C:/Program Files/Common Files/microsoft shared/ink/tabtip.exe");
        }
      } else {activated = false; if (colorToggle ==false) {updateColor(200, 200, 200);}}
    }
  }
}
