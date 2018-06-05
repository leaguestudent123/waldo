PImage waldo;
void setup() {
     waldo = loadImage("waldo.png"); // 5. Change this to match your file name.
     size(500, 500);
     waldo.resize(width,height);
     doh = minim.loadSample("homer-doh.wav");
     woohoo = minim.loadSample("homer-woohoo.wav");
}

void draw() {
  background(waldo);
     // 6. Use this print statement to find out the coordinates of Waldo
     println("X: " + mouseX + " Y: " + mouseY);
//267 246


     // 7. If the mouse is on Waldo, print “Waldo found!”
     if(mousePressed){
     
        if(mouseX>228 && mouseY>229 && mouseX<228+32 && mouseY<229+108){
         println("waldo found!");
         playWoohoo();
        }else playDoh();
      
     }
     // 8. If Waldo is found, also use the method below to play “Woohoo”

     // Change the name of the sound file if you need to
     // 9. If the mouse is pressed and they’re not on Waldo, play “Doh”
     // Change the name of the sound file if you need to
}

void playWoohoo() {
     woohoo.stop();
     woohoo.trigger();
}

void playDoh() {
     doh.stop();
     doh.trigger();
}

import ddf.minim.*;
Minim minim = new Minim(this);
AudioSample doh;
AudioSample woohoo;