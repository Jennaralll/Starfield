Particle[] stars;
double dX, dY, dDir, dSpeed, mySize; 
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
	stars[0] = new OddballParticle();
	stars[1] = new JumboParticle();
}
void draw()
{
	fill(0, 0, 0, 20);
	rect(0, 0, 600, 600);
	for(int i = 0; i<stars.length; i ++)
	{
		stars[i].show();
		stars[i].move();
		// stars[298].show();
		// stars[298].move();
	} 
	//your code here
}



class NormalParticle implements Particle
{
  int r, g, b;
  double dX, dY, dDir, dSpeed, size; 
  NormalParticle()
  {
  	dDir = 2 * Math.PI * Math.random();
  	dSpeed = Math.random()*10;
    dX = 300;
    dY = 300; 
    mySize = 2;
    r=(int)(Math.random()*256);
	g=(int)(Math.random()*256);
	b=(int)(Math.random()*256);
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
     fill(r, g, b);
     ellipse((float)dX, (float)dY, (float)mySize, (float)mySize);
  }
}

interface Particle
{
	public void show();
	public void move(); 
}

class OddballParticle implements Particle //uses an interface
{
  double dX, dY, dDir, dSpeed, mySize; 
  OddballParticle()
  {
  	dDir = 2 * Math.PI * Math.random();
  	dSpeed = Math.random()*3;
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
		dX = (int)(Math.random()*300 + 1);
		dY = (int)(Math.random()*300 + 1);	
	}
	if (dX > 600)
	{
		dX = (int)(Math.random()*300 + 1);
		dY = (int)(Math.random()*300 + 1);		
	}
	if (dY <0)
	{
		dX = (int)(Math.random()*300 + 1);
		dY = (int)(Math.random()*300 + 1);	
	}
	if (dY > 600)
	{
		dX = (int)(Math.random()*300 + 1);
		dY = (int)(Math.random()*300 + 1);	
	}
	// dX = dX + (cos((float)(dDir)) *dSpeed);
	// dY = dY + (sin((float)(dDir)) * dSpeed);
	
  }

  public void show()
  {
  	noStroke(); 
     fill(40);
     rect((float)dX, (float)dY, (float)mySize + 50, (float)mySize + 50);
  }
}

class JumboParticle extends NormalParticle //uses inheritance
{
	public void show()
	{
		noStroke();
		fill(204, 73, 73);
		ellipse((float)dX, (float)dY-10, (float)mySize + 20, (float)mySize + 20);
		fill(173, 46, 46);
		ellipse((float)dX, (float)dY-5, (float)mySize + 20, (float)mySize + 20);
		fill(30);
		ellipse((float)dX, (float)dY, (float)mySize + 30, (float)mySize + 30);
	}
}

