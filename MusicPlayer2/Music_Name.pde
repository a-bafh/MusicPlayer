  /*println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  if (key == 'n' || key == 'N') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
      song[currentSong].play();
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

  if (key == 'b' || key == 'B') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the last song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
        println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the last song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
        println ("Current Song after the next or back button, but not the first song, ", "Number: "+currentSong); //For Debugging
      }
    }
  }

  if (key == 'p' || key == 'P') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  println( "Title: ", songMetaData[currentSong].title() );
}//End keyPressed()

void mousePressed() {
*/
