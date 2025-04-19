PImage sofii;
void setup (){
  size (800, 400);
  background (193, 183, 191);
  sofii = loadImage("sofii.jpg");
}

 void draw(){
   image (sofii, 0, 0, 400, 400);
   
   //objetos de fondo
   noStroke ();
   fill (236, 234, 222);
   circle (485, 200, 100); 
   circle (460, 130, 115); 
   circle (630, 130, 360); 
   circle (460, 40, 120);
   circle (760, 50, 120);
   circle (760, 230, 100);
   ellipse (600, 350, 400, 150);
   fill (139, 130, 151);
   ellipse (485, 360, 170, 150);
   fill (20, 92, 151);
   ellipse (750, 320, 100, 80);
   
   
   translate(50,0);

   //pelo
   noStroke();
   fill (67, 48, 32);
   rect (470, 70, 110, 200, 50, 70, 0 , 0);
   
   
   //torso
   noStroke();
   fill (214, 192, 172);
   quad (440, 200, 610, 205, 620, 340, 500, 340);
   
   
   //cabeza, cuello
   fill (214, 192, 172);
   ellipse (525, 135, 80, 105);
   rect (505, 140, 45, 70);
   
   
   //pelo delante 
   fill (67, 48, 32);
   triangle (520, 80, 490, 80, 470, 150);
   triangle (520, 80, 560, 80, 580, 170);
   

   //ojos
   fill (242, 247, 237);
   ellipse (505, 130, 20, 8);
   ellipse (545, 132, 20, 8);
   fill (67, 48, 32);
   circle( 505, 130, 8);
   circle  (545, 132, 8);

   
   //rubor
   fill (214, 173, 154);
   ellipse (505, 143, 24, 12);
   ellipse (545, 145, 24, 12);
   
   
   //nariz
   fill (188, 162, 139);
   triangle (518, 155, 525, 140, 530, 155);

   
   //labios 
   fill (162, 95, 86);
   ellipse ( 525, 170, 20, 8);
   fill (173, 106, 97);

   
   //lentes
   stroke (0);
   strokeWeight (3); 
   line (517, 130, 530, 130);
   noFill ();
   square (492, 118, 25);
   square (532, 119, 25);
   
 
   //top
   noStroke ();
   fill (242, 239, 235);
   line(120, 80, 340, 300);
   rect (460, 250, 160, 90);

 
   //short
   fill (0, 0, 0);
   quad (500, 340, 620, 340, 660, 405, 490, 405);
   
   
   //camisa
   fill (213, 165, 153);
   rect (440, 200, 60, 200, 50, 0, 0, 0);
   rect (420, 200, 50, 130, 40, 0, 0, 0);
   fill (162, 188, 182);
   rect (440, 250, 60, 100);
   fill (213, 165, 153);
   rect (560, 200, 70, 200, 0, 40, 0, 0);
   rect (600, 200, 50, 140, 0, 40, 0, 0);
   fill (162, 188, 182);
   rect (560, 250, 70, 100);
  
  
   //brazos
   fill (214, 192, 172);
   rect (630, 340, 20, 70);
   rect (420, 330, 20, 70);
   
   
   //accesorios del cuello
   stroke (26, 35, 56);
   strokeWeight (5);
   line (500, 200, 545, 330);
   line (555, 200, 550, 330);
   fill (240);
   rect (530, 330, 45, 60);
   fill (26, 35, 56);
   rect (530, 365, 45, 30);
   fill (64, 34, 86);
   triangle (530, 330, 560, 330, 530, 365);
   fill (137, 79, 129);
   triangle (550, 345, 570, 335, 570, 360);
   fill (240);
   textSize (15);
   text("LACA", 536, 385); 
   
   
   
   
 }
   
