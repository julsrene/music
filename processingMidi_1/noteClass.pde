
// Note class handles attributes that all played notes share
class Note {
  
  int channel, velocity, pitch;   // store the channel, velocity and pitch
  int lifespan;                   // lifespan of note, in frames
  boolean isReleased;             // whether or not the note has been released yet
  
  float x, y;
  float size; 
  color col;
  
  // constructor for new Note object
  Note(int channel_, int pitch_, int velocity_) {
    this.channel = channel_;
    this.pitch = pitch_;
    this.velocity = velocity_;
    this.lifespan = 50;
    this.isReleased = false;
   
   
   this.x = map(pitch, 48, 84, 0, width);
   this.y = height / 2;
   
   this.size = map(velocity, 0, 127, 5, 100);
   
   this.col = color(random(0, 255), random(0, 255), random(0, 255));
   
  }
  
  // update note properties
  void update() {

  }
  
  // display note on canvas
  void display() {
    fill(this.col, map(this.lifespan, 50, 0, 255, 0));
    ellipse(this.x, this.y, this.size, this.size);

  }

}
