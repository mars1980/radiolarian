//a class for creating a simple geometric radiolarian
class radio
{
  float x, y, w, h;
  float  lineThick;
  radio(float _x, float _y, float _w, float _h, float _lineThick)
  {
    x=_x;
    y=_y;
    w=_w;
    h=_h;
    lineThick=_lineThick;
  }
  
  //dance muthafucka
  void jiggle(float speed)
  {
    w= w+random(-1, 1)*speed;
    h= h+random(-1, 1)*speed;
    //constrain radio to window
    w= constrain(w, 0, width);
    h= constrain(h, 0, height);
  }
//draw the radiolarian
  void display()
  {
    pushMatrix();
    translate(width/2, height/2);
    fill(255, 175);

    //body
    strokeWeight(lineThick*10);
    stroke(0);
    ellipse(x, y, w/2, h/2);
    noStroke();
    fill(255);
    ellipse(x, y, w/3, h/3); 
    fill(0);
    ellipse(x, y, w/10, h/10);  

    //flagella
    for (int i =0; i < 100; i++)
    {
      stroke(0);
      strokeWeight(lineThick);
      rotate(radians(10));
      line(x, y, w/3, h/3);
      for (int j=0;j<50; j++)
      {
        strokeWeight(lineThick*.1);
        rotate(radians(5));
        line(x, y, w/4, h/4);
      }
    }

    popMatrix();
  }
}

