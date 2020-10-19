import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
Minim minim;
AudioPlayer song1;

color white = #FFFFFF;

void setup() {
  size(500, 600);
  minim = new Minim(this);
  song1 = minim.loadFile("Barrel_Full_of_Sea_Monkeys.mp3");
}

void draw () {}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    song1.play();
  }
}

void mousePressed() {
}
