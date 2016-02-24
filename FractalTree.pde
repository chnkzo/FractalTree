private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
  
 line(320,480,320,380);
  stroke(255,255,255);
 drawBranches(320,490,130,3*Math.PI/2); 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  int endX1,endY1,endX2,endY2;
  branchLength = branchLength *fractionLength;
  endX1 = (int)(branchLength*Math.cos(angle1) + x);
  endY1 = (int)(branchLength*Math.sin(angle1) + y);   
  endX2 = (int)(branchLength*Math.cos(angle2) + x);
  endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(branchLength > smallestBranch)
  {
    stroke(255,153,204);
   drawBranches((int)(endX1),(int)(endY1),branchLength,angle1);
   stroke(255,255,255);
   drawBranches((int)(endX2),(int)(endY2),branchLength,angle2);
  }
} 
