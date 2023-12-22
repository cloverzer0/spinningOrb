float move=PI;
PVector click[];
int numclicks = 0;
int maxclicks = 10;
void setup()
{
  size(600,600);
  click = new PVector[maxclicks];
}
void draw()
{ 
  background(0);
   for (int i = 0; i < numclicks; i++)
  {
    //fill(255,0,0);
    orb(click[i].x,click[i].y,40+move,50);
  } 
    move+=0.1;      
}
void orb(float px,float py, float a, float r)
{
  float t=2*PI;
  fill(255,0,0);
  ellipse(px,py,10,10);
  for(int i=0;i<10;i++)
  {   
    fill(255);
    ellipse(r*cos((a)-(i*t)/10)+px,r*sin((a)-(i*t)/10)+py,10,10);
  }
}
 void mousePressed()
{
  if (numclicks < maxclicks)
  {
    click[numclicks] = new PVector(mouseX,mouseY);
    numclicks++;
  }
}
