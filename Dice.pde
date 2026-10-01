void setup()
  {
    size(500,500);
    noLoop();
  }
  void draw()
  {
    for(int i=0;i<500;i=i+100){
      for(int j=0;j<500;j=j+100){
        Die bob=new Die(j,i);
        bob.roll();
        bob.show();
      }
    }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
    int myX,myY,rolls;
    Die(int x, int y) //constructor
    {
      myX=x;
      myY=y;
    }
    void roll()
    {
      rolls=int(random(1,7));
    }
    void show()
    {
      fill(255);
      stroke(0);
      strokeWeight(2);
      rect(myX, myY, 100, 100);
          fill(0);
      noStroke();
  
      // Left column
      if (rolls==2||rolls==3||rolls==4||rolls==5||rolls==6)
        ellipse(myX + 25, myY + 25, 15, 15);
  
      if (rolls==4||rolls==5||rolls==6)
        ellipse(myX + 25, myY + 75, 15, 15);
  
      // Right column
      if (rolls==2||rolls==3||rolls==4||rolls==5||rolls==6)
        ellipse(myX + 75, myY + 75, 15, 15);
  
      if (rolls==4||rolls==5||rolls==6)
        ellipse(myX + 75, myY + 25, 15, 15);
  
      // Center
      if (rolls==1||rolls==3||rolls==5)
        ellipse(myX + 50, myY + 50, 15, 15);
  
      // EmyXtra middle dots for 6
      if (rolls==6)
        ellipse(myX + 25, myY + 50, 15, 15);
  
      if (rolls==6)
        ellipse(myX + 75, myY + 50, 15, 15);
    }
  }
