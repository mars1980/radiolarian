//Crys Moore::DeNovo::Sept13
//A jiggling Ernst Haeckel inspired Radiolarian 
//based off Daniel Shiffman's Zoog
radio radio;

void setup()
{
  size(300, 300);
  smooth();
  frameRate(24);
  //constructor(x,y,w,h,strokeWeight)
  radio = new radio(0, 0, width/1.5, height/1.5, .5);
}
void draw()
{
  background(200);
  float factor=constrain(mouseX/10, 0, 8 );
  radio.jiggle(factor);
  radio.display();

}

