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
	stars[298] = new OddballParticle();
	// stars[299] = new JumboParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i<stars.length; i ++)
	{
		stars[i].show();
		stars[i].move();
		stars[298].show();
		stars[298].move();
	} 
	//your code here
}


class NormalParticle implements Particle
{
  double dX, dY, dDir, dSpeed, size; 
  NormalParticle()
  {
  	dDir = 2 * Math.PI * Math.random();
  	dSpeed = Math.random()*10;
    dX = 300;
    dY = 300; 
    size = 2;
  }
 

  public void move()
  {
  	dX += Math.cos(dDir) * dSpeed;
	dY += Math.sin(dDir) * dSpeed;
	if (dX <0)
	{
		dX = 300;
		dY = 300;
	}
	if (dX > 600)
	{
		dX = 300;
		dY = 300;	
	}
	if (dY <0)
	{
		dX = 300;
		dY = 300;	
	}
	if (dY > 600)
	{
		dX = 300;
		dY = 300;	
	}
	// dX = dX + (cos((float)(dDir)) * dSpeed);
 //    dY = dY + (sin((float)(dDir)) * dSpeed);
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
class OddballParticle implements Particle //uses an interface
{
	double dX, dY, dDir, dSpeed, size; 
  OddballParticle()
  {
  	dDir = 2 * Math.PI * Math.random();
  	dSpeed = Math.random()*10;
    dX = 300;
    dY = 300; 
    size = 2;
  }

  public void move()
  {
  	dX += Math.cos(dDir) * dSpeed;
	dY += Math.sin(dDir) * dSpeed;
	if (dX <0)
	{
		dX = 300;
		dY = 300;
	}
	if (dX > 600)
	{
		dX = 300;
		dY = 300;	
	}
	if (dY <0)
	{
		dX = 300;
		dY = 300;	
	}
	if (dY > 600)
	{
		dX = 300;
		dY = 300;	
	}
  }

  public void show()
  {
     noStroke();
     fill(30, 255, 255, 3);
     rect((float)dX, (float)dY, (float)size, (float)size);
  }
}
// class JumboParticle extends Particle //uses inheritance
// {

// }

