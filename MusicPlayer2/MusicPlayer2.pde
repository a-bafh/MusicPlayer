import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 6;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
int loopNum = 1;
//
PFont titleFont;
color black = #000000;
color red = #B20000;
//
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float playButtonX1, playButtonY1, playButtonX2, playButtonY2, playButtonX3, playButtonY3;
float Buttoncolor;
//
float skipButtonX, skipButtonY, skipButtonWidth, skipButtonHeight;
float skipButtonX1, skipButtonY1, skipButtonX2, skipButtonY2, skipButtonX3, skipButtonY3;
float skipButton2X1, skipButton2Y1, skipButton2X2, skipButton2Y2, skipButton2X3, skipButton2Y3;
//
float rewindButtonX, rewindButtonY, rewindButtonWidth, rewindButtonHeight;
float rewindButtonX1, rewindButtonY1, rewindButtonX2, rewindButtonY2, rewindButtonX3, rewindButtonY3;
float rewindButton2X1, rewindButton2Y1, rewindButton2X2, rewindButton2Y2, rewindButton2X3, rewindButton2Y3;
//
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
//
float nameSquareX, nameSquareY, nameSquareWidth, nameSquareHeight;
//
float nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight;
float nextButtonX2, nextButtonY2, nextButtonWidth2, nextButtonHeight2;
float nextButtontriX1, nextButtontriY1, nextButtontriX2, nextButtontriY2, nextButtontriX3, nextButtontriY3;
//
float previousButtonX, previousButtonY, previousButtonWidth, previousButtonHeight;
float previousButtonX2, previousButtonY2, previousButtonWidth2, previousButtonHeight2;
float previousButtontriX1, previousButtontriY1, previousButtontriX2, previousButtontriY2, previousButtontriX3, previousButtontriY3;
//
float loopButtonX, loopButtonY, loopButtonWidth, loopButtonHeight;
//
float loopX, loopY, loopDiameter ;
//
color white = #FFFFFF;
color orange = #FFB700;
color green = #488000;

void setup() {
  size(500, 600);
  minim = new Minim(this);
  song[0] = minim.loadFile("BarrelFullofCMonkeys.mp3");
  song[1] = minim.loadFile("Blood_Sweat_No_Tears.mp3");
  song[2] = minim.loadFile("Chtulthu.mp3");
  song[3] = minim.loadFile("Getting_Dirty.mp3");
  song[4] = minim.loadFile("Thor_s_Hammer.mp3");
  song[5] = minim.loadFile("Beat_Your_Competition.mp3");
  //
  songMetaData[0] = song[0].getMetaData();
  songMetaData[1] = song[1].getMetaData();
  songMetaData[2] = song[2].getMetaData();
  songMetaData[3] = song[3].getMetaData();
  songMetaData[4] = song[4].getMetaData();
  songMetaData[5] = song[5].getMetaData();
  //
  int currentSong = 4;
  for (int i=0; i<song.length; i++) {
    songMetaData[i] = song[i].getMetaData();
  }//End Song MetaData
  //
  println("Start of Console");
  println("Click the Canvas to Finish Starting this App");
  println("Press P to Play and Pause");
  println("Press S to Stop");
  println("Press L to loop the song");
  println("Press F to fast forward");
  println("Press R to fast rewind");
  //Verifying Meta Data
  //Always Available
  println("\n\nVerifying MetaData");
  println( "File Name:", songMetaData[currentSong].fileName() );
  println( "Song Length (in milliseconds):", songMetaData[currentSong].length() );
  println( "Song Length (in seconds):", songMetaData[currentSong].length()/1000 );
  println( "Song Length (in minutes & seconds):", (songMetaData[currentSong].length()/1000)/60, "minutes", (songMetaData[currentSong].length()/1000)-((songMetaData[currentSong].length()/1000)/60 * 60), "seconds");
  println( "Title:", songMetaData[currentSong].title() );
  println( "Author:", songMetaData[currentSong].author() );
  println( "Composer:", songMetaData[currentSong].composer() );
  println( "Orchestra:", songMetaData[currentSong].orchestra() );
  println( "Album:", songMetaData[currentSong].album() );
  println( "Disc:", songMetaData[currentSong].disc() );
  println( "Publisher:", songMetaData[currentSong].publisher() );
  println( "Date Release:", songMetaData[currentSong].date() );
  println( "Copyright:", songMetaData[currentSong].copyright() );
  println( "Comment:", songMetaData[currentSong].comment() );
  println( "Lyrics:", songMetaData[currentSong].lyrics() );
  println( " Track:", songMetaData[currentSong].track() );
  println( "Genre:", songMetaData[currentSong].genre() );
  println( "Encoded:", songMetaData[currentSong].encoded() ); //How a computer reads the file
  //
  titleFont = createFont ("Arial", 15); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
  //
  //variables population
  playButtonX = width*2/5;
  playButtonY = height*2/3;
  playButtonWidth = width*1/5 ;
  playButtonHeight = height*1/5;
  //
  playButtonX1 = width*12/20;
  playButtonY1 = height*7/9;
  playButtonX2 = width*9/20;
  playButtonY2 = height*6/9;
  playButtonX3 = width*9/20;
  playButtonY3 = height*7.8/9;
  //
  skipButtonX = width*3.5/5;
  skipButtonY = height*2/3;
  skipButtonWidth = width*1/5;
  skipButtonHeight = height*1/5;
  //
  skipButtonX1 = width*3.6/5 ;
  skipButtonY1 = height*2/3 ;
  skipButtonX2 = width*3.6/5 ;
  skipButtonY2 = height*5.2/6 ;
  skipButtonX3 = width*5/6 ;
  skipButtonY3 = height*3.8/5 ;
  //
  skipButton2X1 = width*3.9/5 ;
  skipButton2Y1 = height*2/3 ;
  skipButton2X2 = width*3.9/5 ;
  skipButton2Y2 = height*5.2/6 ;
  skipButton2X3 = width*5.4/6 ;
  skipButton2Y3 = height*3.8/5 ;
  //
  rewindButtonX = width*0.5/5 ;
  rewindButtonY = height*2/3 ;
  rewindButtonWidth = width*1/5 ; 
  rewindButtonHeight = height*1/5 ;
  //
  rewindButtonX1 = width*1.4/5 ;
  rewindButtonY1 = height*2/3 ;
  rewindButtonX2 = width*1.4/5 ;
  rewindButtonY2 = height*5.2/6 ;
  rewindButtonX3 = width*1/6 ;
  rewindButtonY3 = height*3.8/5 ;
  //
  rewindButton2X1 = width*1.1/5 ;
  rewindButton2Y1 = height*2/3 ;
  rewindButton2X2 = width*1.1/5 ;
  rewindButton2Y2 = height*5.2/6 ;
  rewindButton2X3 = width*0.6/6 ;
  rewindButton2Y3 = height*3.8/5 ;
  //
  albumCoverX = width*0.7/3;
  albumCoverY = height*0.1/2;
  albumCoverWidth = width*1/2;
  albumCoverHeight = height*1/2;
  //
  nameSquareX = width*0.7/3;
  nameSquareY = height*11.3/20;
  nameSquareWidth = width*10/20;
  nameSquareHeight = height*1.6/20;
  //
  nextButtonX = width*2/3 ;
  nextButtonY = height*8.7/10 ;
  nextButtonWidth = width*1/5 ; 
  nextButtonHeight = height*0.7/5 ;
  //
  nextButtonX2 = width*7/10 ;
  nextButtonY2 = height*8.7/10 ;
  nextButtonWidth2 = width*1/50 ; 
  nextButtonHeight2 = height*0.7/5 ;
  //
  nextButtontriX1 = width*8.65/10 ;
  nextButtontriY1 = height*18.7/20 ;
  nextButtontriX2 = width*3.75/5 ;
  nextButtontriY2 = height*1 ;
  nextButtontriX3 = width*3.75/5 ;
  nextButtontriY3 = height*5.2/6 ;
  //
  previousButtonX = width*0.4/3 ;
  previousButtonY = height*8.7/10 ;
  previousButtonWidth = width*1/5 ; 
  previousButtonHeight = height*0.7/5 ;
  //
  previousButtonX2 = width*1/3.55 ;
  previousButtonY2 = height*8.7/10 ;
  previousButtonWidth2 = width*1/50 ;
  previousButtonHeight2 = height*0.7/5 ;
  //
  previousButtontriX1 = width*0.55/4 ;
  previousButtontriY1 = height*18.7/20 ;
  previousButtontriX2 = width*0.75/3 ;
  previousButtontriY2 = height*1 ;
  previousButtontriX3 = width*0.5/2 ;
  previousButtontriY3 = height*5.2/6 ;
  //
  loopButtonX = width*0.9/2 ;
  loopButtonY = height*1.8/2 ;
  loopButtonWidth = width*1/10 ;
  loopButtonHeight = height*1/10 ;
  //
  loopX = width*1/2;
  loopY = height*1.9/2;
  loopDiameter = width*1/20;
  loopDiameter = height*1/20;
}

void draw () {
  background( orange );
  fill(white);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(skipButtonX, skipButtonY, skipButtonWidth, skipButtonHeight);
  rect(rewindButtonX, rewindButtonY, rewindButtonWidth, rewindButtonHeight);
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  rect(nameSquareX, nameSquareY, nameSquareWidth, nameSquareHeight);
  rect(nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight);
  rect(previousButtonX, previousButtonY, previousButtonWidth, previousButtonHeight );
  rect(loopButtonX, loopButtonY, loopButtonWidth, loopButtonHeight);
  fill(orange);
  rect(nextButtonX2, nextButtonY2, nextButtonWidth2, nextButtonHeight2);
  rect(previousButtonX2, previousButtonY2, previousButtonWidth2, previousButtonHeight2);
  //
  ellipse(loopX, loopY,  loopDiameter,  loopDiameter );
  //
  fill(orange);
  triangle(playButtonX1, playButtonY1, playButtonX2, playButtonY2, playButtonX3, playButtonY3);
  triangle(skipButtonX1, skipButtonY1, skipButtonX2, skipButtonY2, skipButtonX3, skipButtonY3);
  triangle(skipButton2X1, skipButton2Y1, skipButton2X2, skipButton2Y2, skipButton2X3, skipButton2Y3);
  triangle(rewindButtonX1, rewindButtonY1, rewindButtonX2, rewindButtonY2, rewindButtonX3, rewindButtonY3);
  triangle(rewindButton2X1, rewindButton2Y1, rewindButton2X2, rewindButton2Y2, rewindButton2X3, rewindButton2Y3);
  triangle(nextButtontriX1, nextButtontriY1, nextButtontriX2, nextButtontriY2, nextButtontriX3, nextButtontriY3);
  triangle(previousButtontriX1, previousButtontriY1, previousButtontriX2, previousButtontriY2, previousButtontriX3, previousButtontriY3);
  //
  fill(white);
  rect(nameSquareX, nameSquareY, nameSquareWidth, nameSquareHeight);
  fill(red); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 25); //Change the number until it fits, largest font size
  text(songMetaData[currentSong].title(), width*0.7/3, height*11.3/20, width*1/2, height*1.6/20);
  fill(255);
}

void keyPressed() {
  println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  if (key == 'd' || key == 'D') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song or song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song, ", "Number: " + currentSong); //For Debugging
      }
    }
  }
  println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  if (key == 'a' || key == 'A') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the first song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the first song or song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song, ", "Number: " + currentSong); //For Debugging
      }
    }
  }

  if (key == 'p' || key == 'P') {
    if ( song[currentSong].isPlaying() ) {
      song[0].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }// End Play-Pause
  //
  if (key == 's' || key == 'S') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }//End STOP Button
  }
  //
  if ( key == 'l' || key == 'L' ) song[currentSong].loop(loopNum);
  if (key == 'f' || key == 'F') song[currentSong].skip(5000);
  if (key == 'r' || key == 'R') song[currentSong].skip(-5000);
}

void mousePressed() {
  if (mouseX>playButtonX && mouseX< playButtonX+playButtonWidth && mouseY> playButtonY && mouseY<playButtonY+playButtonHeight) {
    if ( song[currentSong].isPlaying() ) {
      song[0].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  //
  if (mouseX>skipButtonX && mouseX< skipButtonX+skipButtonWidth && mouseY> skipButtonY && mouseY<skipButtonY+skipButtonHeight) {
    song[currentSong].skip(5000);//fastforward
  }
  //
  if (mouseX>rewindButtonX && mouseX< rewindButtonX+rewindButtonWidth && mouseY> rewindButtonY && mouseY<rewindButtonY+rewindButtonHeight) {
    song[currentSong].skip(-5000);//rewind
  }

  if (mouseX>previousButtonX && mouseX< previousButtonX+previousButtonWidth && mouseY> previousButtonY && mouseY<previousButtonY+previousButtonHeight) { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the first song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the first song or song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song, ", "Number: " + currentSong); //For Debugging
      }
    }
  }

  if (mouseX>nextButtonX && mouseX< nextButtonX+nextButtonWidth && mouseY> nextButtonY && mouseY<nextButtonY+nextButtonHeight) { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song or song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song, ", "Number: " + currentSong); //For Debugging
      }
    }
  }
  if (mouseX>loopButtonX && mouseX<loopButtonX+loopButtonWidth && mouseY>loopButtonY && mouseY<loopButtonY+loopButtonHeight) {
    song[currentSong].loop(loopNum);
    println("Now looping");
  }
}
