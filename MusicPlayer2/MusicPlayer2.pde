import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;
int loopNum = 1;
//
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float playButtonX1, playButtonY1, playButtonX2, playButtonY2, playButtonX3, playButtonY3;
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
  //
  /*
  songMetaData[0] = song[0].getMetaData();
   songMetaData[1] = song[1].getMetaData();
   songMetaData[2] = song[2].getMetaData();
   */
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
  //variables population
  playButtonX = width*1/2;
  playButtonY = height*1/2;
  playButtonWidth = width*1/5 ;
  playButtonHeight = height*1/5;
  //
  playButtonX1 = width*14/20 ;
  playButtonY1 = height*12/20;
  playButtonX2 = width*11/20 ;
  playButtonY2 = height*14/20 ;
  playButtonX3 = width*11/20 ;
  playButtonY3 = height*10/20 ;
}

void draw () {
  background( orange );
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  triangle(playButtonX1, playButtonY1, playButtonX2, playButtonY2, playButtonX3, playButtonY3);
  
}

void keyPressed() {
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
  if (mouseX>playButtonX && mouseX< playButtonX+playButtonWidth && mouseY> playButtonY && mouseY<playButtonY+playButtonHeight);
  
}
