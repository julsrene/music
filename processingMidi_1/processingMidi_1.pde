import themidibus.*;
import java.util.*;

MidiBus myBus;

NoteManager nm;

void setup() {
  size(700, 700);
  background(0);
  
  MidiBus.list();
  myBus = new MidiBus(this, 0, 1);
  nm = new NoteManager();
}

void draw() {
  background(255);
  nm.track();
}

void noteOn(int channel, int pitch, int velocity) {
  nm.addNote(new Note(channel, pitch, velocity));
  println( "Note on: " + channel + " , " + pitch + ", " + velocity);
}

void noteOff(int channel, int pitch, int velocity) {
  nm.releaseNote(new Note(channel, pitch, velocity));
  println( "Note off: " + channel + " , " + pitch + ", " + velocity);

}
