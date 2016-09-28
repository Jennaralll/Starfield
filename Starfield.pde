Particle[] stars;
double dX, dY, dDir, dSpeed, size; 
color starColor = color((int)(Math.random()*200)+75, 0, (int)(Math.random()*200)+ 75);

void setup()
{
	background(0);
	size(600, 600);
	stars = new Particle[300];
	for(int i = 0; i<stars.length; i ++)
	{

	stars[i] = new NormalParticle();
	}//your code here
	// stars[98] = new OddballParticle();
	// stars[99] = new JumboParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i<stars.length; i ++)
	{
		stars[i].show();
		stars[i].move();
	} 
	//your code here
}


class NormalParticle implements Particle
{
  double dX, dY, dDir, dSpeed, size, otherSize; 
  NormalParticle()
  {
  	dDir = 2 * Math.PI * Math.random();
  	dSpeed = Math.random()*5 + 4;
    dX = 300;
    dY = 300; 
    size = 2;
    otherSize = 1;

  }
 

  public void move()
  {
  	dX += Math.cos(dDir) * dSpeed;
	dY += Math.sin(dDir) * dSpeed;
	dX = dX + (cos((float)(dDir)) * dSpeed);
    dY = dY + (sin((float)(dDir)) * dSpeed);
  // size += otherSize;
  }

  public void show()
  {
     noStroke();
     fill(255);
     ellipse((float)dX, (float)dY, (float)size, (float)size);
  }
}
interface Particle
{
	public void show();
	public void move(); 
}
// class OddballParticle //uses an interface
// {

// }
// class JumboParticle //uses inheritance
// {

// }

