 //declare bacteria variables here
 Bacteria[] go;   
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
 	go = new Bacteria[50];
 	for(int i = 0; i < go.length; i++){
 		go[i] = new Bacteria (150,150);
 	}
 } 
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for(int i = 0; i < go.length; i++){
 		go[i].show();
 		go[i].walk();
 	}
 	noStroke();
 	fill(220,180,100);
 	ellipse(mouseX,mouseY,15,15);

 }  
 class Bacteria    
 {     
 	int myColor;
 	int myX, myY;

 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		myColor = color(255,255,255);
 	}
 	void walk()
 	
 	{
 	if(mouseX> myX){
 		myX = myX + (int)(Math.random()*8)-1;
 	}else{
 		myX = myX + (int)(Math.random()*8)-7;
 	}
 	if(mouseY>myY){
 		myY = myY + (int)(Math.random()*8)-1;
 	}
 	else{
 		myY = myY + (int)(Math.random()*8)-7;
 	}
 	}
 	
 	void show()
 	{
 		fill(myColor);
 		noStroke();
 		ellipse(myX,myY,25,25);
 	}
 }    