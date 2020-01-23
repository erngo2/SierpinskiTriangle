public void setup()
{
	background(0);
	size(500, 500);
	noStroke();
}

public void draw()
{	
}

int a = 50;
public void mouseDragged()//optional
{
	if(mouseButton == LEFT){
		fill((float)(Math.random() * 255), (float)(Math.random() * 255), (float)(Math.random() * 255));
		sierpinski(mouseX - (a / 2), mouseY + (a / 2), a);
	}
}

int b = 0;
public void keyPressed()
{
	fill((float)(Math.random() * 255), (float)(Math.random() * 255), (float)(Math.random() * 255));
	sierpinski(0, 500, b);
	if(keyCode == UP)
		b++;
	if(keyCode == DOWN)
		b--;
}

public void mousePressed()
{
	if(mouseButton == LEFT){
		fill((float)(Math.random() * 255), (float)(Math.random() * 255), (float)(Math.random() * 255));
		sierpinski(mouseX - (a / 2), mouseY + (a / 2), a);
	}
	if(mouseButton == RIGHT)
		background(0);
}

public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x, y, x + len / 2, y - len, x + len, y);
	} else {
		sierpinski(x, y, len / 2);
		sierpinski(x + len / 2, y, len / 2);
		sierpinski( x + len / 4, y - len / 2, len / 2);
	}

}
